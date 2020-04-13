EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L artix7-pcie-v2:XC7A75T-FGG484 U1
U 4 1 5E98C0C1
P 8750 2900
F 0 "U1" H 10030 2946 50  0000 L CNN
F 1 "XC7A75T-FGG484" H 10030 2855 50  0000 L CNN
F 2 "artix7-pcie-v2:Xilinx_FGG484" H 8750 2900 50  0001 C CNN
F 3 "" H 8750 2900 50  0000 C CNN
	4    8750 2900
	1    0    0    -1  
$EndComp
$Comp
L tom-connectors:USB3_A J4
U 1 1 5E99DEF0
P 2500 2250
F 0 "J4" H 2557 2967 50  0000 C CNN
F 1 "USB3_A" H 2557 2876 50  0000 C CNN
F 2 "tom-connectors:USB3_A_Aliexpress" H 2650 2350 50  0001 C CNN
F 3 "~" H 2650 2350 50  0001 C CNN
	1    2500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2450 3900 2450
Wire Wire Line
	3900 2450 3900 2700
Wire Wire Line
	3900 2700 7250 2700
Text Label 3100 2350 0    50   ~ 0
S0_RX_N
Text Label 3100 2450 0    50   ~ 0
S0_RX_P
$Comp
L tom-passives:C C26
U 1 1 5E9C81AB
P 5700 1800
F 0 "C26" V 5471 1800 40  0000 C CNN
F 1 "0.1uF/6.3V/X5R/PCIE" V 5547 1800 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 5738 1650 30  0001 C CNN
F 3 "" H 5700 1800 60  0001 C CNN
	1    5700 1800
	0    1    1    0   
$EndComp
$Comp
L tom-passives:C C28
U 1 1 5E9CA77F
P 6200 1900
F 0 "C28" V 5971 1900 40  0000 C CNN
F 1 "0.1uF/6.3V/X5R/PCIE" V 6047 1900 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 6238 1750 30  0001 C CNN
F 3 "" H 6200 1900 60  0001 C CNN
	1    6200 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 1800 5900 1800
Wire Wire Line
	3500 2750 3000 2750
Wire Wire Line
	3600 1900 3600 2650
Wire Wire Line
	3600 2650 3000 2650
Wire Wire Line
	3600 1900 6000 1900
Text Label 3100 2650 0    50   ~ 0
S0_TX_N
Text Label 3100 2750 0    50   ~ 0
S0_TX_P
$Comp
L power:GND #PWR060
U 1 1 5EACC3BA
P 2500 2950
F 0 "#PWR060" H 2500 2700 50  0001 C CNN
F 1 "GND" H 2505 2777 50  0000 C CNN
F 2 "" H 2500 2950 50  0001 C CNN
F 3 "" H 2500 2950 50  0001 C CNN
	1    2500 2950
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R26
U 1 1 5EACE9C5
P 2050 3050
F 0 "R26" V 1865 3050 40  0000 C CNN
F 1 "0R" V 1941 3050 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" V 1980 3050 30  0001 C CNN
F 3 "" H 2050 3050 30  0001 C CNN
	1    2050 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2950 2300 3050
$Comp
L power:GND #PWR058
U 1 1 5EACF99A
P 1800 3050
F 0 "#PWR058" H 1800 2800 50  0001 C CNN
F 1 "GND" H 1805 2877 50  0000 C CNN
F 2 "" H 1800 3050 50  0001 C CNN
F 3 "" H 1800 3050 50  0001 C CNN
	1    1800 3050
	1    0    0    -1  
$EndComp
Text HLabel 1700 5950 0    50   Output ~ 0
S2_PERST
Wire Wire Line
	2300 5200 2300 5350
$Comp
L power:GND #PWR059
U 1 1 5EAD2F17
P 1800 5350
F 0 "#PWR059" H 1800 5100 50  0001 C CNN
F 1 "GND" H 1805 5177 50  0000 C CNN
F 2 "" H 1800 5350 50  0001 C CNN
F 3 "" H 1800 5350 50  0001 C CNN
	1    1800 5350
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R27
U 1 1 5EAD1FF6
P 2050 5350
F 0 "R27" V 1865 5350 40  0000 C CNN
F 1 "0R" V 1941 5350 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" V 1980 5350 30  0001 C CNN
F 3 "" H 2050 5350 30  0001 C CNN
	1    2050 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR061
