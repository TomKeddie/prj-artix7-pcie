EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
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
U 2 1 5ED1B851
P 2550 4400
F 0 "U1" H 2550 1425 50  0000 C CNN
F 1 "XC7A75T-FGG484" H 2550 1334 50  0000 C CNN
F 2 "artix7-pcie-v2:Xilinx_FGG484" H 2550 4400 50  0001 C CNN
F 3 "" H 2550 4400 50  0000 C CNN
	2    2550 4400
	1    0    0    -1  
$EndComp
Text HLabel 6050 1450 1    50   BiDi ~ 0
IO_L20_16_P
Text HLabel 6150 1450 1    50   BiDi ~ 0
IO_L20_16_N
Wire Wire Line
	5650 1450 5650 4400
Wire Wire Line
	5750 4500 5750 1450
Wire Wire Line
	6050 6200 4550 6200
Wire Wire Line
	6050 1450 6050 6200
Wire Wire Line
	4550 6300 6150 6300
Wire Wire Line
	6150 6300 6150 1450
Wire Wire Line
	6250 6400 4550 6400
Wire Wire Line
	4550 6500 6350 6500
Wire Wire Line
	6850 7000 4550 7000
Wire Wire Line
	4550 7100 6950 7100
Text HLabel 6550 1450 1    50   BiDi ~ 0
IO_L22_16_N
Text HLabel 6450 1450 1    50   BiDi ~ 0
IO_L22_16_P
Wire Wire Line
	6550 1450 6550 6700
Wire Wire Line
	6550 6700 4550 6700
Wire Wire Line
	4550 6600 6450 6600
Wire Wire Line
	6450 6600 6450 1450
Wire Wire Line
	6350 6500 6350 1450
Wire Wire Line
	6250 1450 6250 6400
Text HLabel 6350 1450 1    50   BiDi ~ 0
IO_L21_16_N
Text HLabel 6250 1450 1    50   BiDi ~ 0
IO_L21_16_P
Text HLabel 5950 1450 1    50   BiDi ~ 0
IO_L17_16_N
Text HLabel 5850 1450 1    50   BiDi ~ 0
IO_L17_16_P
Wire Wire Line
	5850 5600 4550 5600
Wire Wire Line
	5850 1450 5850 5600
Wire Wire Line
	5950 5700 5950 1450
Wire Wire Line
	3650 1500 3750 1500
Wire Wire Line
	4150 1500 4150 1350
Connection ~ 4150 1500
Connection ~ 3750 1500
Wire Wire Line
	3750 1500 3850 1500
Connection ~ 3850 1500
Wire Wire Line
	3850 1500 3950 1500
Connection ~ 3950 1500
Wire Wire Line
	3950 1500 4050 1500
Connection ~ 4050 1500
Wire Wire Line
	4050 1500 4150 1500
Wire Wire Line
	4550 5700 5950 5700
