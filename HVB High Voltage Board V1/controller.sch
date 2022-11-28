EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2550 4900 2300 4900
Text Label 2300 4800 0    50   ~ 0
LED1
Text Label 2300 4900 0    50   ~ 0
LED2
$Comp
L Device:LED D?
U 1 1 5C50A027
P 4525 1050
AR Path="/5C0BCEFE/5C50A027" Ref="D?"  Part="1" 
AR Path="/5C50A027" Ref="D?"  Part="1" 
AR Path="/5C48D638/5C50A027" Ref="D?"  Part="1" 
AR Path="/5C4E5628/5C50A027" Ref="D1"  Part="1" 
AR Path="/5C83278E/5C8304A7/5C50A027" Ref="D1"  Part="1" 
AR Path="/5C8304A7/5C50A027" Ref="D1"  Part="1" 
F 0 "D1" H 4525 1150 50  0000 C CNN
F 1 "LED" H 4525 950 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4525 1050 50  0001 C CNN
F 3 "~" H 4525 1050 50  0001 C CNN
	1    4525 1050
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D?
U 1 1 5C50A02E
P 4525 1400
AR Path="/5C0BCEFE/5C50A02E" Ref="D?"  Part="1" 
AR Path="/5C50A02E" Ref="D?"  Part="1" 
AR Path="/5C48D638/5C50A02E" Ref="D?"  Part="1" 
AR Path="/5C4E5628/5C50A02E" Ref="D2"  Part="1" 
AR Path="/5C83278E/5C8304A7/5C50A02E" Ref="D2"  Part="1" 
AR Path="/5C8304A7/5C50A02E" Ref="D2"  Part="1" 
F 0 "D2" H 4525 1500 50  0000 C CNN
F 1 "LED" H 4525 1300 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4525 1400 50  0001 C CNN
F 3 "~" H 4525 1400 50  0001 C CNN
	1    4525 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C50A035
P 4875 1050
AR Path="/5C0BCEFE/5C50A035" Ref="R?"  Part="1" 
AR Path="/5C50A035" Ref="R?"  Part="1" 
AR Path="/5C48D638/5C50A035" Ref="R?"  Part="1" 
AR Path="/5C4E5628/5C50A035" Ref="R5"  Part="1" 
AR Path="/5C83278E/5C8304A7/5C50A035" Ref="R5"  Part="1" 
AR Path="/5C8304A7/5C50A035" Ref="R5"  Part="1" 
F 0 "R5" V 4670 1050 50  0000 C CNN
F 1 "1k" V 4761 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4915 1040 50  0001 C CNN
F 3 "~" H 4875 1050 50  0001 C CNN
	1    4875 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C50A03C
P 4875 1400
AR Path="/5C0BCEFE/5C50A03C" Ref="R?"  Part="1" 
AR Path="/5C50A03C" Ref="R?"  Part="1" 
AR Path="/5C48D638/5C50A03C" Ref="R?"  Part="1" 
AR Path="/5C4E5628/5C50A03C" Ref="R6"  Part="1" 
AR Path="/5C83278E/5C8304A7/5C50A03C" Ref="R6"  Part="1" 
AR Path="/5C8304A7/5C50A03C" Ref="R6"  Part="1" 
F 0 "R6" V 4670 1400 50  0000 C CNN
F 1 "1k" V 4761 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4915 1390 50  0001 C CNN
F 3 "~" H 4875 1400 50  0001 C CNN
	1    4875 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	4675 1050 4725 1050
Wire Wire Line
	4675 1400 4725 1400
$Comp
L power:GND #PWR?
U 1 1 5C50A045
P 5125 1500
AR Path="/5C0BCEFE/5C50A045" Ref="#PWR?"  Part="1" 
AR Path="/5C50A045" Ref="#PWR?"  Part="1" 
AR Path="/5C48D638/5C50A045" Ref="#PWR?"  Part="1" 
AR Path="/5C4E5628/5C50A045" Ref="#PWR042"  Part="1" 
AR Path="/5C83278E/5C8304A7/5C50A045" Ref="#PWR042"  Part="1" 
AR Path="/5C8304A7/5C50A045" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 5125 1250 50  0001 C CNN
F 1 "GND" H 5130 1327 50  0000 C CNN
F 2 "" H 5125 1500 50  0001 C CNN
F 3 "" H 5125 1500 50  0001 C CNN
	1    5125 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 1500 5125 1400
