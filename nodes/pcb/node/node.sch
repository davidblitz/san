EESchema Schematic File Version 4
LIBS:node-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Node"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2200 2200 2850 2200
Wire Wire Line
	2200 2300 2850 2300
$Comp
L power:GND #PWR0102
U 1 1 5C7EDAEC
P 3550 2250
F 0 "#PWR0102" H 3550 2000 50  0001 C CNN
F 1 "GND" H 3555 2077 50  0000 C CNN
F 2 "" H 3550 2250 50  0001 C CNN
F 3 "" H 3550 2250 50  0001 C CNN
	1    3550 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C7EDC56
P 1600 4400
F 0 "#PWR0103" H 1600 4150 50  0001 C CNN
F 1 "GND" H 1605 4227 50  0000 C CNN
F 2 "" H 1600 4400 50  0001 C CNN
F 3 "" H 1600 4400 50  0001 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1100 1600 1200
Wire Wire Line
	1700 1300 1700 1200
Wire Wire Line
	1700 1200 1600 1200
Connection ~ 1600 1200
Wire Wire Line
	1600 1200 1600 1300
Wire Wire Line
	4750 1700 4450 1700
Wire Wire Line
	4450 1700 4450 1600
Text GLabel 2300 3300 2    50   Input ~ 0
RXI
Text GLabel 2300 3400 2    50   Input ~ 0
TXO
Wire Wire Line
	2300 3300 2200 3300
Wire Wire Line
	2200 3400 2300 3400
Text GLabel 2300 1900 2    50   Input ~ 0
MOSI
Text GLabel 2300 2000 2    50   Input ~ 0
MISO
Text GLabel 2300 2100 2    50   Input ~ 0
SCK
Wire Wire Line
	2300 1900 2200 1900
Wire Wire Line
	2300 2000 2200 2000
Wire Wire Line
	2200 2100 2300 2100
$Comp
L power:GND #PWR0118
U 1 1 5C81AF18
P 7150 2100
F 0 "#PWR0118" H 7150 1850 50  0001 C CNN
F 1 "GND" H 7155 1927 50  0000 C CNN
F 2 "" H 7150 2100 50  0001 C CNN
F 3 "" H 7150 2100 50  0001 C CNN
	1    7150 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5C8B4932
P 5350 6650
F 0 "J4" H 5350 6450 50  0000 C CNN
F 1 "Port" H 5300 6750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5350 6650 50  0001 C CNN
F 3 "~" H 5350 6650 50  0001 C CNN
	1    5350 6650
	-1   0    0    1   
$EndComp
Text Notes 600  700  0    100  ~ 0
Top Hemisphere
Text Notes 8200 700  0    100  ~ 0
Bottom Hemisphere
$Comp
L power:GND #PWR0123
U 1 1 5C9389CA
P 5950 6700
F 0 "#PWR0123" H 5950 6450 50  0001 C CNN
F 1 "GND" H 5955 6527 50  0000 C CNN
F 2 "" H 5950 6700 50  0001 C CNN
F 3 "" H 5950 6700 50  0001 C CNN
	1    5950 6700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5C9479FD
P 5350 7200
F 0 "J5" H 5350 7000 50  0000 C CNN
F 1 "Port" H 5300 7300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5350 7200 50  0001 C CNN
F 3 "~" H 5350 7200 50  0001 C CNN
	1    5350 7200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5C947A04
P 5950 7250
F 0 "#PWR0124" H 5950 7000 50  0001 C CNN
F 1 "GND" H 5955 7077 50  0000 C CNN
F 2 "" H 5950 7250 50  0001 C CNN
F 3 "" H 5950 7250 50  0001 C CNN
	1    5950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 7200 5950 7250
Wire Wire Line
	5550 7200 5950 7200
Text GLabel 5600 7100 2    50   Input ~ 0
PORT-2
Wire Wire Line
	5600 7100 5550 7100
