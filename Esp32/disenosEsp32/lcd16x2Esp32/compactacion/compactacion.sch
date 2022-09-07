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
Wire Wire Line
	1200 3600 1350 3600
Wire Wire Line
	1200 3700 1300 3700
Wire Wire Line
	800  3900 1300 3900
Wire Wire Line
	1300 3900 1300 3700
Wire Wire Line
	1250 2300 1250 1550
Wire Wire Line
	1350 3350 1350 3600
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
L Connector_Generic:Conn_01x06 J6
U 1 1 603840D1
P 6250 4200
F 0 "J6" H 6300 4617 50  0000 C CNN
F 1 "Conn_02x06_SDcard" H 6300 4526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6250 4200 50  0001 C CNN
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
	5600 4500 5900 4500
Text Label 6050 3800 0    50   ~ 0
GND
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
5V
Wire Wire Line
	6000 1500 6200 1500
Wire Wire Line
	6000 1600 6200 1600
Wire Wire Line
	6200 1700 6000 1700
Text Label 6050 2750 0    50   ~ 0
5V
Wire Wire Line
	6050 2750 6150 2750
Text Label 6000 2550 0    50   ~ 0
D5
Text Label 6000 2650 0    50   ~ 0
D4
Wire Wire Line
	6000 2550 6150 2550
Wire Wire Line
	6000 2650 6150 2650
Wire Wire Line
	6050 4200 5600 4200
Wire Wire Line
	5600 4300 6050 4300
Wire Wire Line
	6050 4400 5600 4400
Wire Wire Line
	5600 4100 6050 4100
$Comp
L pspice:0 #GND04
U 1 1 603C67D8
P 6950 3750
F 0 "#GND04" H 6950 3650 50  0001 C CNN
F 1 "0" H 6950 3839 50  0000 C CNN
F 2 "" H 6950 3750 50  0001 C CNN
F 3 "~" H 6950 3750 50  0001 C CNN
	1    6950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3750 6950 3550
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
	1250 1550 3100 1550
Wire Wire Line
	6050 3750 6050 4000
Wire Wire Line
	5850 3750 6050 3750
Text Label 1350 3350 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 607A3624
P 6400 5150
F 0 "J2" H 6480 5142 50  0000 L CNN
F 1 "Conn_01x04_LCD" H 6480 5051 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x04_P2.54mm_Vertical" H 6400 5150 50  0001 C CNN
F 3 "~" H 6400 5150 50  0001 C CNN
	1    6400 5150
	1    0    0    -1  
$EndComp
Text Label 6100 4900 0    50   ~ 0
GND
Wire Wire Line
	6200 5050 6100 5050
Wire Wire Line
	6100 5050 6100 4900
Wire Wire Line
	5900 5150 5900 4500
Wire Wire Line
	5900 5150 6200 5150
Connection ~ 5900 4500
Wire Wire Line
	5900 4500 6050 4500
Text Label 5700 5250 0    50   ~ 0
SDA
Text Label 5750 5350 0    50   ~ 0
SCL
Wire Wire Line
	5750 5350 6200 5350
Wire Wire Line
	5700 5250 6200 5250
$Comp
L Switch:SW_Push SW2
U 1 1 607B2510
P 2350 4200
F 0 "SW2" H 2350 4485 50  0000 C CNN
F 1 "SW_ON" H 2350 4394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 2350 4400 50  0001 C CNN
F 3 "~" H 2350 4400 50  0001 C CNN
	1    2350 4200
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 607B4F6F
P 2950 4200
F 0 "SW3" H 2950 4485 50  0000 C CNN
F 1 "SW_DELET" H 2950 4394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 2950 4400 50  0001 C CNN
F 3 "~" H 2950 4400 50  0001 C CNN
	1    2950 4200
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 607B6311
P 3550 4200
F 0 "SW4" H 3550 4485 50  0000 C CNN
F 1 "SW_REVIEW" H 3550 4394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 3550 4400 50  0001 C CNN
F 3 "~" H 3550 4400 50  0001 C CNN
	1    3550 4200
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 607B79F2
P 4000 4200
F 0 "SW5" H 4000 4485 50  0000 C CNN
F 1 "SW_START" H 4000 4394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 4000 4400 50  0001 C CNN
F 3 "~" H 4000 4400 50  0001 C CNN
	1    4000 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 607B8DFC