Wire Wire Line
	5125 1400 5025 1400
Wire Wire Line
	5125 1400 5125 1050
Wire Wire Line
	5125 1050 5025 1050
Connection ~ 5125 1400
Wire Wire Line
	4375 1050 4125 1050
Wire Wire Line
	4375 1400 4125 1400
Text Label 4125 1050 0    50   ~ 0
LED1
Text Label 4125 1400 0    50   ~ 0
LED2
Wire Notes Line
	5275 1750 4025 1750
Wire Notes Line
	4025 1750 4025 600 
Wire Notes Line
	4025 600  5275 600 
Wire Notes Line
	5275 600  5275 1750
Text Notes 4075 750  0    100  ~ 0
Status LEDs
Wire Wire Line
	2550 4800 2300 4800
$Comp
L Device:R_US R7
U 1 1 5C53D9DB
P 5625 1200
AR Path="/5C4E5628/5C53D9DB" Ref="R7"  Part="1" 
AR Path="/5C83278E/5C8304A7/5C53D9DB" Ref="R7"  Part="1" 
AR Path="/5C8304A7/5C53D9DB" Ref="R7"  Part="1" 
F 0 "R7" H 5557 1154 50  0000 R CNN
F 1 "10k" H 5557 1245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5665 1190 50  0001 C CNN
F 3 "~" H 5625 1200 50  0001 C CNN
	1    5625 1200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5C540E62
P 5625 1350
AR Path="/5C4E5628/5C540E62" Ref="#PWR043"  Part="1" 
AR Path="/5C83278E/5C8304A7/5C540E62" Ref="#PWR043"  Part="1" 
AR Path="/5C8304A7/5C540E62" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 5625 1100 50  0001 C CNN
F 1 "GND" H 5630 1177 50  0000 C CNN
F 2 "" H 5625 1350 50  0001 C CNN
F 3 "" H 5625 1350 50  0001 C CNN
	1    5625 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5C5485A4
P 6225 1200
AR Path="/5C4E5628/5C5485A4" Ref="R8"  Part="1" 
AR Path="/5C83278E/5C8304A7/5C5485A4" Ref="R8"  Part="1" 
AR Path="/5C8304A7/5C5485A4" Ref="R8"  Part="1" 
F 0 "R8" H 6157 1154 50  0000 R CNN
F 1 "10k" H 6157 1245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6265 1190 50  0001 C CNN
F 3 "~" H 6225 1200 50  0001 C CNN
	1    6225 1200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5C5485BA
P 6225 1350
AR Path="/5C4E5628/5C5485BA" Ref="#PWR044"  Part="1" 
AR Path="/5C83278E/5C8304A7/5C5485BA" Ref="#PWR044"  Part="1" 
AR Path="/5C8304A7/5C5485BA" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 6225 1100 50  0001 C CNN
F 1 "GND" H 6230 1177 50  0000 C CNN
F 2 "" H 6225 1350 50  0001 C CNN
F 3 "" H 6225 1350 50  0001 C CNN
	1    6225 1350
	1    0    0    -1  
$EndComp
Text HLabel 6625 5800 0    50   BiDi ~ 0
CAN+
Text HLabel 6625 6950 0    50   BiDi ~ 0
CAN-
Text HLabel 4000 5700 2    50   Output ~ 0
DC_DC_EN
Text HLabel 4000 5900 2    50   Input ~ 0
DC_DC_FAULT
Text Notes 5425 800  0    100  ~ 0
Thermistor Inputs
Text Notes 5475 900  0    50   ~ 0
Filtering circuitry???
Text HLabel 4000 5100 2    50   Output ~ 0
DC_DC_TRIM_EN
Text HLabel 5675 1050 2    50   Input ~ 0
NTC1
Wire Wire Line
	5675 1050 5625 1050
Text HLabel 6275 1050 2    50   Input ~ 0
NTC2
Wire Wire Line
	6275 1050 6225 1050
Text HLabel 4000 5500 2    50   Input ~ 0
NTC2
Text HLabel 4000 5400 2    50   Input ~ 0
NTC1
Wire Notes Line
	5375 650  6775 650 