Text GLabel 2300 3500 2    50   Input ~ 0
PORT-1
Text GLabel 2300 3600 2    50   Input ~ 0
PORT-2
Text GLabel 2300 1600 2    50   Input ~ 0
PORT-3
Text GLabel 2300 1700 2    50   Input ~ 0
PORT-4
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5C9662A2
P 9500 2550
F 0 "J7" H 9500 2350 50  0000 C CNN
F 1 "Port" H 9450 2650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9500 2550 50  0001 C CNN
F 3 "~" H 9500 2550 50  0001 C CNN
	1    9500 2550
	-1   0    0    1   
$EndComp
Text GLabel 9750 2450 2    50   Input ~ 0
BOT-PORT-3
Wire Wire Line
	9750 2450 9700 2450
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5C9662B3
P 9500 3100
F 0 "J8" H 9500 2900 50  0000 C CNN
F 1 "Port" H 9450 3200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9500 3100 50  0001 C CNN
F 3 "~" H 9500 3100 50  0001 C CNN
	1    9500 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5C9662BA
P 10100 3150
F 0 "#PWR0126" H 10100 2900 50  0001 C CNN
F 1 "GND" H 10105 2977 50  0000 C CNN
F 2 "" H 10100 3150 50  0001 C CNN
F 3 "" H 10100 3150 50  0001 C CNN
	1    10100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3100 10100 3150
Wire Wire Line
	9700 3100 10100 3100
Text GLabel 9750 3000 2    50   Input ~ 0
BOT-PORT-4
Wire Wire Line
	9750 3000 9700 3000
Wire Wire Line
	850  1600 1000 1600
$Comp
L power:GND #PWR0125
U 1 1 5CC844F9
P 10100 2600
F 0 "#PWR0125" H 10100 2350 50  0001 C CNN
F 1 "GND" H 10105 2427 50  0000 C CNN
F 2 "" H 10100 2600 50  0001 C CNN
F 3 "" H 10100 2600 50  0001 C CNN
	1    10100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2550 10100 2550
Wire Wire Line
	10100 2550 10100 2600
$Comp
L power:GND #PWR0101
U 1 1 5CC94662
P 850 2100
F 0 "#PWR0101" H 850 1850 50  0001 C CNN
F 1 "GND" H 855 1927 50  0000 C CNN
F 2 "" H 850 2100 50  0001 C CNN
F 3 "" H 850 2100 50  0001 C CNN
	1    850  2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5CD96244
P 1600 1100
F 0 "#PWR0112" H 1600 950 50  0001 C CNN
F 1 "+5V" H 1615 1273 50  0000 C CNN
F 2 "" H 1600 1100 50  0001 C CNN
F 3 "" H 1600 1100 50  0001 C CNN
	1    1600 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5CD96C9F
P 2750 2850
F 0 "#PWR0113" H 2750 2700 50  0001 C CNN
F 1 "+5V" H 2900 2900 50  0000 C CNN
F 2 "" H 2750 2850 50  0001 C CNN
F 3 "" H 2750 2850 50  0001 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5CDEC1E8
P 3200 3100
F 0 "C2" V 3050 3100 50  0000 C CNN
F 1 "0.1uF" V 3250 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3200 3100 50  0001 C CNN
F 3 "~" H 3200 3100 50  0001 C CNN
	1    3200 3100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5CDEC281
P 850 1850
F 0 "C1" H 700 1950 50  0000 L CNN
F 1 "0.1uF" H 600 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 850 1850 50  0001 C CNN
F 3 "~" H 850 1850 50  0001 C CNN
	1    850  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3100 3500 3100
Wire Wire Line
	850  1600 850  1750
Wire Wire Line
	850  1950 850  2100
NoConn ~ 2200 2600
NoConn ~ 2200 2700
NoConn ~ 2200 2800
NoConn ~ 2200 2900
NoConn ~ 2200 3000
NoConn ~ 2200 3800
NoConn ~ 2200 3900
NoConn ~ 2200 4000
NoConn ~ 2200 1800
Wire Wire Line
	4450 1600 4450 1500
