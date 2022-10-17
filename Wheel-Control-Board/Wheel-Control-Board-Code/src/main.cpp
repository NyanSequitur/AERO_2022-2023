/**
 * @file main.cpp
 * @author dominic gasperini
 * @brief this drives the wheel control board on clean speed 5.5
 * @version 0.7
 * @date 2022-08-04
 */


// *** includes *** // 
#include <Arduino.h>
#include <esp_now.h>
#include <WiFi.h>
#include "TFT_eSPI.h"
#include "pinConfig.h"


// *** defines *** // 
#define TIMER_INTERRUPT_PRESCALER       80          // this is based off to the clock speed (assuming 80 MHz), gets us to microseconds
#define SENSOR_POLL_INTERVAL            100000      // 0.1 seconds in microseconds
#define FCB_UPDATE_INTERVAL             125000      // 0.125 seconds in microseconds


// *** global variables *** //
// Drive Mode Enumeration
enum DriveModes
{
  SLOW = 0,
  ECO = 10,
  FAST = 20
};

// ESP-NOW Connection
uint8_t fcbAddress[] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};

// ESP-NOW data transfer struct
struct FCB_Data
{
  struct DrivingData
  {
    bool readyToDrive = false;

    bool imdFault = false;
    bool bmsFault = false;

    bool driveDirection = true;             // true = forward | false = reverse
    DriveModes driveMode = ECO;

    uint8_t currentSpeed = 0;
  } drivingData;
  
  struct BatteryStatus
  {
    uint16_t batteryChargeState = 0;
    int16_t busVoltage = 0;
    int16_t rinehartVoltage = 0;

    float pack1Temp = 0;
    float pack2Temp = 0;
  } batteryStatus;

    struct Sensors
  {
    uint16_t wheelSpeedFR = 0;
    uint16_t wheelSpeedFL = 0;
    uint16_t wheelSpeedBR = 0;
    uint16_t wheelSpeedBL = 0;

    uint16_t wheelHeightFR = 0;
    uint16_t wheelHeightFL = 0;
    uint16_t wheelHeightBR = 0;
    uint16_t wheelHeightBL = 0;
  } sensors;

  struct IO
  {
    // inputs
    uint8_t brakeRegen = 0;
    uint8_t coastRegen = 0;

    // outputs
    bool buzzerActive = false;
  } io;
};
FCB_Data fcbData; 

// Car Data Struct
struct DashData
{
  struct DrivingData
  {
    bool readyToDrive = false;

    bool imdFault = false;
    bool bmsFault = false;

    bool driveDirection = true;             // true = forward | false = reverse
    DriveModes driveMode = ECO;

    uint8_t currentSpeed = 0;
  } drivingData;
  
  struct BatteryStatus
  {
    uint8_t batteryChargeState = 0;
    int16_t busVoltage = 0;
    int16_t rinehartVoltage = 0;
    float pack1Temp = 0;
    float pack2Temp = 0;
  } batteryStatus;
  struct Inputs
  {
    uint16_t wheelSpeedFR = 0;
    uint16_t wheelSpeedFL = 0;
    uint16_t wheelSpeedBR = 0;
    uint16_t wheelSpeedBL = 0;

    uint16_t wheelHeightFR = 0;
    uint16_t wheelHeightFL = 0;
    uint16_t wheelHeightBR = 0;
    uint16_t wheelHeightBL = 0;

    uint16_t steeringWheelAngle = 0;

    uint8_t brakeRegen = 0;
    uint8_t coastRegen = 0;
  } inputs;

  struct Outputs
  {
    bool buzzerActive = false;
  } outputs;
};
DashData dashData;

// Hardware ISR Timers
hw_timer_t* timer0 = NULL;
hw_timer_t* timer1 = NULL;
portMUX_TYPE timerMux = portMUX_INITIALIZER_UNLOCKED;

// LCD 
TFT_eSPI display = TFT_eSPI();
enum LCDMode
{
  RACE_MODE = 0,
  ELECTRICAL_MODE = 10,
  MECHANICAL_MODE = 20
};
LCDMode lcdMode = RACE_MODE;
LCDMode previousLcdMode = lcdMode;


// *** function declarations *** //
void PollInputData();
void UpdateFCB();
void FCBDataReceived(const uint8_t* mac, const uint8_t* incomingData, int length);
void AfterInitLCD();
void UpdateLCD();
void DisplayRaceMode();
void DisplayElectricalMode();
void DisplayMechanicalMode();
void LCDButtonInterrupt();
void ReadyToDriveButtonInterrupt();
void DriveModeButtonInterrupt();