Wire Notes Line
	5375 650  5375 1600
Wire Notes Line
	5375 1600 6775 1600
Wire Notes Line
	6775 1600 6775 650 
Text Notes 8850 7050 0    100  ~ 0
Willem Hillier\nUVM AERO\n3/5/2019
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U2
U 1 1 618EC67F
P 2450 1150
F 0 "U2" H 2450 1392 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 2450 1301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2450 1350 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 2550 900 50  0001 C CNN
	1    2450 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61900E9F
P 1950 1300
F 0 "C2" H 2065 1346 50  0000 L CNN
F 1 "C" H 2065 1255 50  0000 L CNN
F 2 "" H 1988 1150 50  0001 C CNN
F 3 "~" H 1950 1300 50  0001 C CNN
	1    1950 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61902B5D
P 2950 1300
F 0 "C3" H 3065 1346 50  0000 L CNN
F 1 "C" H 3065 1255 50  0000 L CNN
F 2 "" H 2988 1150 50  0001 C CNN
F 3 "~" H 2950 1300 50  0001 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 61903C93
P 1250 1150
F 0 "D1" H 1250 933 50  0000 C CNN
F 1 "D_Schottky" H 1250 1024 50  0000 C CNN
F 2 "" H 1250 1150 50  0001 C CNN
F 3 "~" H 1250 1150 50  0001 C CNN
	1    1250 1150
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 61904301
P 3350 1300
F 0 "D2" V 3389 1182 50  0000 R CNN
F 1 "LED" V 3298 1182 50  0000 R CNN
F 2 "" H 3350 1300 50  0001 C CNN
F 3 "~" H 3350 1300 50  0001 C CNN
	1    3350 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 61906AC6
P 3200 1600
F 0 "R1" V 3407 1600 50  0000 C CNN
F 1 "R" V 3316 1600 50  0000 C CNN
F 2 "" V 3130 1600 50  0001 C CNN
F 3 "~" H 3200 1600 50  0001 C CNN
	1    3200 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61907504
P 2450 1600
F 0 "#PWR0103" H 2450 1350 50  0001 C CNN
F 1 "GND" H 2455 1427 50  0000 C CNN
F 2 "" H 2450 1600 50  0001 C CNN
F 3 "" H 2450 1600 50  0001 C CNN
	1    2450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1150 1100 1150
Connection ~ 1950 1150
Wire Wire Line
	1950 1150 2150 1150
Wire Wire Line
	1600 1450 1600 1600
Wire Wire Line
	1600 1600 1950 1600
Connection ~ 2450 1600
Wire Wire Line
	2450 1600 2950 1600
Wire Wire Line
	1950 1450 1950 1600
Connection ~ 1950 1600
Wire Wire Line
	1950 1600 2450 1600
Wire Wire Line
	2450 1450 2450 1600
Wire Wire Line
	2950 1450 2950 1600
Connection ~ 2950 1600
Wire Wire Line
	2950 1600 3050 1600
Wire Wire Line
	3350 1600 3350 1450
Connection ~ 2950 1150
Wire Wire Line
	2950 1150 2750 1150
$Comp
L power:+3.3V #PWR0104
U 1 1 61911327
P 3550 1150
F 0 "#PWR0104" H 3550 1000 50  0001 C CNN
F 1 "+3.3V" H 3565 1323 50  0000 C CNN
F 2 "" H 3550 1150 50  0001 C CNN
F 3 "" H 3550 1150 50  0001 C CNN
	1    3550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1150 3350 1150
Connection ~ 3350 1150
Wire Wire Line
	3350 1150 3550 1150
$Comp
L Device:C C?
U 1 1 61925E38
P 2100 3600
F 0 "C?" H 2215 3646 50  0000 L CNN
F 1 "0.1u" H 2215 3555 50  0000 L CNN
F 2 "" H 2138 3450 50  0001 C CNN
F 3 "~" H 2100 3600 50  0001 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 61927830
P 1750 3650
F 0 "SW?" V 1650 3350 50  0000 L CNN
F 1 "SW_Push" V 1750 3250 50  0000 L CNN
F 2 "" H 1750 3850 50  0001 C CNN
F 3 "~" H 1750 3850 50  0001 C CNN
	1    1750 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 3450 2100 3450