Connection ~ 4450 1600
Wire Wire Line
	4750 1600 4600 1600
Wire Wire Line
	3550 2250 3300 2250
Wire Wire Line
	10000 1150 10000 1250
$Comp
L power:+BATT #PWR0152
U 1 1 5C91E09E
P 4450 1500
F 0 "#PWR0152" H 4450 1350 50  0001 C CNN
F 1 "+BATT" H 4465 1673 50  0000 C CNN
F 2 "" H 4450 1500 50  0001 C CNN
F 3 "" H 4450 1500 50  0001 C CNN
	1    4450 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0153
U 1 1 5C94EDD5
P 10000 1150
F 0 "#PWR0153" H 10000 1000 50  0001 C CNN
F 1 "+BATT" H 10015 1323 50  0000 C CNN
F 2 "" H 10000 1150 50  0001 C CNN
F 3 "" H 10000 1150 50  0001 C CNN
	1    10000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4400 1600 4300
NoConn ~ 1000 1800
NoConn ~ 1000 1900
$Comp
L Device:Battery_Cell BT1
U 1 1 5C8E9BC5
P 7150 1750
F 0 "BT1" H 7268 1846 50  0000 L CNN
F 1 "Battery_Cell" H 7268 1755 50  0000 L CNN
F 2 "Common-Parts-Library:MPD_BK-912-TR" V 7150 1810 50  0001 C CNN
F 3 "~" V 7150 1810 50  0001 C CNN
	1    7150 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT2
U 1 1 5C8E9CBF
P 10000 1500
F 0 "BT2" H 10118 1596 50  0000 L CNN
F 1 "Battery_Cell" H 10118 1505 50  0000 L CNN
F 2 "Common-Parts-Library:MPD_BK-912-TR" V 10000 1560 50  0001 C CNN
F 3 "~" V 10000 1560 50  0001 C CNN
	1    10000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1850 7150 1950
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5C90E0B0
P 10400 1150
F 0 "#FLG0105" H 10400 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 10400 1324 50  0000 C CNN
F 2 "" H 10400 1150 50  0001 C CNN
F 3 "~" H 10400 1150 50  0001 C CNN
	1    10400 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1150 10400 1250
Wire Wire Line
	10400 1250 10000 1250
Connection ~ 10000 1250
Wire Wire Line
	10000 1250 10000 1300
$Comp
L power:PWR_FLAG #FLG0106
U 1 1 5C91A6DA
P 7550 2100
F 0 "#FLG0106" H 7550 2175 50  0001 C CNN
F 1 "PWR_FLAG" H 7550 2273 50  0000 C CNN
F 2 "" H 7550 2100 50  0001 C CNN
F 3 "~" H 7550 2100 50  0001 C CNN
	1    7550 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 1950 7550 1950
Wire Wire Line
	7550 1950 7550 2100
Connection ~ 7150 1950
Wire Wire Line
	7150 1950 7150 2100
Wire Wire Line
	2200 1600 2300 1600
Wire Wire Line
	2200 1700 2300 1700
$Comp
L Device:Resonator_Small Y1
U 1 1 5C922CDB
P 3100 2250
F 0 "Y1" V 3300 2200 50  0000 C CNN
F 1 "16MHz" V 2900 2200 50  0000 C CNN
F 2 "Crystal:Resonator_SMD_muRata_CSTxExxV-3Pin_3.0x1.1mm" H 3075 2250 50  0001 C CNN
F 3 "~" H 3075 2250 50  0001 C CNN
	1    3100 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 2200 2850 2150
Wire Wire Line
	2850 2150 3000 2150
Wire Wire Line
	3000 2350 2850 2350
Wire Wire Line
	2850 2350 2850 2300
Text GLabel 3500 3100 2    50   Input ~ 0
DTR
Wire Wire Line
	2200 3500 2300 3500
