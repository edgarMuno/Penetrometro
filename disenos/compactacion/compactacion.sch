EESchema Schematic File Version 4
LIBS:compactacion-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L stepupdown:carga-rescue_REGULADOR_STEPDOWN-BATERIAMOD U1
U 1 1 6036D060
P 1500 1400
F 0 "U1" H 1950 1475 50  0000 C CNN
F 1 "carga-rescue_REGULADOR_STEPDOWN-BATERIAMOD" H 1950 1384 50  0000 C CNN
F 2 "carga:REGULADOR STEP DOWN" H 1500 1400 50  0001 C CNN
F 3 "" H 1500 1400 50  0001 C CNN
	1    1500 1400
	1    0    0    -1  
$EndComp
$Comp
L stepupdown:carga-rescue_MODULOBATE-BATERIAMOD U2
U 1 1 6036DAAE
P 2000 3650
F 0 "U2" H 2628 3716 50  0000 L CNN
F 1 "carga-rescue_MODULOBATE-BATERIAMOD" H 2628 3625 50  0000 L CNN
F 2 "compactacion:BATERIAMODULECHA" H 2628 3534 50  0001 L CNN
F 3 "" H 1850 4150 50  0001 C CNN
	1    2000 3650
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 60370511
P 4250 2300
F 0 "A1" H 4250 1211 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 4250 1120 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 4400 1350 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 4250 1300 50  0001 C CNN
	1    4250 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 6037131E
P 1250 2450
F 0 "F1" H 1310 2496 50  0000 L CNN
F 1 "Fuse" H 1310 2405 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 1180 2450 50  0001 C CNN
F 3 "~" H 1250 2450 50  0001 C CNN
	1    1250 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60371DFB
P 1650 3100
F 0 "J2" H 1730 3092 50  0000 L CNN
F 1 "Conn_01x02" H 1730 3001 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 1650 3100 50  0001 C CNN
F 3 "~" H 1650 3100 50  0001 C CNN
	1    1650 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 60372688
P 1000 3700
F 0 "J1" H 1080 3692 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1080 3601 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1000 3700 50  0001 C CNN
F 3 "~" H 1000 3700 50  0001 C CNN
	1    1000 3700
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 60373D85
P 2150 3100
F 0 "J4" H 2230 3092 50  0000 L CNN
F 1 "Conn_01x02" H 2230 3001 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2150 3100 50  0001 C CNN
F 3 "~" H 2150 3100 50  0001 C CNN
	1    2150 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 60374223
P 1900 3100
F 0 "J3" H 1980 3092 50  0000 L CNN
F 1 "Conn_01x02" H 1980 3001 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 1900 3100 50  0001 C CNN
F 3 "~" H 1900 3100 50  0001 C CNN
	1    1900 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 3300 2250 3300
Wire Wire Line
	2150 3300 2000 3300
Connection ~ 2000 3300
Wire Wire Line
	1900 3300 1750 3300
Connection ~ 1750 3300
Wire Wire Line
	1750 4050 1750 3450
Wire Wire Line
	1750 3450 1650 3450
Wire Wire Line
	1650 3450 1650 3300
Wire Wire Line
	1200 3600 1350 3600
Wire Wire Line
	1450 3600 1450 3500
Wire Wire Line
	1200 3700 1300 3700
Wire Wire Line
	1450 3700 1450 3800
Wire Wire Line
	800  3900 1300 3900
Wire Wire Line
	1300 3900 1300 3700
Connection ~ 1300 3700
Wire Wire Line
	1300 3700 1450 3700
Wire Wire Line
	1250 2300 1250 1550
Wire Wire Line
	1250 1550 1400 1550
$Comp
L pspice:0 #GND01
U 1 1 603808B6
P 1200 3350
F 0 "#GND01" H 1200 3250 50  0001 C CNN
F 1 "0" H 1200 3439 50  0000 C CNN
F 2 "" H 1200 3350 50  0001 C CNN
F 3 "~" H 1200 3350 50  0001 C CNN
	1    1200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3350 1350 3350
Wire Wire Line
	1350 3350 1350 3600
Connection ~ 1350 3600
Wire Wire Line
	1350 3600 1450 3600