U 1 1 5EACBD31
P 3000 5950
F 0 "#PWR061" H 3000 5700 50  0001 C CNN
F 1 "GND" H 3005 5777 50  0000 C CNN
F 2 "" H 3000 5950 50  0001 C CNN
F 3 "" H 3000 5950 50  0001 C CNN
	1    3000 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4300 3900 4300
Wire Wire Line
	3000 4400 4000 4400
Text Label 3100 4700 0    50   ~ 0
S2_RX_P
Text Label 3100 4600 0    50   ~ 0
S2_RX_N
Text Label 3100 4400 0    50   ~ 0
MGTREFCLK1_C_P
Text Label 3100 4300 0    50   ~ 0
MGTREFCLK1_C_N
Wire Wire Line
	3900 3900 5450 3900
Wire Wire Line
	3900 4300 3900 3900
Wire Wire Line
	3000 4600 4300 4600
Wire Wire Line
	7250 3800 5350 3800
Wire Wire Line
	4000 3800 4000 4400
Text Label 3100 4900 0    50   ~ 0
S2_TX_N
Text Label 3100 5000 0    50   ~ 0
S2_TX_P
Wire Wire Line
	3000 1850 3000 1350
Wire Wire Line
	3000 1350 1900 1350
Text HLabel 1900 3700 0    50   Output ~ 0
S2_WAKE
Wire Wire Line
	3000 4100 3000 3700
Wire Wire Line
	3000 3700 1900 3700
$Comp
L artix7-pcie-v2:XC7A75T-FGG484 U1
U 5 1 5EB5D4D9
P 6550 5700
F 0 "U1" H 6550 6367 50  0000 C CNN
F 1 "XC7A75T-FGG484" H 6550 6276 50  0000 C CNN
F 2 "artix7-pcie-v2:Xilinx_FGG484" H 6550 5700 50  0001 C CNN
F 3 "" H 6550 5700 50  0000 C CNN
	5    6550 5700
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R28
U 1 1 5EB72E9F
P 8350 6000
F 0 "R28" V 8165 6000 40  0000 C CNN
F 1 "100R/1%" V 8241 6000 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" V 8280 6000 30  0001 C CNN
F 3 "" H 8350 6000 30  0001 C CNN
	1    8350 6000
	0    -1   1    0   
$EndComp
Wire Wire Line
	8050 5300 8600 5300
Connection ~ 8600 5300
Wire Wire Line
	8600 5300 8600 5400
Wire Wire Line
	8050 5400 8600 5400
Connection ~ 8600 5400
Wire Wire Line
	8050 5500 8600 5500
Wire Wire Line
	8600 5400 8600 5500
Connection ~ 8600 5500
Wire Wire Line
	8600 5500 8600 5600
Wire Wire Line
	8050 5600 8600 5600
Connection ~ 8600 5600
Wire Wire Line
	8600 5600 8600 5700
Wire Wire Line
	8050 5700 8600 5700
Connection ~ 8600 5700
Wire Wire Line
	8600 5700 8600 5800
Wire Wire Line
	8050 5800 8600 5800
$Comp
L tom-passives:C C30
U 1 1 5EB8CA7B
P 8900 5500
F 0 "C30" V 8850 4750 40  0000 L CNN
F 1 "0.1uF/6.3V/X5R" V 8900 4750 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 8938 5350 30  0001 C CNN
F 3 "" H 8900 5500 60  0001 C CNN
	1    8900 5500
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C33
U 1 1 5EB8DBCE
P 9300 5500
F 0 "C33" V 9250 4750 40  0000 L CNN
F 1 "0.1uF/6.3V/X5R" V 9300 4750 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 9338 5350 30  0001 C CNN
F 3 "" H 9300 5500 60  0001 C CNN
	1    9300 5500
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C32
U 1 1 5EB9090F
P 9100 5500
F 0 "C32" V 9050 4750 40  0000 L CNN
F 1 "0.1uF/6.3V/X5R" V 9100 4750 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 9138 5350 30  0001 C CNN
F 3 "" H 9100 5500 60  0001 C CNN
	1    9100 5500
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C34
U 1 1 5EB91E0B
P 9600 5500
F 0 "C34" H 9715 5538 40  0000 L CNN
F 1 "4.7uF/6.3V/X5R" H 9715 5462 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 9638 5350 30  0001 C CNN
F 3 "" H 9600 5500 60  0001 C CNN
	1    9600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5300 8900 5300