Wire Wire Line
	2200 3600 2300 3600
Text GLabel 3500 2650 2    50   Input ~ 0
RST
Wire Wire Line
	2200 3100 2500 3100
Wire Wire Line
	2500 2650 2500 3100
Wire Wire Line
	2500 2650 3500 2650
Connection ~ 2500 3100
Wire Wire Line
	2500 3100 2750 3100
Wire Wire Line
	2750 3100 3100 3100
Connection ~ 2750 3100
$Comp
L Device:R_Small_US R1
U 1 1 5CA35F3A
P 2750 2950
F 0 "R1" H 2818 2996 50  0000 L CNN
F 1 "10k" H 2818 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2750 2950 50  0001 C CNN
F 3 "~" H 2750 2950 50  0001 C CNN
	1    2750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3050 2750 3100
$Comp
L Device:R_US R6
U 1 1 5CA711D8
P 3100 3700
F 0 "R6" V 3050 3550 50  0000 C CNN
F 1 "470" V 3050 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3140 3690 50  0001 C CNN
F 3 "~" H 3100 3700 50  0001 C CNN
	1    3100 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3700 3500 3700
Wire Wire Line
	2200 3700 2950 3700
Text GLabel 3500 3700 2    50   Input ~ 0
TOP-LED-DIN
Text GLabel 8850 4350 0    50   Input ~ 0
BOT-LED-DIN
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5CAECCBE
P 1700 6900
F 0 "J2" H 1780 6892 50  0000 L CNN
F 1 "TOP-FFC" H 1780 6801 50  0000 L CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-6S-0.5SH_1x06-1MP_P0.50mm_Horizontal" H 1700 6900 50  0001 C CNN
F 3 "~" H 1700 6900 50  0001 C CNN
	1    1700 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 5CAFEDC3
P 1500 6700
F 0 "#PWR0119" H 1500 6550 50  0001 C CNN
F 1 "+5V" H 1515 6873 50  0000 C CNN
F 2 "" H 1500 6700 50  0001 C CNN
F 3 "" H 1500 6700 50  0001 C CNN
	1    1500 6700
	1    0    0    -1  
$EndComp
Text GLabel 1500 6800 0    50   Input ~ 0
TOP-CELL-PLUS
Text GLabel 1500 6900 0    50   Input ~ 0
TOP-LED-DOUT
Text GLabel 1500 7000 0    50   Input ~ 0
PORT-3
Text GLabel 1500 7100 0    50   Input ~ 0
PORT-4
Wire Notes Line
	8100 6400 8100 550 
Text GLabel 9850 1850 0    50   Input ~ 0
BOT-CELL-MINUS
Wire Wire Line
	10000 1850 9850 1850
Wire Wire Line
	10000 1600 10000 1850
Text GLabel 2650 6800 0    50   Input ~ 0
MOSI
Text GLabel 2650 6900 0    50   Input ~ 0
MISO
Text GLabel 2650 7000 0    50   Input ~ 0
SCK
Text GLabel 2650 7100 0    50   Input ~ 0
RST
$Comp
L power:GND #PWR0120
U 1 1 5CB08558
P 2650 7200
F 0 "#PWR0120" H 2650 6950 50  0001 C CNN
F 1 "GND" H 2655 7027 50  0000 C CNN
F 2 "" H 2650 7200 50  0001 C CNN
F 3 "" H 2650 7200 50  0001 C CNN
	1    2650 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5CCA53B8
P 2850 6900
F 0 "J3" H 2930 6892 50  0000 L CNN
F 1 "TC2030_NL" H 2930 6801 50  0000 L CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-NL_2x03_P1.27mm_Vertical" H 2850 6900 50  0001 C CNN
F 3 "~" H 2850 6900 50  0001 C CNN
	1    2850 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5CCB8D67