Text Label 1400 2050 0    50   ~ 0
GND
Wire Wire Line
	1400 2050 1400 1800
$Comp
L pspice:0 #GND02
U 1 1 6038169B
P 1400 2050
F 0 "#GND02" H 1400 1950 50  0001 C CNN
F 1 "0" H 1400 2139 50  0000 C CNN
F 2 "" H 1400 2050 50  0001 C CNN
F 3 "~" H 1400 2050 50  0001 C CNN
	1    1400 2050
	1    0    0    -1  
$EndComp
Text Label 2600 2000 0    50   ~ 0
GND
Wire Wire Line
	2600 2000 2600 1850
Wire Wire Line
	2600 1850 2500 1850
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 60382338
P 6400 1500
F 0 "J9" H 6480 1492 50  0000 L CNN
F 1 "Conn_01x04_CARGA" H 6480 1401 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x04_P2.54mm_Vertical" H 6400 1500 50  0001 C CNN
F 3 "~" H 6400 1500 50  0001 C CNN
	1    6400 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 60383442
P 6350 2550
F 0 "J7" H 6430 2542 50  0000 L CNN
F 1 "Conn_01x04_DISTAN" H 6430 2451 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x04_P2.54mm_Vertical" H 6350 2550 50  0001 C CNN
F 3 "~" H 6350 2550 50  0001 C CNN
	1    6350 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J8
U 1 1 60383D4C
P 6350 3400
F 0 "J8" H 6430 3392 50  0000 L CNN
F 1 "Conn_01x04_PANTALLA" H 6430 3301 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x04_P2.54mm_Vertical" H 6350 3400 50  0001 C CNN
F 3 "~" H 6350 3400 50  0001 C CNN
	1    6350 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J6
U 1 1 603840D1
P 6250 4200
F 0 "J6" H 6300 4617 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 6300 4526 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x06_P2.54mm_Vertical" H 6250 4200 50  0001 C CNN
F 3 "~" H 6250 4200 50  0001 C CNN
	1    6250 4200
	1    0    0    -1  
$EndComp
Text Label 5600 4100 0    50   ~ 0
MISO
Text Label 5600 4200 0    50   ~ 0
SCK
Text Label 5600 4300 0    50   ~ 0
MOSI
Text Label 5600 4400 0    50   ~ 0
CS
Text Label 5600 4500 0    50   ~ 0
5V
Wire Wire Line
	5600 4500 6050 4500
$Comp
L Isolator:PC817 U3
U 1 1 60386CE4
P 4900 3900
F 0 "U3" H 4900 4225 50  0000 C CNN
F 1 "PC817" H 4900 4134 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4700 3700 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4900 3900 50  0001 L CNN
	1    4900 3900
	1    0    0    -1  
$EndComp
Text Label 5200 4150 0    50   ~ 0
GND
Wire Wire Line
	5200 3800 6050 3800
Wire Wire Line
	6050 3800 6050 4000
Wire Wire Line
	4600 4000 4600 4300
Wire Wire Line
	5200 4000 5200 4300
Wire Wire Line
	4600 4300 5200 4300
$Comp
L Device:R R4
U 1 1 6038A3A5
P 4900 3500
F 0 "R4" V 4693 3500 50  0000 C CNN
F 1 "R" V 4784 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 4830 3500 50  0001 C CNN
F 3 "~" H 4900 3500 50  0001 C CNN
	1    4900 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3800 4600 3500
Wire Wire Line
	4600 3500 4750 3500
$Comp
L Isolator:PC817 U4
U 1 1 6038C7F9
P 5550 3200
F 0 "U4" H 5550 3525 50  0000 C CNN
F 1 "PC817" H 5550 3434 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 5350 3000 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5550 3200 50  0001 L CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
Text Label 5850 3450 0    50   ~ 0
GND
Wire Wire Line
	5850 3100 6150 3100
Wire Wire Line
	5250 3300 5250 3600
Wire Wire Line
	5850 3300 5850 3600
Wire Wire Line
	5250 3600 5850 3600