Connection ~ 8900 5300
Connection ~ 9100 5300
Wire Wire Line
	9100 5300 9300 5300
Connection ~ 9300 5300
Wire Wire Line
	9300 5300 9600 5300
Connection ~ 9100 5700
Wire Wire Line
	9100 5700 9300 5700
Connection ~ 9300 5700
Wire Wire Line
	9300 5700 9600 5700
$Comp
L power:GND #PWR065
U 1 1 5EBD44D5
P 9600 5700
F 0 "#PWR065" H 9600 5450 50  0001 C CNN
F 1 "GND" H 9605 5527 50  0000 C CNN
F 2 "" H 9600 5700 50  0001 C CNN
F 3 "" H 9600 5700 50  0001 C CNN
	1    9600 5700
	1    0    0    -1  
$EndComp
Connection ~ 9600 5700
Wire Wire Line
	5050 5700 5050 5600
Connection ~ 5050 5300
Connection ~ 5050 5400
Wire Wire Line
	5050 5400 5050 5300
Connection ~ 5050 5500
Wire Wire Line
	5050 5500 5050 5400
Connection ~ 5050 5600
Wire Wire Line
	5050 5600 5050 5500
$Comp
L tom-passives:C C21
U 1 1 5EC02E32
P 4350 5500
F 0 "C21" V 4300 4750 40  0000 L CNN
F 1 "0.1uF/6.3V/X5R" V 4350 4750 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 4388 5350 30  0001 C CNN
F 3 "" H 4350 5500 60  0001 C CNN
	1    4350 5500
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C20
U 1 1 5EC08F78
P 4050 5500
F 0 "C20" V 4000 4750 40  0000 L CNN
F 1 "0.1uF/6.3V/X5R" V 4050 4750 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 4088 5350 30  0001 C CNN
F 3 "" H 4050 5500 60  0001 C CNN
	1    4050 5500
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C19
U 1 1 5EC0A4B0
P 3300 5500
F 0 "C19" H 3415 5538 40  0000 L CNN
F 1 "4.7uF/6.3V/X5R" H 3415 5462 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 3338 5350 30  0001 C CNN
F 3 "" H 3300 5500 60  0001 C CNN
	1    3300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5300 4050 5300
Connection ~ 4050 5300
Wire Wire Line
	4050 5300 4350 5300
Connection ~ 4350 5300
Wire Wire Line
	4350 5300 5050 5300
Wire Wire Line
	4350 5700 4050 5700
Connection ~ 4050 5700
Wire Wire Line
	4050 5700 3300 5700
$Comp
L power:GND #PWR062
U 1 1 5EC114C2
P 3300 5700
F 0 "#PWR062" H 3300 5450 50  0001 C CNN
F 1 "GND" H 3305 5527 50  0000 C CNN
F 2 "" H 3300 5700 50  0001 C CNN
F 3 "" H 3300 5700 50  0001 C CNN
	1    3300 5700
	1    0    0    -1  
$EndComp
Connection ~ 3300 5700
Wire Wire Line
	7250 1900 6400 1900
Wire Wire Line
	5500 1800 3500 1800
Wire Wire Line
	3500 1800 3500 2750
$Comp
L tom-passives:C C22
U 1 1 5E746FE8
P 4700 2200
F 0 "C22" V 4471 2200 40  0000 C CNN
F 1 "0.1uF/6.3V/X5R/PCIE" V 4547 2200 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 4738 2050 30  0001 C CNN
F 3 "" H 4700 2200 60  0001 C CNN
	1    4700 2200
	0    1    1    0   
$EndComp
$Comp
L tom-passives:C C24
U 1 1 5E7489FC
P 5200 2300
F 0 "C24" V 4971 2300 40  0000 C CNN
F 1 "0.1uF/6.3V/X5R/PCIE" V 5047 2300 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 5238 2150 30  0001 C CNN
F 3 "" H 5200 2300 60  0001 C CNN
	1    5200 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2800 4000 2350
Wire Wire Line
	4000 2350 3000 2350
Wire Wire Line
	4000 2800 7250 2800
Wire Wire Line
	4500 2200 4100 2200
Wire Wire Line
	4100 5000 3000 5000
Wire Wire Line
	3000 4900 4200 4900
Wire Wire Line
	4200 2300 5000 2300
Wire Wire Line
	2400 2950 2500 2950