P 2350 4750
F 0 "R1" H 2420 4796 50  0000 L CNN
F 1 "R" H 2420 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 2280 4750 50  0001 C CNN
F 3 "~" H 2350 4750 50  0001 C CNN
	1    2350 4750
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0101
U 1 1 607BAB9D
P 2350 5250
F 0 "#GND0101" H 2350 5150 50  0001 C CNN
F 1 "0" H 2350 5339 50  0000 C CNN
F 2 "" H 2350 5250 50  0001 C CNN
F 3 "~" H 2350 5250 50  0001 C CNN
	1    2350 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 5250 2350 4900
Text Label 3600 4500 0    50   ~ 0
D26
Wire Wire Line
	3600 4500 4000 4500
Wire Wire Line
	2350 4400 2350 4450
$Comp
L Device:R R2
U 1 1 607BE14E
P 2950 4750
F 0 "R2" H 3020 4796 50  0000 L CNN
F 1 "R" H 3020 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 2880 4750 50  0001 C CNN
F 3 "~" H 2950 4750 50  0001 C CNN
	1    2950 4750
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0102
U 1 1 607BE154
P 2950 5250
F 0 "#GND0102" H 2950 5150 50  0001 C CNN
F 1 "0" H 2950 5339 50  0000 C CNN
F 2 "" H 2950 5250 50  0001 C CNN
F 3 "~" H 2950 5250 50  0001 C CNN
	1    2950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5250 2950 4900
Text Label 3150 4550 0    50   ~ 0
D25
Wire Wire Line
	3150 4550 3550 4550
$Comp
L Device:R R3
U 1 1 607BFAEB
P 3550 4750
F 0 "R3" H 3620 4796 50  0000 L CNN
F 1 "R" H 3620 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 3480 4750 50  0001 C CNN
F 3 "~" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0103
U 1 1 607BFAF1
P 3550 5250
F 0 "#GND0103" H 3550 5150 50  0001 C CNN
F 1 "0" H 3550 5339 50  0000 C CNN
F 2 "" H 3550 5250 50  0001 C CNN
F 3 "~" H 3550 5250 50  0001 C CNN
	1    3550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5250 3550 4900
Text Label 2550 4500 0    50   ~ 0
D33
Wire Wire Line
	2550 4500 2950 4500
$Comp
L Device:R R4
U 1 1 607C1377
P 4000 4750
F 0 "R4" H 4070 4796 50  0000 L CNN
F 1 "R" H 4070 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 3930 4750 50  0001 C CNN
F 3 "~" H 4000 4750 50  0001 C CNN
	1    4000 4750
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0104
U 1 1 607C137D
P 4000 5250
F 0 "#GND0104" H 4000 5150 50  0001 C CNN
F 1 "0" H 4000 5339 50  0000 C CNN
F 2 "" H 4000 5250 50  0001 C CNN
F 3 "~" H 4000 5250 50  0001 C CNN
	1    4000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5250 4000 4900
Text Label 1950 4450 0    50   ~ 0
D32
Wire Wire Line
	1950 4450 2350 4450
Connection ~ 3550 4000
Wire Wire Line
	3550 4000 3950 4000
Wire Wire Line
	2350 4000 2950 4000
Connection ~ 2950 4000
Wire Wire Line
	2950 4000 3550 4000
Text Label 1250 2200 0    50   ~ 0
A0
Wire Wire Line
	1350 3900 1300 3900
Connection ~ 1300 3900
$Comp
L Device:Buzzer BZ1
U 1 1 607966FC
P 6450 3300
F 0 "BZ1" H 6602 3329 50  0000 L CNN
F 1 "Buzzer" H 6602 3238 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_TDK_PS1240P02BT_D12.2mm_H6.5mm" V 6425 3400 50  0001 C CNN
F 3 "~" V 6425 3400 50  0001 C CNN
	1    6450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4400 2950 4500
Connection ~ 2950 4500
Wire Wire Line
	2950 4500 2950 4600
Wire Wire Line
	3550 4400 3550 4550
Connection ~ 3550 4550
Wire Wire Line
	3550 4550 3550 4600
Connection ~ 2350 4450
Wire Wire Line
	4000 4400 4000 4500
Connection ~ 4000 4500
Wire Wire Line
	4000 4500 4000 4600
Wire Wire Line
	2350 4450 2350 4600
$Comp
L esp32mcu:ESP32-DEVKITC-32D U1
U 1 1 609B5768
P 8250 2650
F 0 "U1" H 8250 3817 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 8250 3726 50  0000 C CNN
F 2 "esp32mcu:MODULE_ESP32-DEVKITC-32D" H 8250 2650 50  0001 L BNN
F 3 "" H 8250 2650 50  0001 L BNN
F 4 "4" H 8250 2650 50  0001 L BNN "PARTREV"
F 5 "Espressif Systems" H 8250 2650 50  0001 L BNN "MANUFACTURER"
	1    8250 2650
	1    0    0    -1  