NoConn ~ 4550 2300
NoConn ~ 4550 2400
NoConn ~ 4550 2500
NoConn ~ 4550 2600
NoConn ~ 4550 2700
NoConn ~ 4550 2800
NoConn ~ 4550 2900
NoConn ~ 4550 3000
NoConn ~ 4550 3100
NoConn ~ 4550 3200
NoConn ~ 4550 3300
NoConn ~ 4550 3400
NoConn ~ 4550 3500
NoConn ~ 4550 3800
NoConn ~ 4550 4600
NoConn ~ 4550 4700
NoConn ~ 4550 4800
NoConn ~ 4550 4900
NoConn ~ 4550 5000
NoConn ~ 4550 5100
NoConn ~ 4550 5200
NoConn ~ 4550 5300
NoConn ~ 4550 5400
NoConn ~ 4550 5500
NoConn ~ 4550 5800
NoConn ~ 4550 5900
NoConn ~ 4550 6000
NoConn ~ 4550 6100
NoConn ~ 4550 7200
NoConn ~ 550  2300
NoConn ~ 550  2400
NoConn ~ 550  2500
NoConn ~ 550  2600
NoConn ~ 550  2700
NoConn ~ 550  2800
NoConn ~ 550  2900
NoConn ~ 550  3000
NoConn ~ 550  3100
NoConn ~ 550  3200
NoConn ~ 550  3300
NoConn ~ 550  3400
NoConn ~ 550  3500
NoConn ~ 550  3600
NoConn ~ 550  3700
NoConn ~ 550  3800
NoConn ~ 550  3900
NoConn ~ 550  4000
NoConn ~ 550  4100
NoConn ~ 550  4200
NoConn ~ 550  4300
NoConn ~ 550  4400
NoConn ~ 550  4500
NoConn ~ 550  4600
NoConn ~ 550  4700
NoConn ~ 550  4800
NoConn ~ 550  4900
NoConn ~ 550  5000
NoConn ~ 550  5100
NoConn ~ 550  5200
NoConn ~ 550  5300
NoConn ~ 550  5400
NoConn ~ 550  5500
NoConn ~ 550  5600
NoConn ~ 550  5700
NoConn ~ 550  5800
NoConn ~ 550  5900
NoConn ~ 550  6000
NoConn ~ 550  6100
NoConn ~ 550  6200
NoConn ~ 550  6300
NoConn ~ 550  6400
NoConn ~ 550  6500
NoConn ~ 550  6600
NoConn ~ 550  6700
NoConn ~ 550  6800
NoConn ~ 550  6900
NoConn ~ 550  7000
NoConn ~ 550  7100
NoConn ~ 550  7200
Wire Wire Line
	1450 1500 1350 1500
Connection ~ 1050 1500
Wire Wire Line
	1050 1500 950  1500
Connection ~ 1150 1500
Wire Wire Line
	1150 1500 1050 1500
Connection ~ 1250 1500
Wire Wire Line
	1250 1500 1150 1500
Connection ~ 1350 1500
Wire Wire Line
	1350 1500 1250 1500
Text Label 1450 1500 0    50   ~ 0
VCCO_15
$Comp
L tom-mechanical:TestPoint TP5
U 1 1 5F434414
P 4700 3500
F 0 "TP5" H 4758 3572 50  0000 L CNN
F 1 "TestPoint" H 4758 3527 50  0001 L CNN
F 2 "tom-mechanical:TestPoint_Pad_D1.5mm" H 4758 3527 50  0001 L CNN
F 3 "~" H 4900 3500 50  0001 C CNN
	1    4700 3500
	1    0    0    -1  
$EndComp
$Comp
L tom-mechanical:TestPoint TP6
U 1 1 5F435AEE
P 4950 3500
F 0 "TP6" H 5008 3572 50  0000 L CNN
F 1 "TestPoint" H 5008 3527 50  0001 L CNN
F 2 "tom-mechanical:TestPoint_Pad_D1.5mm" H 5008 3527 50  0001 L CNN
F 3 "~" H 5150 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3500 4700 3600
Wire Wire Line
	4700 3600 4550 3600
Wire Wire Line
	4550 3700 4950 3700
Wire Wire Line
	4950 3700 4950 3500
Text HLabel 4150 1350 1    50   Input ~ 0
VCCO_16
NoConn ~ 4550 4200
NoConn ~ 4550 4300
NoConn ~ 4550 3900
$Comp
L power:PWR_FLAG #FLG0111
U 1 1 5EE4B316
P 950 1500
F 0 "#FLG0111" H 950 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 950 1673 50  0000 C CNN
F 2 "" H 950 1500 50  0001 C CNN
F 3 "~" H 950 1500 50  0001 C CNN
	1    950  1500
	1    0    0    -1  