P 2650 6700
F 0 "#PWR0122" H 2650 6550 50  0001 C CNN
F 1 "+5V" H 2665 6873 50  0000 C CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "" H 2650 6700 50  0001 C CNN
	1    2650 6700
	1    0    0    -1  
$EndComp
Text GLabel 7150 1550 1    50   Input ~ 0
TOP-CELL-PLUS
$Comp
L Regulator_Linear:LP2985-5.0 U3
U 1 1 5CCE2F2F
P 5150 1700
F 0 "U3" H 5150 2042 50  0000 C CNN
F 1 "LP2985-5.0" H 5150 1951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5150 2025 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp2985.pdf" H 5150 1700 50  0001 C CNN
	1    5150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5CD0067E
P 4600 1900
F 0 "C4" H 4692 1946 50  0000 L CNN
F 1 "1uF" H 4692 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4600 1900 50  0001 C CNN
F 3 "~" H 4600 1900 50  0001 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2100 5150 2050
$Comp
L power:GND #PWR0108
U 1 1 5C7EEA4E
P 5150 2100
F 0 "#PWR0108" H 5150 1850 50  0001 C CNN
F 1 "GND" H 5155 1927 50  0000 C CNN
F 2 "" H 5150 2100 50  0001 C CNN
F 3 "" H 5150 2100 50  0001 C CNN
	1    5150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5CD1A3CA
P 5750 2100
F 0 "#PWR0107" H 5750 1850 50  0001 C CNN
F 1 "GND" H 5755 1927 50  0000 C CNN
F 2 "" H 5750 2100 50  0001 C CNN
F 3 "" H 5750 2100 50  0001 C CNN
	1    5750 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5CD1A71F
P 5750 1850
F 0 "C5" H 5842 1896 50  0000 L CNN
F 1 "10nF" H 5842 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5750 1850 50  0001 C CNN
F 3 "~" H 5750 1850 50  0001 C CNN
	1    5750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1950 5750 2100
Wire Wire Line
	5550 1700 5750 1700
Wire Wire Line
	5750 1700 5750 1750
$Comp
L Device:C_Small C7
U 1 1 5CD25D41
P 6200 1850
F 0 "C7" H 6292 1896 50  0000 L CNN
F 1 "2.2uF" H 6292 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6200 1850 50  0001 C CNN
F 3 "~" H 6200 1850 50  0001 C CNN
	1    6200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1600 6200 1750
Wire Wire Line
	5550 1600 6200 1600
$Comp
L power:GND #PWR0109
U 1 1 5CD2E2E7
P 6200 2100
F 0 "#PWR0109" H 6200 1850 50  0001 C CNN
F 1 "GND" H 6205 1927 50  0000 C CNN
F 2 "" H 6200 2100 50  0001 C CNN
F 3 "" H 6200 2100 50  0001 C CNN
	1    6200 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1950 6200 2100
Wire Wire Line
	4600 1800 4600 1600
Connection ~ 4600 1600
Wire Wire Line
	4600 1600 4450 1600
Wire Wire Line
	4600 2000 4600 2050
Wire Wire Line
	4600 2050 5150 2050
Connection ~ 5150 2050
Wire Wire Line
	5150 2050 5150 2000
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U2
U 1 1 5C88450F
P 1600 2800
F 0 "U2" H 1150 4250 50  0000 C CNN
F 1 "ATmega328P-MU" H 1950 1350 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-32-1EP_5x5mm_P0.5mm_EP3.1x3.1mm" H 1600 2800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1600 2800 50  0001 C CNN
	1    1600 2800
	1    0    0    -1  
$EndComp
Connection ~ 6200 1600
Wire Wire Line
	6200 1600 6200 1500
$Comp
L power:+5V #PWR0110
U 1 1 5CD50BE1
P 6200 1500
F 0 "#PWR0110" H 6200 1350 50  0001 C CNN
F 1 "+5V" H 6215 1673 50  0000 C CNN
F 2 "" H 6200 1500 50  0001 C CNN
F 3 "" H 6200 1500 50  0001 C CNN
	1    6200 1500
	1    0    0    -1  