$Comp
L Device:R R5
U 1 1 6038C804
P 5550 2800
F 0 "R5" V 5343 2800 50  0000 C CNN
F 1 "R" V 5434 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 5480 2800 50  0001 C CNN
F 3 "~" H 5550 2800 50  0001 C CNN
	1    5550 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3100 5250 2800
Wire Wire Line
	5250 2800 5400 2800
Wire Wire Line
	6150 3300 6150 3100
Text Label 6050 1300 0    50   ~ 0
GND
Wire Wire Line
	6200 1400 6050 1400
Wire Wire Line
	6050 1400 6050 1300
Text Label 6050 2300 0    50   ~ 0
GND
Wire Wire Line
	6150 2450 6050 2450
Wire Wire Line
	6050 2450 6050 2300
Text Label 6000 1500 0    50   ~ 0
DT
Text Label 6000 1600 0    50   ~ 0
SCKC
Text Label 6000 1700 0    50   ~ 0
5VA
Wire Wire Line
	6000 1500 6200 1500
Wire Wire Line
	6000 1600 6200 1600
Wire Wire Line
	6200 1700 6000 1700
Text Label 3550 1900 0    50   ~ 0
DT
Text Label 3550 2000 0    50   ~ 0
SCKC
Wire Wire Line
	3550 1900 3750 1900
Wire Wire Line
	3550 2000 3750 2000
Text Label 6050 2750 0    50   ~ 0
5VA
Wire Wire Line
	6050 2750 6150 2750
Text Label 6000 2550 0    50   ~ 0
D6
Text Label 6000 2650 0    50   ~ 0
D5
Wire Wire Line
	6000 2550 6150 2550
Wire Wire Line
	6000 2650 6150 2650
Text Label 3550 2200 0    50   ~ 0
D5
Text Label 3550 2300 0    50   ~ 0
D6
Wire Wire Line
	3550 2200 3750 2200
Wire Wire Line
	3750 2300 3550 2300
Text Label 6050 3400 0    50   ~ 0
TX
Text Label 6050 3500 0    50   ~ 0
RX
Text Label 5900 3750 0    50   ~ 0
5V
Wire Wire Line
	6150 3650 6150 3600
Wire Wire Line
	6050 3500 6150 3500
Wire Wire Line
	6050 3400 6150 3400
Text Label 3550 1700 0    50   ~ 0
TX
Text Label 3550 1800 0    50   ~ 0
RX
Wire Wire Line
	3550 1700 3750 1700
Wire Wire Line
	3550 1800 3750 1800
Wire Wire Line
	6050 4200 5600 4200
Wire Wire Line
	5600 4300 6050 4300
Wire Wire Line
	6050 4400 5600 4400
Wire Wire Line
	5600 4100 6050 4100
Text Label 5800 2800 0    50   ~ 0
D4
Wire Wire Line
	5700 2800 5800 2800
Text Label 3550 2100 0    50   ~ 0
D4
Wire Wire Line
	3550 2100 3750 2100
Text Label 3300 2800 0    50   ~ 0
MOSI
Text Label 3300 2900 0    50   ~ 0
MISO
Wire Wire Line
	3300 2800 3750 2800
Wire Wire Line
	3300 2900 3750 2900
Text Label 3300 3000 0    50   ~ 0
SCK
Wire Wire Line
	3300 3000 3750 3000
Text Label 3300 2600 0    50   ~ 0
CS
Wire Wire Line
	3300 2600 3750 2600
Text Label 3350 2500 0    50   ~ 0
D8
Wire Wire Line
	3350 2500 3750 2500
Text Label 5050 3500 0    50   ~ 0
D8
$Comp
L Device:R R1
U 1 1 603B3C0C
P 2050 5250
F 0 "R1" H 2120 5296 50  0000 L CNN
F 1 "12K" H 2120 5205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 1980 5250 50  0001 C CNN
F 3 "~" H 2050 5250 50  0001 C CNN
	1    2050 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 603B3F3F
P 2050 5750
F 0 "R2" H 2120 5796 50  0000 L CNN
F 1 "7K" H 2120 5705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 1980 5750 50  0001 C CNN
F 3 "~" H 2050 5750 50  0001 C CNN
	1    2050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5600 2050 5500
Wire Wire Line
	2050 5100 2050 4300