$EndComp
Text Label 9050 1850 0    50   ~ 0
SCL
Text Label 9050 2150 0    50   ~ 0
SDA
Text Label 9050 2250 0    50   ~ 0
MISO
Text Label 9050 2350 0    50   ~ 0
SCK
Text Label 9050 1750 0    50   ~ 0
MOSI
Text Label 7000 2950 0    50   ~ 0
CS
Text Label 9150 3050 0    50   ~ 0
GND
Text Label 7200 3150 0    50   ~ 0
5V
Wire Wire Line
	7200 3150 7450 3150
Text Label 7200 3050 0    50   ~ 0
GND
Wire Wire Line
	7200 3050 7450 3050
Wire Wire Line
	7000 2950 7450 2950
Text Label 9050 2450 0    50   ~ 0
D5
Text Label 9050 2750 0    50   ~ 0
D4
Text Label 7250 2850 0    50   ~ 0
DT
Text Label 7250 2750 0    50   ~ 0
SCKC
Wire Wire Line
	7250 2750 7450 2750
Wire Wire Line
	7250 2850 7450 2850
$Comp
L pspice:0 #GND01
U 1 1 60AD5C7E
P 9400 3200
F 0 "#GND01" H 9400 3100 50  0001 C CNN
F 1 "0" H 9400 3289 50  0000 C CNN
F 2 "" H 9400 3200 50  0001 C CNN
F 3 "~" H 9400 3200 50  0001 C CNN
	1    9400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3200 9400 3050
Wire Wire Line
	6350 3400 6250 3400
Wire Wire Line
	6250 3400 6250 3550
Wire Wire Line
	6250 3550 6950 3550
Text Label 6100 3150 0    50   ~ 0
D27
Text Label 7250 2650 0    50   ~ 0
D27
Wire Wire Line
	7250 2650 7450 2650
Wire Wire Line
	6100 3150 6350 3150
Wire Wire Line
	6350 3150 6350 3200
$Comp
L Connector_Generic:Conn_01x10 J3
U 1 1 60AEA6B3
P 8400 4700
F 0 "J3" H 8480 4692 50  0000 L CNN
F 1 "Conn_01x10adc" H 8480 4601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8400 4700 50  0001 C CNN
F 3 "~" H 8400 4700 50  0001 C CNN
	1    8400 4700
	1    0    0    -1  
$EndComp
Text Label 7900 4400 0    50   ~ 0
GND
Text Label 7900 4300 0    50   ~ 0
5V
Wire Wire Line
	7900 4300 8200 4300
Wire Wire Line
	7900 4400 8200 4400
Wire Wire Line
	9050 3050 9400 3050
Text Label 9150 3150 0    50   ~ 0
3V
Wire Wire Line
	9050 3150 9150 3150
Text Label 7950 4500 0    50   ~ 0
SCL
Text Label 7950 4600 0    50   ~ 0
SDA
Text Label 7950 4700 0    50   ~ 0
GND
Text Label 7950 4900 0    50   ~ 0
A0
Text Label 7950 5000 0    50   ~ 0
A1
Text Label 7950 5100 0    50   ~ 0
A2
Text Label 7950 5200 0    50   ~ 0
A3
Wire Wire Line
	7950 4500 8200 4500
Wire Wire Line
	7950 4600 8200 4600
Wire Wire Line
	7950 4700 8200 4700
Wire Wire Line
	7950 4900 8200 4900
Wire Wire Line
	7950 5000 8200 5000
Wire Wire Line
	8200 5100 7950 5100
Wire Wire Line
	7950 5200 8200 5200
Text Label 4150 3950 0    50   ~ 0
3V
Wire Wire Line
	4150 3950 3950 3950
Wire Wire Line
	3950 3950 3950 4000
Connection ~ 3950 4000
Wire Wire Line
	3950 4000 4000 4000
Text Label 7250 2550 0    50   ~ 0
D26
Text Label 7250 2450 0    50   ~ 0
D25
Text Label 7250 2350 0    50   ~ 0
D33
Text Label 7250 2250 0    50   ~ 0
D32
Wire Wire Line
	7250 2250 7450 2250
Wire Wire Line
	7250 2350 7450 2350
Wire Wire Line
	7250 2450 7450 2450
Wire Wire Line
	7250 2550 7450 2550
$EndSCHEMATC