$EndComp
Text Notes 4600 2450 0    50   ~ 0
based on layout example in datasheet
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 5CDBC809
P 9550 5650
F 0 "J6" H 9630 5642 50  0000 L CNN
F 1 "BOT-FFC" H 9630 5551 50  0000 L CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-6S-0.5SH_1x06-1MP_P0.50mm_Horizontal" H 9550 5650 50  0001 C CNN
F 3 "~" H 9550 5650 50  0001 C CNN
	1    9550 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5CDBC80F
P 9350 5450
F 0 "#PWR0111" H 9350 5300 50  0001 C CNN
F 1 "+5V" H 9365 5623 50  0000 C CNN
F 2 "" H 9350 5450 50  0001 C CNN
F 3 "" H 9350 5450 50  0001 C CNN
	1    9350 5450
	1    0    0    -1  
$EndComp
Text GLabel 9350 5550 0    50   Input ~ 0
BOT-CELL-MINUS
Text GLabel 9350 5650 0    50   Input ~ 0
BOT-LED-DIN
Text GLabel 9350 5750 0    50   Input ~ 0
BOT-PORT-3
Text GLabel 9350 5850 0    50   Input ~ 0
BOT-PORT-4
$Comp
L power:GND #PWR0127
U 1 1 5CDF19F7
P 1500 7200
F 0 "#PWR0127" H 1500 6950 50  0001 C CNN
F 1 "GND" H 1505 7027 50  0000 C CNN
F 2 "" H 1500 7200 50  0001 C CNN
F 3 "" H 1500 7200 50  0001 C CNN
	1    1500 7200
	1    0    0    -1  
$EndComp
Text GLabel 6900 5100 2    50   Input ~ 0
TOP-LED-DOUT
Text GLabel 4700 5100 0    50   Input ~ 0
TOP-LED-DIN
Text Notes 4700 5850 0    50   ~ 0
capacitors according to Adafruit NeoPixel Überguide
$Comp
L power:GND #PWR0128
U 1 1 5CE4B576
P 9350 5950
F 0 "#PWR0128" H 9350 5700 50  0001 C CNN
F 1 "GND" H 9355 5777 50  0000 C CNN
F 2 "" H 9350 5950 50  0001 C CNN
F 3 "" H 9350 5950 50  0001 C CNN
	1    9350 5950
	1    0    0    -1  
$EndComp
NoConn ~ 2200 2500
$Comp
L LED:NeoPixel_THT D1
U 1 1 5C9B183E
P 5100 5100
F 0 "D1" H 4900 5350 50  0000 L CNN
F 1 "WS2811" H 4700 4850 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 5150 4800 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 5200 4725 50  0001 L TNN
	1    5100 5100
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D2
U 1 1 5C9C8B3E
P 6150 5100
F 0 "D2" H 5950 5350 50  0000 L CNN
F 1 "WS2811" H 5750 4850 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 6200 4800 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 6250 4725 50  0001 L TNN
	1    6150 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5C9CA2DE
P 5500 4900
F 0 "C3" H 5550 5000 50  0000 L CNN
F 1 "0.1uF" H 5550 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5500 4900 50  0001 C CNN
F 3 "~" H 5500 4900 50  0001 C CNN
	1    5500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5100 5850 5100
Wire Wire Line
	5100 4750 5100 4800
Connection ~ 5100 4750
Wire Wire Line
	5500 4750 5500 4800
Wire Wire Line
	5100 4750 5500 4750
Wire Wire Line
	5100 4700 5100 4750
$Comp
L power:+5V #PWR0105
U 1 1 5C9BF54E
P 5100 4700
F 0 "#PWR0105" H 5100 4550 50  0001 C CNN
F 1 "+5V" H 5115 4873 50  0000 C CNN
F 2 "" H 5100 4700 50  0001 C CNN
F 3 "" H 5100 4700 50  0001 C CNN
	1    5100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4750 6150 4800