// *** setup *** //
void setup()
{
  // --- initialize serial --- //
  Serial.begin(9600);

  // --- initialize inputs --- //
  pinMode(COAST_REGEN, INPUT);
  pinMode(BRAKE_REGEN, INPUT);
  pinMode(READY_TO_DRIVE_BUTTON, INPUT);
  pinMode(DRIVE_DIRECTION_SWITCH, INPUT);
  pinMode(DRIVE_MODE_BUTTON, INPUT);
  pinMode(LCD_BUTTON, INPUT);

  // --- initalize outputs --- //
  pinMode(IMD_FAULT_LED, OUTPUT);
  pinMode(BMS_FAULT_LED, OUTPUT);
  pinMode(READY_TO_DRIVE_LED, OUTPUT);

  // --- initialize LCD --- //
  display.init();
  display.setRotation(2);
  AfterInitLCD();

  // --- initialize ESP-NOW ---//
  // turn on wifi access point 
  WiFi.mode(WIFI_STA);
  Serial.printf("DEVICE MAC ADDRESS: %s\n", WiFi.macAddress());

  // init ESP-NOW service
  if (esp_now_init() != ESP_OK)
    Serial.println("ESP-NOW INIT [ SUCCESS ]");
  else
    Serial.println("ESP-NOW INIT [ FAILED ]");

  // attach message received callback to the data received function
  esp_now_register_recv_cb(FCBDataReceived);

  // --- initialize timer interrupts --- //
  timer0 = timerBegin(0, TIMER_INTERRUPT_PRESCALER, true);
  timerAttachInterrupt(timer0, &PollInputData, true);
  timerAlarmWrite(timer0, SENSOR_POLL_INTERVAL, true);
  timerAlarmEnable(timer0);

  timer1 = timerBegin(1, TIMER_INTERRUPT_PRESCALER, true);
  timerAttachInterrupt(timer1, &UpdateFCB, true);
  timerAlarmWrite(timer1, FCB_UPDATE_INTERVAL, true);
  timerAlarmEnable(timer1);

  // --- initialize hardware interrupts --- //
  attachInterrupt(LCD_BUTTON, &LCDButtonInterrupt, LOW);
  attachInterrupt(DRIVE_MODE_BUTTON, &DriveModeButtonInterrupt, LOW);
  attachInterrupt(READY_TO_DRIVE_BUTTON, &ReadyToDriveButtonInterrupt, LOW);
}


// *** loop *** // 
void loop()
{ 
  // update LEDs
  digitalWrite(IMD_FAULT_LED, dashData.drivingData.imdFault);
  digitalWrite(BMS_FAULT_LED, dashData.drivingData.bmsFault);

  // update wheel dash LCD
  UpdateLCD();
}


/**
 * @brief poll the sensors to see if there have been updates from the driver
 * 
 */
void PollInputData()
{
  // disable interrupts
  portENTER_CRITICAL_ISR(&timerMux);

  // regen knobs
  dashData.inputs.brakeRegen = analogRead(BRAKE_REGEN);
  dashData.inputs.coastRegen = analogRead(COAST_REGEN);

  // re-enable interrupts
  portEXIT_CRITICAL_ISR(&timerMux);
}


/**
 * @brief send out a broadcast of ESP-NOW that updates FCB 
 * with data from the wheel 
 * 
 */
void UpdateFCB()
{
  // disable interrupts
  portENTER_CRITICAL_ISR(&timerMux);

  // get peer information
  esp_now_peer_info_t fcbInfo = {};
  memcpy(&fcbInfo.peer_addr, fcbAddress, 6);
  if (!esp_now_is_peer_exist(fcbAddress))
  {
    esp_now_add_peer(&fcbInfo);
  }

  // update input data
  fcbData.drivingData.readyToDrive = dashData.drivingData.readyToDrive;
  fcbData.drivingData.driveDirection = dashData.drivingData.driveDirection;
  fcbData.io.brakeRegen = dashData.inputs.brakeRegen;
  fcbData.io.coastRegen = dashData.inputs.coastRegen;
  fcbData.io.buzzerActive = dashData.outputs.buzzerActive;

  // send mesasge
  esp_err_t result = esp_now_send(fcbAddress, (uint8_t *) &fcbData, sizeof(fcbData));

  // re-enable interrupts
  portEXIT_CRITICAL_ISR(&timerMux);
}


/**
 * @brief a callback function for when data is received from FCB
 * 
 * @param mac             the address of the FCB
 * @param incomingData    the structure of incoming data
 * @param length          size of the incoming data
 */