Connection ~ 2500 2950
Text HLabel 1900 1150 0    50   BiDi ~ 0
S0_USB2_N
Text HLabel 1900 1050 0    50   BiDi ~ 0
S0_USB2_P
Wire Wire Line
	1900 1150 3100 1150
Wire Wire Line
	3100 1150 3100 2050
Wire Wire Line
	3100 2050 3000 2050
Wire Wire Line
	3000 2150 3200 2150
Wire Wire Line
	3200 2150 3200 1050
Wire Wire Line
	3200 1050 1900 1050
Text Label 6750 1900 0    50   ~ 0
S0_TX_C_N
Text Label 6750 1800 0    50   ~ 0
S0_TX_C_P
Text Label 6750 2200 0    50   ~ 0
S2_TX_C_P
Text Label 6750 2300 0    50   ~ 0
S2_TX_C_N
Text HLabel 1900 3500 0    50   Input ~ 0
MGT_REFCLK0_N
Wire Wire Line
	7250 3700 3100 3700
Wire Wire Line
	3100 3700 3100 3500
Wire Wire Line
	7250 3600 3250 3600
Wire Wire Line
	3250 3600 3250 3350
Text HLabel 1900 3350 0    50   Input ~ 0
MGT_REFCLK0_P
Text HLabel 10800 5300 2    50   Input ~ 0
MGTAVTT
Wire Wire Line
	10800 5300 9600 5300
Connection ~ 9600 5300
Text HLabel 10800 4950 2    50   Input ~ 0
MGTAVCC
Wire Wire Line
	10800 4950 5050 4950
Wire Wire Line
	5050 4950 5050 5300
Wire Wire Line
	8600 5800 8600 6000
Connection ~ 8600 5800
Wire Wire Line
	8100 6000 8050 6000
$Comp
L power:PWR_FLAG #FLG0112
U 1 1 5EE50010
P 8050 6150
F 0 "#FLG0112" H 8050 6225 50  0001 C CNN
F 1 "PWR_FLAG" H 8050 6323 50  0000 C CNN
F 2 "" H 8050 6150 50  0001 C CNN
F 3 "~" H 8050 6150 50  0001 C CNN
	1    8050 6150
	-1   0    0    1   
$EndComp
Connection ~ 8050 6000
Text HLabel 1900 1350 0    50   BiDi ~ 0
S0_VBUS
$Comp
L tom-connectors:USB3_A_AS_PCIE J5
U 1 1 5EEEB708
P 2500 4500
F 0 "J5" H 2557 5217 50  0000 C CNN
F 1 "USB3_A_AS_PCIE" H 2557 5126 50  0000 C CNN
F 2 "tom-connectors:USB3_A_Aliexpress" H 2650 4600 50  0001 C CNN
F 3 "~" H 2650 4600 50  0001 C CNN
	1    2500 4500
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R44
U 1 1 5F029E9A
P 2750 5950
F 0 "R44" V 2565 5950 40  0000 C CNN
F 1 "DNP" V 2641 5950 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" V 2680 5950 30  0001 C CNN
F 3 "" H 2750 5950 30  0001 C CNN
	1    2750 5950
	0    1    1    0   
$EndComp
$Comp
L tom-passives:R R43
U 1 1 5F02A201
P 2150 5950
F 0 "R43" V 1965 5950 40  0000 C CNN
F 1 "0R" V 2041 5950 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" V 2080 5950 30  0001 C CNN
F 3 "" H 2150 5950 30  0001 C CNN
	1    2150 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 5200 2500 5950
Wire Wire Line
	2500 5950 2400 5950
Connection ~ 2500 5950
Wire Wire Line
	1700 5950 1900 5950
$Comp
L tom-passives:R R42
U 1 1 5F0598E8
P 2150 5650
F 0 "R42" V 1965 5650 40  0000 C CNN
F 1 "DNP" V 2041 5650 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" V 2080 5650 30  0001 C CNN
F 3 "" H 2150 5650 30  0001 C CNN
	1    2150 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 5650 1900 5950
Connection ~ 1900 5950
Wire Wire Line
	2400 5200 2400 5650
$Comp
L tom-passives:R R45
U 1 1 5F07398D
P 2850 5650
F 0 "R45" V 2665 5650 40  0000 C CNN
F 1 "0R" V 2741 5650 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" V 2780 5650 30  0001 C CNN
F 3 "" H 2850 5650 30  0001 C CNN
	1    2850 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5F073E12
