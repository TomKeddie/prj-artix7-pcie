EESchema Schematic File Version 4
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
L tom-connectors:USB3_A J1
U 1 1 5EE09F6B
P 3200 2950
F 0 "J1" H 3257 3667 50  0000 C CNN
F 1 "USB3_A" H 3257 3576 50  0000 C CNN
F 2 "tom-connectors:USB3_A_Aliexpress" H 3350 3050 50  0001 C CNN
F 3 "~" H 3350 3050 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L tom-connectors:USB3_A J2
U 1 1 5EE0AC35
P 6000 2950
F 0 "J2" H 5570 2914 50  0000 R CNN
F 1 "USB3_A" H 5570 2823 50  0000 R CNN
F 2 "tom-connectors:USB3_A_Aliexpress" H 6150 3050 50  0001 C CNN
F 3 "~" H 6150 3050 50  0001 C CNN
	1    6000 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 2550 5500 2550
$Comp
L tom-passives:C C1
U 1 1 5EE0CC85
P 4200 2750
F 0 "C1" V 3971 2750 40  0000 C CNN
F 1 "C" V 4047 2750 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 4238 2600 30  0001 C CNN
F 3 "" H 4200 2750 60  0000 C CNN
	1    4200 2750
	0    1    1    0   
$EndComp
$Comp
L tom-passives:C C4
U 1 1 5EE0D03C
P 4600 2850
F 0 "C4" V 4371 2850 40  0000 C CNN
F 1 "C" V 4447 2850 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 4638 2700 30  0001 C CNN
F 3 "" H 4600 2850 60  0000 C CNN
	1    4600 2850
	0    1    1    0   
$EndComp
$Comp
L tom-passives:C C2
U 1 1 5EE0D366
P 4200 3050
F 0 "C2" V 3971 3050 40  0000 C CNN
F 1 "C" V 4047 3050 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 4238 2900 30  0001 C CNN
F 3 "" H 4200 3050 60  0000 C CNN
	1    4200 3050
	0    1    1    0   
$EndComp
$Comp
L tom-passives:C C5
U 1 1 5EE0D6E0
P 4600 3150
F 0 "C5" V 4371 3150 40  0000 C CNN
F 1 "C" V 4447 3150 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 4638 3000 30  0001 C CNN
F 3 "" H 4600 3150 60  0000 C CNN
	1    4600 3150
	0    1    1    0   
$EndComp
$Comp
L tom-passives:C C3
U 1 1 5EE0D925
P 4200 3350
F 0 "C3" V 3971 3350 40  0000 C CNN
F 1 "C" V 4047 3350 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 4238 3200 30  0001 C CNN
F 3 "" H 4200 3350 60  0000 C CNN
	1    4200 3350
	0    1    1    0   
$EndComp
$Comp
L tom-passives:C C6
U 1 1 5EE0E499
P 4600 3450
F 0 "C6" V 4371 3450 40  0000 C CNN
F 1 "C" V 4447 3450 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 4638 3300 30  0001 C CNN
F 3 "" H 4600 3450 60  0000 C CNN
	1    4600 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2750 5500 2750
Wire Wire Line
	4000 2750 3700 2750
Wire Wire Line
	3700 2850 4400 2850
Wire Wire Line
	4000 3050 3700 3050
Wire Wire Line
	3700 3150 4400 3150
Wire Wire Line
	4400 3050 5500 3050
Wire Wire Line
	5500 3150 4800 3150
Wire Wire Line
	4000 3350 3700 3350
Wire Wire Line
	3700 3450 4400 3450
Wire Wire Line
	4400 3350 5500 3350
Wire Wire Line
	4800 3450 5500 3450
Wire Wire Line
	4800 2850 5500 2850
Text Label 4900 2550 0    50   ~ 0
VBUS
Text Label 4900 2850 0    50   ~ 0
DA_P
Text Label 4900 2750 0    50   ~ 0
DA_N
Text Label 4900 3150 0    50   ~ 0
RXA_P
Text Label 4900 3050 0    50   ~ 0
RXA_N
Text Label 4900 3450 0    50   ~ 0
TXA_P
Text Label 4900 3350 0    50   ~ 0
TXA_N
Text Label 3750 2850 0    50   ~ 0
DB_P
Text Label 3750 2750 0    50   ~ 0
DB_N
Text Label 3750 3150 0    50   ~ 0
TXB_P
Text Label 3750 3050 0    50   ~ 0
TXB_N
Text Label 3750 3350 0    50   ~ 0
RXB_N
Text Label 3750 3450 0    50   ~ 0
RXB_P
$Comp
L power:GND #PWR0101
U 1 1 5EE146E9
P 3000 3750
F 0 "#PWR0101" H 3000 3500 50  0001 C CNN
F 1 "GND" H 3005 3577 50  0000 C CNN
F 2 "" H 3000 3750 50  0001 C CNN
F 3 "" H 3000 3750 50  0001 C CNN
	1    3000 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EE14F70
P 6200 3750
F 0 "#PWR0102" H 6200 3500 50  0001 C CNN
F 1 "GND" H 6205 3577 50  0000 C CNN
F 2 "" H 6200 3750 50  0001 C CNN
F 3 "" H 6200 3750 50  0001 C CNN
	1    6200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3650 6000 3700
Wire Wire Line
	6000 3700 6100 3700
Wire Wire Line
	6200 3700 6200 3750
Wire Wire Line
	6200 3650 6200 3700
Connection ~ 6200 3700
Wire Wire Line
	6100 3650 6100 3700
Connection ~ 6100 3700
Wire Wire Line
	6100 3700 6200 3700
Wire Wire Line
	3000 3650 3000 3700
Wire Wire Line
	3200 3650 3200 3700
Wire Wire Line
	3200 3700 3100 3700
Connection ~ 3000 3700
Wire Wire Line
	3000 3700 3000 3750
Wire Wire Line
	3100 3650 3100 3700
Connection ~ 3100 3700
Wire Wire Line
	3100 3700 3000 3700
$EndSCHEMATC