$EndComp
Connection ~ 950  1500
$Comp
L tom-passives:C C?
U 1 1 5E9DF380
P 8450 2000
AR Path="/5E98B37D/5E9DF380" Ref="C?"  Part="1" 
AR Path="/5E48AFE6/5F1FEEB3/5E9DF380" Ref="C?"  Part="1" 
AR Path="/5E5E2B54/5E9DF380" Ref="C?"  Part="1" 
AR Path="/5ED151B3/5E9DF380" Ref="C78"  Part="1" 
F 0 "C78" V 8400 1200 40  0000 L CNN
F 1 "100uF/6.3V/X5R" V 8500 1200 40  0000 L CNN
F 2 "tom-passives:C_1206_3216Metric" H 8488 1850 30  0001 C CNN
F 3 "" H 8450 2000 60  0001 C CNN
	1    8450 2000
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C?
U 1 1 5E9DF386
P 8650 2000
AR Path="/5E98B37D/5E9DF386" Ref="C?"  Part="1" 
AR Path="/5E48AFE6/5F1FEEB3/5E9DF386" Ref="C?"  Part="1" 
AR Path="/5E5E2B54/5E9DF386" Ref="C?"  Part="1" 
AR Path="/5ED151B3/5E9DF386" Ref="C79"  Part="1" 
F 0 "C79" V 8600 1200 40  0000 L CNN
F 1 "4.7uF/6.3V/X5R" V 8700 1200 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 8688 1850 30  0001 C CNN
F 3 "" H 8650 2000 60  0001 C CNN
	1    8650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1800 8450 1800
Connection ~ 8450 1800
Wire Wire Line
	8450 1800 8650 1800
Wire Wire Line
	8200 2200 8450 2200
Connection ~ 8450 2200
Wire Wire Line
	8450 2200 8650 2200
$Comp
L tom-passives:C C?
U 1 1 5E9DF392
P 8850 2000
AR Path="/5E98B37D/5E9DF392" Ref="C?"  Part="1" 
AR Path="/5E48AFE6/5F1FEEB3/5E9DF392" Ref="C?"  Part="1" 
AR Path="/5E5E2B54/5E9DF392" Ref="C?"  Part="1" 
AR Path="/5ED151B3/5E9DF392" Ref="C80"  Part="1" 
F 0 "C80" V 8800 1200 40  0000 L CNN
F 1 "4.7uF/6.3V/X5R" V 8900 1200 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 8888 1850 30  0001 C CNN
F 3 "" H 8850 2000 60  0001 C CNN
	1    8850 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1800 8850 1800
Connection ~ 8650 1800
Wire Wire Line
	8650 2200 8850 2200
Connection ~ 8650 2200
$Comp
L tom-passives:C C?
U 1 1 5E9DF39C
P 9050 2000
AR Path="/5E98B37D/5E9DF39C" Ref="C?"  Part="1" 
AR Path="/5E48AFE6/5F1FEEB3/5E9DF39C" Ref="C?"  Part="1" 
AR Path="/5E5E2B54/5E9DF39C" Ref="C?"  Part="1" 
AR Path="/5ED151B3/5E9DF39C" Ref="C81"  Part="1" 
F 0 "C81" V 9000 1200 40  0000 L CNN
F 1 "0.47uF/6.3V/X5R" V 9100 1200 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 9088 1850 30  0001 C CNN
F 3 "" H 9050 2000 60  0001 C CNN
	1    9050 2000
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C?
U 1 1 5E9DF3A2
P 9250 2000
AR Path="/5E98B37D/5E9DF3A2" Ref="C?"  Part="1" 
AR Path="/5E48AFE6/5F1FEEB3/5E9DF3A2" Ref="C?"  Part="1" 
AR Path="/5E5E2B54/5E9DF3A2" Ref="C?"  Part="1" 
AR Path="/5ED151B3/5E9DF3A2" Ref="C82"  Part="1" 
F 0 "C82" V 9200 1200 40  0000 L CNN
F 1 "0.47uF/6.3V/X5R" V 9300 1200 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 9288 1850 30  0001 C CNN
F 3 "" H 9250 2000 60  0001 C CNN
	1    9250 2000
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C?
U 1 1 5E9DF3A8
P 9450 2000
AR Path="/5E98B37D/5E9DF3A8" Ref="C?"  Part="1" 
AR Path="/5E48AFE6/5F1FEEB3/5E9DF3A8" Ref="C?"  Part="1" 
AR Path="/5E5E2B54/5E9DF3A8" Ref="C?"  Part="1" 
AR Path="/5ED151B3/5E9DF3A8" Ref="C83"  Part="1" 
F 0 "C83" V 9400 1200 40  0000 L CNN
F 1 "0.47uF/6.3V/X5R" V 9500 1200 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 9488 1850 30  0001 C CNN
F 3 "" H 9450 2000 60  0001 C CNN
	1    9450 2000
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C?
U 1 1 5E9DF3AE
P 9650 2000
AR Path="/5E98B37D/5E9DF3AE" Ref="C?"  Part="1" 
AR Path="/5E48AFE6/5F1FEEB3/5E9DF3AE" Ref="C?"  Part="1" 
AR Path="/5E5E2B54/5E9DF3AE" Ref="C?"  Part="1" 
AR Path="/5ED151B3/5E9DF3AE" Ref="C84"  Part="1" 
F 0 "C84" V 9600 1200 40  0000 L CNN
F 1 "0.47uF/6.3V/X5R" V 9700 1200 40  0000 L CNN
F 2 "tom-passives:C_0402_1005Metric" H 9688 1850 30  0001 C CNN
F 3 "" H 9650 2000 60  0001 C CNN
	1    9650 2000
	1    0    0    -1  