Wire Wire Line
	2050 4300 1450 4300
Wire Wire Line
	1450 4300 1450 3800
Connection ~ 1450 3800
$Comp
L pspice:0 #GND03
U 1 1 603B90A3
P 2050 6350
F 0 "#GND03" H 2050 6250 50  0001 C CNN
F 1 "0" H 2050 6439 50  0000 C CNN
F 2 "" H 2050 6350 50  0001 C CNN
F 3 "~" H 2050 6350 50  0001 C CNN
	1    2050 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6350 2050 6150
Text Label 2500 5500 0    50   ~ 0
A0
Wire Wire Line
	2500 5500 2450 5500
Connection ~ 2050 5500
Wire Wire Line
	2050 5500 2050 5400
Text Label 4950 2300 0    50   ~ 0
A0
Wire Wire Line
	4750 2300 4950 2300
$Comp
L Diode:1N47xxA D1
U 1 1 603BF31E
P 2450 5900
F 0 "D1" V 2404 5979 50  0000 L CNN
F 1 "1N47xxA" V 2495 5979 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2450 5725 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85816/1n4728a.pdf" H 2450 5900 50  0001 C CNN
	1    2450 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 6050 2450 6150
Wire Wire Line
	2450 6150 2050 6150
Connection ~ 2050 6150
Wire Wire Line
	2050 6150 2050 5900
Wire Wire Line
	2450 5750 2450 5500
Connection ~ 2450 5500
Wire Wire Line
	2450 5500 2050 5500
Wire Wire Line
	2500 1550 3100 1550
Wire Wire Line
	3100 1550 3100 950 
Wire Wire Line
	3100 950  4150 950 
Wire Wire Line
	4150 950  4150 1300
$Comp
L pspice:0 #GND04
U 1 1 603C67D8
P 3700 3500
F 0 "#GND04" H 3700 3400 50  0001 C CNN
F 1 "0" H 3700 3589 50  0000 C CNN
F 2 "" H 3700 3500 50  0001 C CNN
F 3 "~" H 3700 3500 50  0001 C CNN
	1    3700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3500 3700 3300
Wire Wire Line
	3700 3300 4250 3300
Connection ~ 4250 3300
Wire Wire Line
	4250 3300 4350 3300
Text Label 4450 1000 0    50   ~ 0
5VA
Wire Wire Line
	4450 1300 4450 1000
Text Label 3100 1550 0    50   ~ 0
5V
$Comp
L Switch:SW_Push SW1
U 1 1 603CE6BA
P 1100 2950
F 0 "SW1" H 1100 3235 50  0000 C CNN
F 1 "SW_Push" H 1100 3144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Piano_10.8x4.1mm_W7.62mm_P2.54mm" H 1100 3150 50  0001 C CNN
F 3 "~" H 1100 3150 50  0001 C CNN
	1    1100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3900 800  2950
Wire Wire Line
	800  2950 900  2950
Wire Wire Line
	1300 2950 1300 2600
Wire Wire Line
	1300 2600 1250 2600
Wire Wire Line
	3750 2400 3150 2400
$Comp
L Device:R R3
U 1 1 603DB4A5
P 3000 2400
F 0 "R3" V 2793 2400 50  0000 C CNN
F 1 "R" V 2884 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 2930 2400 50  0001 C CNN
F 3 "~" H 3000 2400 50  0001 C CNN
	1    3000 2400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 603DBD1D
P 2700 2400
F 0 "D2" H 2693 2616 50  0000 C CNN
F 1 "LED" H 2693 2525 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2700 2400 50  0001 C CNN
F 3 "~" H 2700 2400 50  0001 C CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
Text Label 2200 2400 0    50   ~ 0
GND
Wire Wire Line
	2200 2400 2550 2400
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 603E0119
P 5650 3750
F 0 "J5" H 5730 3742 50  0000 L CNN
F 1 "Conn_01x02" H 5730 3651 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 5650 3750 50  0001 C CNN
F 3 "~" H 5650 3750 50  0001 C CNN
	1    5650 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 3650 5850 3650
Wire Wire Line
	5850 3750 6000 3750
$EndSCHEMATC