P 3100 5650
F 0 "#PWR035" H 3100 5400 50  0001 C CNN
F 1 "GND" H 3105 5477 50  0000 C CNN
F 2 "" H 3100 5650 50  0001 C CNN
F 3 "" H 3100 5650 50  0001 C CNN
	1    3100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5650 2400 5650
Connection ~ 2400 5650
$Comp
L power:PWR_FLAG #FLG0114
U 1 1 5F118316
P 2600 5650
F 0 "#FLG0114" H 2600 5725 50  0001 C CNN
F 1 "PWR_FLAG" V 2600 5950 50  0000 C CNN
F 2 "" H 2600 5650 50  0001 C CNN
F 3 "~" H 2600 5650 50  0001 C CNN
	1    2600 5650
	1    0    0    -1  
$EndComp
Connection ~ 2600 5650
$Comp
L power:PWR_FLAG #FLG0115
U 1 1 5F11842A
P 2400 5950
F 0 "#FLG0115" H 2400 6025 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 6123 50  0000 C CNN
F 2 "" H 2400 5950 50  0001 C CNN
F 3 "~" H 2400 5950 50  0001 C CNN
	1    2400 5950
	-1   0    0    1   
$EndComp
Connection ~ 2400 5950
NoConn ~ 7250 2000
NoConn ~ 7250 2100
Wire Wire Line
	4300 3200 7250 3200
Wire Wire Line
	7250 3100 4400 3100
Wire Wire Line
	7250 2300 5400 2300
Wire Wire Line
	4900 2200 7250 2200
Wire Wire Line
	7250 2900 7150 2900
Wire Wire Line
	7150 2900 7150 3000
$Comp
L power:GND #PWR0147
U 1 1 5EDD8F7D
P 7150 4000
F 0 "#PWR0147" H 7150 3750 50  0001 C CNN
F 1 "GND" H 7155 3827 50  0000 C CNN
F 2 "" H 7150 4000 50  0001 C CNN
F 3 "" H 7150 4000 50  0001 C CNN
	1    7150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3000 7150 3000
Connection ~ 7150 3000
Wire Wire Line
	8050 6000 8050 6150
Text Label 8050 6150 0    50   ~ 0
MGTRREF
Wire Wire Line
	8900 5300 9100 5300
Wire Wire Line
	8900 5700 9100 5700
Text Label 2500 5600 1    50   ~ 0
S2_GND
Text Label 2400 5600 1    50   ~ 0
S2_DRAIN
Wire Wire Line
	3100 3500 1900 3500
Wire Wire Line
	3250 3350 1900 3350
$Comp
L tom-passives:C C48
U 1 1 5EDACCD3
P 5650 3900
F 0 "C48" V 5421 3900 40  0000 C CNN
F 1 "0.1uF/6.3V/X5R/PCIE" V 5497 3900 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 5688 3750 30  0001 C CNN
F 3 "" H 5650 3900 60  0001 C CNN
	1    5650 3900
	0    1    -1   0   
$EndComp
Wire Wire Line
	5850 3900 7250 3900
$Comp
L tom-passives:C C47
U 1 1 5EDAF2BE
P 5150 3800
F 0 "C47" V 4921 3800 40  0000 C CNN
F 1 "0.1uF/6.3V/X5R/PCIE" V 4997 3800 40  0000 C CNN
F 2 "tom-passives:C_0402_1005Metric" H 5188 3650 30  0001 C CNN
F 3 "" H 5150 3800 60  0001 C CNN
	1    5150 3800
	0    1    -1   0   
$EndComp
Wire Wire Line
	4950 3800 4000 3800
Text Label 6250 3900 0    50   ~ 0
MGTREFCLK1_N
Text Label 6250 3800 0    50   ~ 0
MGTREFCLK1_P
Wire Wire Line
	3000 4700 4400 4700
Wire Wire Line
	4100 2200 4100 5000
Wire Wire Line
	4200 4900 4200 2300
Wire Wire Line
	7150 3000 7150 3300
Wire Wire Line
	4300 3200 4300 4600
Wire Wire Line
	4400 3100 4400 4700
Wire Wire Line
	7250 3300 7150 3300
Connection ~ 7150 3300
Wire Wire Line
	7150 3300 7150 3400
Wire Wire Line
	7250 3400 7150 3400
Connection ~ 7150 3400
Wire Wire Line
	7150 3400 7150 4000
NoConn ~ 7250 2400
NoConn ~ 7250 2500
$EndSCHEMATC