$Comp
L power:GND #PWR?
U 1 1 61929412
P 1950 3850
F 0 "#PWR?" H 1950 3600 50  0001 C CNN
F 1 "GND" H 1955 3677 50  0000 C CNN
F 2 "" H 1950 3850 50  0001 C CNN
F 3 "" H 1950 3850 50  0001 C CNN
	1    1950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3850 1750 3850
Wire Wire Line
	1950 3850 2100 3850
Wire Wire Line
	2100 3850 2100 3750
Connection ~ 1950 3850
$Comp
L power:+3.3V #PWR?
U 1 1 6192B6DB
P 3250 3100
F 0 "#PWR?" H 3250 2950 50  0001 C CNN
F 1 "+3.3V" H 3265 3273 50  0000 C CNN
F 2 "" H 3250 3100 50  0001 C CNN
F 3 "" H 3250 3100 50  0001 C CNN
	1    3250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3450 2550 3450
Wire Wire Line
	2550 3450 2550 3900
Connection ~ 2100 3450
$Comp
L Device:Crystal Y?
U 1 1 6194036A
P 1800 4450
F 0 "Y?" H 1800 4718 50  0000 C CNN
F 1 "Crystal" H 1800 4627 50  0000 C CNN
F 2 "" H 1800 4450 50  0001 C CNN
F 3 "~" H 1800 4450 50  0001 C CNN
	1    1800 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619407FE
P 1400 4300
F 0 "C?" H 1515 4346 50  0000 L CNN
F 1 "20p" H 1515 4255 50  0000 L CNN
F 2 "" H 1438 4150 50  0001 C CNN
F 3 "~" H 1400 4300 50  0001 C CNN
	1    1400 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619410AF
P 2100 4300
F 0 "C?" H 2215 4346 50  0000 L CNN
F 1 "20p" H 2215 4255 50  0000 L CNN
F 2 "" H 2138 4150 50  0001 C CNN
F 3 "~" H 2100 4300 50  0001 C CNN
	1    2100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4450 1650 4450
Wire Wire Line
	1400 4450 1400 4600
Wire Wire Line
	1400 4600 2550 4600
Connection ~ 1400 4450
Wire Wire Line
	2550 4500 2100 4500
Wire Wire Line
	2100 4500 2100 4450
Wire Wire Line
	2100 4450 1950 4450
Connection ~ 2100 4450
Wire Wire Line
	2100 4150 1400 4150
Wire Wire Line
	2100 4150 2100 4100
Connection ~ 2100 4150
Connection ~ 2100 3850
$Comp
L Device:R R?
U 1 1 6194A728
P 3400 3250
F 0 "R?" V 3193 3250 50  0000 C CNN
F 1 "R" V 3284 3250 50  0000 C CNN
F 2 "" V 3330 3250 50  0001 C CNN
F 3 "~" H 3400 3250 50  0001 C CNN
	1    3400 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6194AAEA
P 4650 3400
F 0 "C?" V 4600 3550 50  0000 L CNN
F 1 "0.1u" V 4500 3450 50  0000 L CNN
F 2 "" H 4688 3250 50  0001 C CNN
F 3 "~" H 4650 3400 50  0001 C CNN
	1    4650 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6194AF5D
P 4850 3400
F 0 "C?" V 4800 3500 50  0000 L CNN
F 1 "0.1u" V 4900 3450 50  0000 L CNN
F 2 "" H 4888 3250 50  0001 C CNN
F 3 "~" H 4850 3400 50  0001 C CNN
	1    4850 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6194B340
P 5050 3400
F 0 "C?" V 5200 3500 50  0000 L CNN
F 1 "0.1u" V 5100 3450 50  0000 L CNN
F 2 "" H 5088 3250 50  0001 C CNN
F 3 "~" H 5050 3400 50  0001 C CNN
	1    5050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3550 4850 3700
$Comp
L Device:CP1 C?
U 1 1 61957677
P 1600 1300
F 0 "C?" H 1715 1346 50  0000 L CNN
F 1 "CP1" H 1715 1255 50  0000 L CNN
F 2 "" H 1600 1300 50  0001 C CNN
F 3 "~" H 1600 1300 50  0001 C CNN
	1    1600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1150 1600 1150