Connection ~ 6150 4750
Wire Wire Line
	6150 4750 6550 4750
Wire Wire Line
	6150 4700 6150 4750
$Comp
L power:+5V #PWR0106
U 1 1 5C9F460D
P 6150 4700
F 0 "#PWR0106" H 6150 4550 50  0001 C CNN
F 1 "+5V" H 6165 4873 50  0000 C CNN
F 2 "" H 6150 4700 50  0001 C CNN
F 3 "" H 6150 4700 50  0001 C CNN
	1    6150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5400 6150 5450
Wire Wire Line
	6550 5450 6150 5450
Wire Wire Line
	6900 5100 6450 5100
Wire Wire Line
	4700 5100 4800 5100
$Comp
L power:GND #PWR0114
U 1 1 5C9FBC0A
P 6150 5500
F 0 "#PWR0114" H 6150 5250 50  0001 C CNN
F 1 "GND" H 6155 5327 50  0000 C CNN
F 2 "" H 6150 5500 50  0001 C CNN
F 3 "" H 6150 5500 50  0001 C CNN
	1    6150 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C9BF89F
P 5100 5500
F 0 "#PWR0104" H 5100 5250 50  0001 C CNN
F 1 "GND" H 5105 5327 50  0000 C CNN
F 2 "" H 5100 5500 50  0001 C CNN
F 3 "" H 5100 5500 50  0001 C CNN
	1    5100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5000 6550 5450
Wire Wire Line
	6550 4750 6550 4800
$Comp
L Device:C_Small C6
U 1 1 5C9FAF45
P 6550 4900
F 0 "C6" H 6600 5000 50  0000 L CNN
F 1 "0.1uF" H 6600 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6550 4900 50  0001 C CNN
F 3 "~" H 6550 4900 50  0001 C CNN
	1    6550 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5400 5100 5450
Wire Wire Line
	5500 5450 5100 5450
Wire Wire Line
	5500 5000 5500 5450
Connection ~ 5100 5450
Wire Wire Line
	5100 5450 5100 5500
Wire Wire Line
	6150 5450 6150 5500
Connection ~ 6150 5450
$Comp
L LED:NeoPixel_THT D3
U 1 1 5CE5F270
P 9250 4350
F 0 "D3" H 9050 4600 50  0000 L CNN
F 1 "WS2811" H 8850 4100 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 9300 4050 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 9350 3975 50  0001 L TNN
	1    9250 4350
	1    0    0    -1  
$EndComp
$Comp
L LED:NeoPixel_THT D4
U 1 1 5CE5F276
P 10300 4350
F 0 "D4" H 10100 4600 50  0000 L CNN
F 1 "WS2811" H 9900 4100 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 10350 4050 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 10400 3975 50  0001 L TNN
	1    10300 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5CE5F27C
P 9650 4150
F 0 "C8" H 9700 4250 50  0000 L CNN
F 1 "0.1uF" H 9700 4050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9650 4150 50  0001 C CNN
F 3 "~" H 9650 4150 50  0001 C CNN
	1    9650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4350 10000 4350
Wire Wire Line
	9250 4000 9250 4050
Connection ~ 9250 4000
Wire Wire Line
	9650 4000 9650 4050
Wire Wire Line
	9250 4000 9650 4000
Wire Wire Line
	9250 3950 9250 4000
$Comp
L power:+5V #PWR01
U 1 1 5CE5F288
P 9250 3950
F 0 "#PWR01" H 9250 3800 50  0001 C CNN
F 1 "+5V" H 9265 4123 50  0000 C CNN
F 2 "" H 9250 3950 50  0001 C CNN
F 3 "" H 9250 3950 50  0001 C CNN
	1    9250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4000 10300 4050
Connection ~ 10300 4000
Wire Wire Line
	10300 4000 10700 4000
Wire Wire Line
	10300 3950 10300 4000