void FCBDataReceived(const uint8_t* mac, const uint8_t* incomingData, int length)
{
  // re-enable interrupts
  portENTER_CRITICAL_ISR(&timerMux);

  Serial.println("message received from front control board");

  // copy data to the fcbData struct 
  memcpy(&fcbData, incomingData, sizeof(fcbData));

  // updated mechanical data
  dashData.drivingData.currentSpeed = fcbData.drivingData.currentSpeed;

  // update battery & electrical data
  dashData.batteryStatus.batteryChargeState = fcbData.batteryStatus.batteryChargeState;
  dashData.batteryStatus.busVoltage = fcbData.batteryStatus.busVoltage;
  dashData.batteryStatus.rinehartVoltage = fcbData.batteryStatus.rinehartVoltage;
  dashData.batteryStatus.pack1Temp = fcbData.batteryStatus.pack1Temp;
  dashData.batteryStatus.pack2Temp = fcbData.batteryStatus.pack2Temp;

  // update sensor data
  dashData.inputs.wheelSpeedFR = fcbData.sensors.wheelSpeedFR;
  dashData.inputs.wheelSpeedFR = fcbData.sensors.wheelSpeedFL;
  dashData.inputs.wheelSpeedFR = fcbData.sensors.wheelSpeedBR;
  dashData.inputs.wheelSpeedFR = fcbData.sensors.wheelSpeedBL;
  dashData.inputs.wheelSpeedFR = fcbData.sensors.wheelSpeedFR;
  dashData.inputs.wheelSpeedFR = fcbData.sensors.wheelSpeedFL;
  dashData.inputs.wheelSpeedFR = fcbData.sensors.wheelSpeedBR;
  dashData.inputs.wheelSpeedFR = fcbData.sensors.wheelSpeedBL;

  // re-enable interrupts
  portEXIT_CRITICAL_ISR(&timerMux);
}


/**
 * @brief button interrupt for the ready to drive button
 * 
 */
void ReadyToDriveButtonInterrupt()
{
  // re-enable interrupts
  portENTER_CRITICAL_ISR(&timerMux);

  // update ready to drive status
  dashData.drivingData.readyToDrive = true;

  // update buzzer status
  dashData.outputs.buzzerActive = true;

  // re-enable interrupts
  portEXIT_CRITICAL_ISR(&timerMux);
}


/**
 * @brief button interrupt for changing the drive mode of the car 
 * 
 */
void DriveModeButtonInterrupt()
{
  // re-enable interrupts
  portENTER_CRITICAL_ISR(&timerMux);

  int mode = dashData.drivingData.driveMode;

  // increment mode
  mode += 10;

  // make sure we aren't out of bounds
  if (mode > 20)
  {
    mode = 0;     // loop back around to start
  }

  dashData.drivingData.driveMode = (DriveModes)mode;

  // re-enable interrupts
  portEXIT_CRITICAL_ISR(&timerMux);
}


/**
 * @brief button interrupt for changing the mode of the LCD
 * 
 */
void LCDButtonInterrupt()
{
  // re-enable interrupts
  portENTER_CRITICAL_ISR(&timerMux);

  int mode = lcdMode;

  // increment mode
  mode += 10;

  // make sure we aren't out of bounds
  if (mode > 20)
  {
    mode = 0;       // loop back around to start
  }

  lcdMode = (LCDMode)mode;

  // re-enable interrupts
  portEXIT_CRITICAL_ISR(&timerMux);
}


/**
 * @brief update the current screen that the LCD is showing
 * also detect if there was a change and clear it 
 * 
 */
void UpdateLCD()
{
  // check to see if the display mode has changed
  if (lcdMode != previousLcdMode) {
    // lcd.clear();
  }

  // update the values on the display
  switch (lcdMode)
  {
    case RACE_MODE:
    previousLcdMode = lcdMode;
    DisplayRaceMode();
    break;

    case ELECTRICAL_MODE:
    previousLcdMode = lcdMode;
    DisplayElectricalMode();
    break;

    case MECHANICAL_MODE:
    previousLcdMode = lcdMode;
    DisplayMechanicalMode();
    break;

    default:
    lcdMode = RACE_MODE;
    break;
  }
}


/**
 * @brief content to be displayed during the boot sequence
 * 
 */
void AfterInitLCD()
{
  display.fillScreen(random(0xFFFF));
  display.setCursor(0, 0);
  display.setTextColor(TFT_WHITE, TFT_BLACK);
  display.setTextSize(2);
  display.print("Welcome AERO Driver");
}


/**
 * @brief LCD display setup for when the car is being driven
 * 
 */
void DisplayRaceMode()
{

}


/**
 * @brief 
 * 
 */
void DisplayElectricalMode()
{

}


/**
 * @brief 
 * 
 */
void DisplayMechanicalMode()
{

}