Connection ~ 1600 1150
Wire Wire Line
	1600 1150 1950 1150
$Comp
L power:GND #PWR?
U 1 1 6195D50E
P 3200 7050
F 0 "#PWR?" H 3200 6800 50  0001 C CNN
F 1 "GND" H 3205 6877 50  0000 C CNN
F 2 "" H 3200 7050 50  0001 C CNN
F 3 "" H 3200 7050 50  0001 C CNN
	1    3200 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7050 3200 6900
Wire Wire Line
	3200 6900 3150 6900
Wire Wire Line
	3050 6900 3050 6800
Wire Wire Line
	3150 6800 3150 6900
Connection ~ 3150 6900
Wire Wire Line
	3150 6900 3050 6900
Wire Wire Line
	3200 6900 3250 6900
Wire Wire Line
	3250 6900 3250 6800
Connection ~ 3200 6900
Wire Wire Line
	3250 6900 3350 6900
Wire Wire Line
	3350 6900 3350 6800
Connection ~ 3250 6900
Wire Wire Line
	3250 3500 3150 3500
Wire Wire Line
	3250 3100 3250 3250
Connection ~ 3250 3500
Wire Wire Line
	3250 3500 3350 3500
Connection ~ 3250 3250
Wire Wire Line
	3250 3250 3250 3500
Wire Wire Line
	3550 3700 3450 3700
Wire Wire Line
	4850 3250 4850 3150
$Comp
L power:GND #PWR?
U 1 1 61997F09
P 4850 3750
F 0 "#PWR?" H 4850 3500 50  0001 C CNN
F 1 "GND" H 4855 3577 50  0000 C CNN
F 2 "" H 4850 3750 50  0001 C CNN
F 3 "" H 4850 3750 50  0001 C CNN
	1    4850 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619A227B
P 4050 3400
F 0 "C?" H 3850 3450 50  0000 L CNN
F 1 "0.1u" H 3800 3350 50  0000 L CNN
F 2 "" H 4088 3250 50  0001 C CNN
F 3 "~" H 4050 3400 50  0001 C CNN
	1    4050 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 619A250E
P 3850 3400
F 0 "C?" H 4000 3450 50  0000 L CNN
F 1 "0.1u" H 3950 3350 50  0000 L CNN
F 2 "" H 3888 3250 50  0001 C CNN
F 3 "~" H 3850 3400 50  0001 C CNN
	1    3850 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 3250 3550 3700
Wire Wire Line
	3550 3250 3850 3250
Connection ~ 3550 3250
Connection ~ 3850 3250
Wire Wire Line
	3850 3250 4050 3250
$Comp
L power:GND #PWR?
U 1 1 619B6AF5
P 3950 3600
F 0 "#PWR?" H 3950 3350 50  0001 C CNN
F 1 "GND" H 3955 3427 50  0000 C CNN
F 2 "" H 3950 3600 50  0001 C CNN
F 3 "" H 3950 3600 50  0001 C CNN
	1    3950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3550 3950 3550
Wire Wire Line
	3950 3550 3950 3600
Wire Wire Line
	3950 3550 4050 3550
Connection ~ 3950 3550
Text Notes 3150 800  2    118  ~ 0
Power Regulation
Text GLabel 4100 6550 2    43   Input ~ 9
A13_SWDIO
Text GLabel 4100 6650 2    43   Input ~ 9
A14_SWCLK
Text GLabel 4100 6750 2    43   Input ~ 9
A15
Wire Wire Line
	3250 3500 3250 3700
Wire Wire Line
	3150 3500 3150 3700
Wire Wire Line
	3350 3500 3350 3700
Connection ~ 4850 3700
Wire Wire Line
	4850 3700 4850 3750
$Comp
L power:+3.3V #PWR?
U 1 1 6194925F
P 4850 3050
F 0 "#PWR?" H 4850 2900 50  0001 C CNN
F 1 "+3.3V" H 4865 3223 50  0000 C CNN
F 2 "" H 4850 3050 50  0001 C CNN
F 3 "" H 4850 3050 50  0001 C CNN
	1    4850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3250 4650 3150
Wire Wire Line
	4650 3150 4850 3150
Wire Wire Line
	5050 3150 5050 3250
Connection ~ 4850 3150
Wire Wire Line
	4850 3150 5050 3150