$Comp
L power:+5V #PWR03
U 1 1 5CE5F292
P 10300 3950
F 0 "#PWR03" H 10300 3800 50  0001 C CNN
F 1 "+5V" H 10315 4123 50  0000 C CNN
F 2 "" H 10300 3950 50  0001 C CNN
F 3 "" H 10300 3950 50  0001 C CNN
	1    10300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4650 10300 4700
Wire Wire Line
	10700 4700 10300 4700
Wire Wire Line
	8850 4350 8950 4350
$Comp
L power:GND #PWR04
U 1 1 5CE5F29C
P 10300 4750
F 0 "#PWR04" H 10300 4500 50  0001 C CNN
F 1 "GND" H 10305 4577 50  0000 C CNN
F 2 "" H 10300 4750 50  0001 C CNN
F 3 "" H 10300 4750 50  0001 C CNN
	1    10300 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5CE5F2A2
P 9250 4750
F 0 "#PWR02" H 9250 4500 50  0001 C CNN
F 1 "GND" H 9255 4577 50  0000 C CNN
F 2 "" H 9250 4750 50  0001 C CNN
F 3 "" H 9250 4750 50  0001 C CNN
	1    9250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 4250 10700 4700
Wire Wire Line
	10700 4000 10700 4050
$Comp
L Device:C_Small C9
U 1 1 5CE5F2AA
P 10700 4150
F 0 "C9" H 10750 4250 50  0000 L CNN
F 1 "0.1uF" H 10750 4050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10700 4150 50  0001 C CNN
F 3 "~" H 10700 4150 50  0001 C CNN
	1    10700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4650 9250 4700
Wire Wire Line
	9650 4700 9250 4700
Wire Wire Line
	9650 4250 9650 4700
Connection ~ 9250 4700
Wire Wire Line
	9250 4700 9250 4750
Wire Wire Line
	10300 4700 10300 4750
Connection ~ 10300 4700
NoConn ~ 10600 4350
Text Notes 4900 3650 0    50   ~ 0
ADXL335 circuit missing (with connection of +3.3V to AREF)\nExamples: Adafruit 5V ADXL335 breakout board, EVAL-ADXL335Z
Wire Notes Line
	4850 3450 7450 3450
Wire Notes Line
	7450 3450 7450 3700
Wire Notes Line
	7450 3700 4850 3700
Wire Notes Line
	4850 3700 4850 3450
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5CE96281
P 4100 7000
F 0 "J1" H 4180 7042 50  0000 L CNN
F 1 "Mini-USB" H 4180 6951 50  0000 L CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 4100 7000 50  0001 C CNN
F 3 "~" H 4100 7000 50  0001 C CNN
	1    4100 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5CE96F52
P 3900 7200
F 0 "#PWR0115" H 3900 6950 50  0001 C CNN
F 1 "GND" H 3905 7027 50  0000 C CNN
F 2 "" H 3900 7200 50  0001 C CNN
F 3 "" H 3900 7200 50  0001 C CNN
	1    3900 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5CE971EB
P 3900 6800
F 0 "#PWR0116" H 3900 6650 50  0001 C CNN
F 1 "+5V" H 3915 6973 50  0000 C CNN
F 2 "" H 3900 6800 50  0001 C CNN
F 3 "" H 3900 6800 50  0001 C CNN
	1    3900 6800
	1    0    0    -1  
$EndComp
Text GLabel 3900 6900 0    50   Input ~ 0
RXI
Text GLabel 3900 7000 0    50   Input ~ 0
TXO
Text GLabel 3900 7100 0    50   Input ~ 0
DTR
Wire Wire Line
	5950 6650 5950 6700
Wire Wire Line
	5550 6650 5950 6650
Wire Wire Line
	5600 6550 5550 6550
Text GLabel 5600 6550 2    50   Input ~ 0
PORT-1
Text Notes 3750 7650 0    50   ~ 0
FTDI: maybe use\nanother connector?
$EndSCHEMATC