$EndComp
Connection ~ 9050 1800
Wire Wire Line
	9050 1800 9250 1800
Connection ~ 9250 1800
Wire Wire Line
	9250 1800 9450 1800
Connection ~ 9450 1800
Wire Wire Line
	9450 1800 9650 1800
Connection ~ 9050 2200
Wire Wire Line
	9050 2200 9250 2200
Connection ~ 9250 2200
Wire Wire Line
	9250 2200 9450 2200
Connection ~ 9450 2200
Wire Wire Line
	9450 2200 9650 2200
Connection ~ 8850 1800
Connection ~ 8850 2200
Wire Wire Line
	8850 1800 9050 1800
Wire Wire Line
	8850 2200 9050 2200
$Comp
L power:GND #PWR?
U 1 1 5E9DF3C4
P 8200 2200
AR Path="/5E5E2B54/5E9DF3C4" Ref="#PWR?"  Part="1" 
AR Path="/5ED151B3/5E9DF3C4" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 8200 1950 50  0001 C CNN
F 1 "GND" H 8205 2027 50  0000 C CNN
F 2 "" H 8200 2200 50  0001 C CNN
F 3 "" H 8200 2200 50  0001 C CNN
	1    8200 2200
	1    0    0    -1  
$EndComp
Text Label 8200 1800 2    50   ~ 0
VCCO_16
Text Label 3650 1500 2    50   ~ 0
VCCO_16
Wire Wire Line
	6950 7100 6950 1450
Wire Wire Line
	6850 1450 6850 7000
Text HLabel 6950 1450 1    50   BiDi ~ 0
IO_L24_16_N
Text HLabel 6850 1450 1    50   BiDi ~ 0
IO_L24_16_P
Text HLabel 6750 1450 1    50   BiDi ~ 0
IO_L23_16_N
Text HLabel 6650 1450 1    50   BiDi ~ 0
IO_L23_16_P
Wire Wire Line
	4550 6800 6650 6800
Wire Wire Line
	4550 6900 6750 6900
Wire Wire Line
	6650 6800 6650 1450
Wire Wire Line
	6750 1450 6750 6900
NoConn ~ 4550 4000
NoConn ~ 4550 4100
Wire Wire Line
	4550 4500 5750 4500
Wire Wire Line
	5650 4400 4550 4400
Text HLabel 5750 1450 1    50   BiDi ~ 0
IO_L11_16_N
Text HLabel 5650 1450 1    50   BiDi ~ 0
IO_L11_16_P
$EndSCHEMATC