Wire Wire Line
	4850 3150 4850 3050
Wire Wire Line
	4000 6500 4000 6650
$Comp
L Interface_CAN_LIN:MCP2551-I-SN U?
U 1 1 6198F4D7
P 5700 6400
F 0 "U?" H 5900 6800 50  0000 C CNN
F 1 "MCP2551-I-SN" H 5700 6400 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5700 5900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 5700 6400 50  0001 C CNN
	1    5700 6400
	1    0    0    -1  
$EndComp
Text Label 4650 6200 0    50   ~ 0
CAN_TX_P
Text Label 4650 6300 0    50   ~ 0
CAN_RX_N
$Comp
L Device:C C?
U 1 1 619AA6C7
P 5100 5650
F 0 "C?" V 5300 5650 50  0000 L CNN
F 1 "0.1u" V 5215 5605 50  0000 L CNN
F 2 "" H 5138 5500 50  0001 C CNN
F 3 "~" H 5100 5650 50  0001 C CNN
	1    5100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3700 5050 3700
Wire Wire Line
	5050 3550 5050 3700
Wire Wire Line
	4650 3550 4650 3700
Wire Wire Line
	4650 3700 4850 3700
$Comp
L power:+3.3V #PWR?
U 1 1 619C082D
P 5700 5850
F 0 "#PWR?" H 5700 5700 50  0001 C CNN
F 1 "+3.3V" H 5715 6023 50  0000 C CNN
F 2 "" H 5700 5850 50  0001 C CNN
F 3 "" H 5700 5850 50  0001 C CNN
	1    5700 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5850 5700 6000
$Comp
L power:GND #PWR?
U 1 1 619CD833
P 5700 6900
F 0 "#PWR?" H 5700 6650 50  0001 C CNN
F 1 "GND" H 5705 6727 50  0000 C CNN
F 2 "" H 5700 6900 50  0001 C CNN
F 3 "" H 5700 6900 50  0001 C CNN
	1    5700 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6800 5700 6900
$Comp
L power:GND #PWR?
U 1 1 619E02C5
P 5100 5800
F 0 "#PWR?" H 5100 5550 50  0001 C CNN
F 1 "GND" H 5105 5627 50  0000 C CNN
F 2 "" H 5100 5800 50  0001 C CNN
F 3 "" H 5100 5800 50  0001 C CNN
	1    5100 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 619E0590
P 5100 5500
F 0 "#PWR?" H 5100 5350 50  0001 C CNN
F 1 "+3.3V" H 5115 5673 50  0000 C CNN
F 2 "" H 5100 5500 50  0001 C CNN
F 3 "" H 5100 5500 50  0001 C CNN
	1    5100 5500
	1    0    0    -1  
$EndComp
Text Notes 5350 5350 0    79   ~ 0
CAN Transceiver
Wire Notes Line
	4800 5150 4800 7200
Wire Notes Line
	4800 7200 6750 7200
Wire Notes Line
	6750 7200 6750 5150
Wire Notes Line
	6750 5150 4800 5150
Wire Notes Line
	700  550  3800 550 
Wire Notes Line
	3800 550  3800 1900
Wire Notes Line
	3800 1900 700  1900
Wire Notes Line
	700  1900 700  550 
$Comp
L Device:R R?
U 1 1 61A2B594
P 6400 6400
F 0 "R?" H 6470 6446 50  0000 L CNN
F 1 "120" H 6470 6355 50  0000 L CNN
F 2 "" V 6330 6400 50  0001 C CNN
F 3 "~" H 6400 6400 50  0001 C CNN
	1    6400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5900 6400 5900
Wire Wire Line
	6200 6850 6400 6850
Wire Wire Line
	6400 6250 6400 5900
Wire Wire Line
	6400 6550 6400 6850
Connection ~ 6400 6850
$Comp
L Device:R R?
U 1 1 61A3FAEB
P 5050 6750
F 0 "R?" H 5120 6796 50  0000 L CNN
F 1 "1k" H 5120 6705 50  0000 L CNN
F 2 "" V 4980 6750 50  0001 C CNN
F 3 "~" H 5050 6750 50  0001 C CNN
	1    5050 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 6600 5200 6600
Wire Wire Line
	5050 6900 5700 6900
Connection ~ 5700 6900
Wire Wire Line
	6200 6500 6200 6850
Wire Wire Line
	6200 5900 6200 6300
Text Notes 9800 1350 2    50   ~ 0
PROGRAMMING
Wire Wire Line
	4000 6500 3850 6500
Wire Wire Line
	4050 6550 4050 6400
Wire Wire Line
	4050 6400 3850 6400
Wire Wire Line
	4000 6650 4100 6650
Wire Wire Line
	4100 6550 4050 6550
Wire Wire Line
	3850 6600 3950 6600
Wire Wire Line
	3950 6600 3950 6750
Wire Wire Line
	3950 6750 4100 6750
Text GLabel 9350 1700 0    43   Input ~ 9
A13_SWDIO
Text GLabel 9350 1800 0    43   Input ~ 9
A14_SWCLK
$Comp
L power:+3.3V #PWR?
U 1 1 61BB95CF
P 9350 1600
F 0 "#PWR?" H 9350 1450 50  0001 C CNN
F 1 "+3.3V" H 9365 1773 50  0000 C CNN
F 2 "" H 9350 1600 50  0001 C CNN
F 3 "" H 9350 1600 50  0001 C CNN
	1    9350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61BBA7F1
P 9350 2000
F 0 "#PWR?" H 9350 1750 50  0001 C CNN
F 1 "GND" H 9355 1827 50  0000 C CNN
F 2 "" H 9350 2000 50  0001 C CNN
F 3 "" H 9350 2000 50  0001 C CNN
	1    9350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2000 9500 2000
Wire Wire Line
	9500 1800 9350 1800
Wire Wire Line
	9350 1700 9500 1700
Wire Wire Line
	9500 1600 9350 1600
Wire Wire Line
	2550 4100 2100 4100
Connection ~ 2100 4100
Wire Wire Line
	2100 4100 2100 3850
Text Notes 4700 2800 0    50   ~ 0
Power Caps
$Comp
L MCU_ST_STM32F4:STM32F413CGUx U1
U 1 1 618B3473
P 3250 5200
F 0 "U1" H 3250 5550 50  0000 C CNN
F 1 "STM32F413CGUx" H 3300 5700 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 2650 3700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00282249.pdf" H 3250 5200 50  0001 C CNN
	1    3250 5200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 61EFD3F7
P 850 1150
F 0 "#PWR?" H 850 1000 50  0001 C CNN
F 1 "VDD" H 865 1323 50  0000 C CNN
F 2 "" H 850 1150 50  0001 C CNN
F 3 "" H 850 1150 50  0001 C CNN
	1    850  1150
	1    0    0    -1  
$EndComp
Text HLabel 850  1350 2    50   Input ~ 0
VDD_12V
Text GLabel 2350 5500 0    43   Input ~ 9
B3_TRACESWO
Wire Wire Line
	2350 5500 2550 5500
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 61F4F2D0
P 9700 1800
F 0 "J?" H 9780 1842 50  0000 L CNN
F 1 "Conn_01x05" H 9780 1751 50  0000 L CNN
F 2 "" H 9700 1800 50  0001 C CNN
F 3 "~" H 9700 1800 50  0001 C CNN
	1    9700 1800
	1    0    0    -1  
$EndComp
Text GLabel 9400 1900 0    43   Input ~ 9
B3_TRACESWO
Wire Wire Line
	9400 1900 9500 1900
Wire Wire Line
	6400 6850 6650 6850
Wire Wire Line
	6400 5900 6650 5900
Connection ~ 6400 5900
Wire Wire Line
	850  1350 850  1150
Connection ~ 850  1150
Wire Wire Line
	3850 6300 5200 6300
Wire Wire Line
	3850 6200 5200 6200
Wire Wire Line
	6625 5800 6650 5800
Wire Wire Line
	6650 5800 6650 5900
Wire Wire Line
	6650 6850 6650 6950
Wire Wire Line
	6650 6950 6625 6950
Wire Wire Line
	4000 5900 3850 5900
Wire Wire Line
	4000 5700 3850 5700
Wire Wire Line
	4000 5500 3850 5500
Wire Wire Line
	3850 5400 4000 5400
Wire Wire Line
	4000 5100 3850 5100
$EndSCHEMATC