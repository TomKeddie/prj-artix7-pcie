EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1450 6700 1200 900 
U 5F1FEEB3
F0 "artix7-pcie-v2-power-fpga" 50
F1 "artix7-pcie-v2-power-fpga.sch" 50
F2 "VCCAUX" I L 1450 6900 50 
F3 "VCCINT" I L 1450 7000 50 
F4 "VCCBRAM" I L 1450 7100 50 
$EndSheet
Wire Wire Line
	1450 7100 900  7100
$Comp
L power:+1V0 #PWR0111
U 1 1 5F257BCA
P 1050 7000
F 0 "#PWR0111" H 1050 6850 50  0001 C CNN
F 1 "+1V0" H 1065 7173 50  0000 C CNN
F 2 "" H 1050 7000 50  0001 C CNN
F 3 "" H 1050 7000 50  0001 C CNN
	1    1050 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7000 1050 7000
$Comp
L power:+1V8 #PWR0112
U 1 1 5F25D326
P 1200 6900
F 0 "#PWR0112" H 1200 6750 50  0001 C CNN
F 1 "+1V8" H 1215 7073 50  0000 C CNN
F 2 "" H 1200 6900 50  0001 C CNN
F 3 "" H 1200 6900 50  0001 C CNN
	1    1200 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6900 1450 6900
Text HLabel 1050 5700 0    50   Output ~ 0
VCCO_14
Wire Wire Line
	1050 5700 1600 5700
Text HLabel 1050 5800 0    50   Output ~ 0
VCCO_16
Wire Wire Line
	1050 5800 2500 5800
Text Label 2500 5800 0    50   ~ 0
VCCO_16
Text HLabel 1050 6450 0    50   Output ~ 0
MGTAVCC
Text HLabel 1050 6550 0    50   Output ~ 0
MGTAVTT
Wire Wire Line
	1050 6550 1250 6550
Wire Wire Line
	1050 6450 1250 6450
Text Label 1250 6550 0    50   ~ 0
MGTAVTT
$Comp
L power:+1V0 #PWR0135
U 1 1 5E9774D6
P 1250 6450
F 0 "#PWR0135" H 1250 6300 50  0001 C CNN
F 1 "+1V0" H 1265 6623 50  0000 C CNN
F 2 "" H 1250 6450 50  0001 C CNN
F 3 "" H 1250 6450 50  0001 C CNN
	1    1250 6450
	1    0    0    -1  
$EndComp
Text HLabel 1050 6000 0    50   Output ~ 0
VCCO_34
Text HLabel 1050 6200 0    50   Output ~ 0
VCCO_35
Wire Wire Line
	1050 6000 1600 6000
Text Label 2500 6000 0    50   ~ 0
VCCO_34_35
Text Label 2500 6200 0    50   ~ 0
VCCO_34_35
Wire Wire Line
	1050 6200 1600 6200
Wire Wire Line
	1600 6200 1600 6100
Wire Wire Line
	1600 6100 1050 6100
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5E849BDC
P 1050 6100
F 0 "#FLG0104" H 1050 6175 50  0001 C CNN
F 1 "PWR_FLAG" V 1050 6227 50  0000 L CNN
F 2 "" H 1050 6100 50  0001 C CNN
F 3 "~" H 1050 6100 50  0001 C CNN
	1    1050 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 6000 1600 5900
Wire Wire Line
	1600 5900 1050 5900
Connection ~ 1600 6000
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5E851219
P 1050 5900
F 0 "#FLG0105" H 1050 5975 50  0001 C CNN
F 1 "PWR_FLAG" V 1050 6027 50  0000 L CNN
F 2 "" H 1050 5900 50  0001 C CNN
F 3 "~" H 1050 5900 50  0001 C CNN
	1    1050 5900
	0    -1   -1   0   
$EndComp
$Comp
L artix7-pcie-v2:TLV62569PDDCR U5
U 1 1 5F507BE8
P 2500 1200
F 0 "U5" H 2500 1870 50  0000 C CNN
F 1 "TLV62569PDDCR" H 2500 1779 50  0000 C CNN
F 2 "artix7-pcie-v2:SOT95P280X110-6N" H 2500 1200 50  0001 L BNN
F 3 "" H 2500 1200 50  0001 C CNN
F 4 "DNP" H 2500 1200 50  0001 C CNN "LCSC"
	1    2500 1200
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C9
U 1 1 5F5123EB
P 4000 1050
F 0 "C9" H 3886 1012 40  0000 R CNN
F 1 "47uF/10V/X7R" H 3886 1088 40  0000 R CNN
F 2 "tom-passives:C_1206_3216Metric" H 4038 900 30  0001 C CNN
F 3 "" H 4000 1050 60  0001 C CNN
F 4 "" H 4000 1050 50  0001 C CNN "MFGPN"
F 5 "" H 4000 1050 50  0001 C CNN "Vendor"
F 6 "C96123" H 4000 1050 50  0001 C CNN "LCSC"
	1    4000 1050
	-1   0    0    1   
$EndComp
$Comp
L tom-passives:INDUCTOR_SMALL L2
U 1 1 5F514351
P 3450 850
F 0 "L2" H 3450 1065 50  0000 C CNN
F 1 "2.2uH/4.5A" H 3450 974 50  0000 C CNN
F 2 "tom-passives:L_MWSA0518S" H 3450 981 60  0001 C CNN
F 3 "" H 3450 850 60  0001 C CNN
F 4 "C408345" H 3450 850 50  0001 C CNN "LCSC"
F 5 "MWSA0518S-2R2MT" H 3450 850 50  0001 C CNN "MPN"
	1    3450 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 850  1700 850 
Wire Wire Line
	1700 850  1700 1200
Wire Wire Line
	1700 1200 1800 1200
Connection ~ 1700 850 
Wire Wire Line
	1700 850  1500 850 
$Comp
L power:VCC #PWR0101
U 1 1 5F51C625
P 1100 850
F 0 "#PWR0101" H 1100 700 50  0001 C CNN
F 1 "VCC" H 1117 1023 50  0000 C CNN
F 2 "" H 1100 850 50  0001 C CNN
F 3 "" H 1100 850 50  0001 C CNN
	1    1100 850 
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R14
U 1 1 5F52048D
P 3200 1800
F 0 "R14" H 3271 1838 40  0000 L CNN
F 1 "100k/1%" H 3271 1762 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 3130 1800 30  0001 C CNN
F 3 "" H 3200 1800 30  0001 C CNN
F 4 "C25741" H 3200 1800 50  0001 C CNN "LCSC"
	1    3200 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F52510F
P 2500 1900
F 0 "#PWR0102" H 2500 1650 50  0001 C CNN
F 1 "GND" H 2505 1727 50  0000 C CNN
F 2 "" H 2500 1900 50  0001 C CNN
F 3 "" H 2500 1900 50  0001 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F525F77
P 3200 2050
F 0 "#PWR0105" H 3200 1800 50  0001 C CNN
F 1 "GND" H 3205 1877 50  0000 C CNN
F 2 "" H 3200 2050 50  0001 C CNN
F 3 "" H 3200 2050 50  0001 C CNN
	1    3200 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F52622C
P 4000 1250
F 0 "#PWR0106" H 4000 1000 50  0001 C CNN
F 1 "GND" H 4005 1077 50  0000 C CNN
F 2 "" H 4000 1250 50  0001 C CNN
F 3 "" H 4000 1250 50  0001 C CNN
	1    4000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 850  3800 850 
$Comp
L power:+1V0 #PWR0116
U 1 1 5F52EA4E
P 4000 850
F 0 "#PWR0116" H 4000 700 50  0001 C CNN
F 1 "+1V0" H 4015 1023 50  0000 C CNN
F 2 "" H 4000 850 50  0001 C CNN
F 3 "" H 4000 850 50  0001 C CNN
	1    4000 850 
	1    0    0    -1  
$EndComp
Connection ~ 4000 850 
Text Notes 1650 2350 0    50   ~ 0
1.0 = 0.6 * (1 + R1/100k)\nR1 = (1.0/0.6-1) * 100k = 66.67K
Text Label 1450 1550 2    50   ~ 0
PG_1.0V
Wire Wire Line
	1450 1550 1500 1550
$Comp
L tom-passives:R R11
U 1 1 5F53B38F
P 1500 1250
F 0 "R11" H 1571 1288 40  0000 L CNN
F 1 "100k/1%" H 1571 1212 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 1430 1250 30  0001 C CNN
F 3 "" H 1500 1250 30  0001 C CNN
F 4 "C25741" H 1500 1250 50  0001 C CNN "LCSC"
	1    1500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 850  1500 1000
Connection ~ 1500 850 
Wire Wire Line
	1500 1500 1500 1550
Connection ~ 1500 1550
Wire Wire Line
	1500 1550 1800 1550
$Comp
L tom-passives:C C6
U 1 1 5F554CD9
P 1100 1050
F 0 "C6" H 986 982 40  0000 R CNN
F 1 "4.7uF/10V/X5R" H 986 1058 40  0000 R CNN
F 2 "tom-passives:C_0402_1005Metric" H 986 1126 30  0001 R CNN
F 3 "" H 1100 1050 60  0001 C CNN
F 4 "490-5915-1-ND" H 1100 1050 50  0001 C CNN "Vendor"
F 5 "C23733" H 1100 1050 50  0001 C CNN "LCSC"
	1    1100 1050
	1    0    0    1   
$EndComp
Wire Wire Line
	1500 850  1100 850 
Connection ~ 1100 850 
$Comp
L power:GND #PWR0117
U 1 1 5F559F54
P 1100 1250
F 0 "#PWR0117" H 1100 1000 50  0001 C CNN
F 1 "GND" H 1105 1077 50  0000 C CNN
F 2 "" H 1100 1250 50  0001 C CNN
F 3 "" H 1100 1250 50  0001 C CNN
	1    1100 1250
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R16
U 1 1 5F55FDD5
P 3400 1300
F 0 "R16" H 3471 1338 40  0000 L CNN
F 1 "200k/1%" H 3471 1262 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 3330 1300 30  0001 C CNN
F 3 "" H 3400 1300 30  0001 C CNN
F 4 "C25764" H 3400 1300 50  0001 C CNN "LCSC"
	1    3400 1300
	-1   0    0    -1  
$EndComp
$Comp
L tom-passives:R R17
U 1 1 5F5607D4
P 3500 1300
F 0 "R17" H 3571 1338 40  0000 L CNN
F 1 "100k/1%" H 3571 1262 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 3430 1300 30  0001 C CNN
F 3 "" H 3500 1300 30  0001 C CNN
F 4 "C25741" H 3500 1300 50  0001 C CNN "LCSC"
	1    3500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1550 3400 1550
Connection ~ 3200 1550
Connection ~ 3400 1550
Wire Wire Line
	3400 1550 3500 1550
Wire Wire Line
	3400 1050 3500 1050
Wire Wire Line
	3800 1050 3800 850 
Connection ~ 3500 1050
Wire Wire Line
	3500 1050 3800 1050
Connection ~ 3800 850 
Wire Wire Line
	3800 850  4000 850 
Text Notes 1500 3000 0    118  ~ 0
Sequence #1 1.0V\nVCCINT\n(est 1.567A)
$Comp
L artix7-pcie-v2:TLV62569DBVR U8
U 1 1 5F56D2D6
P 5950 1200
F 0 "U8" H 5950 1770 50  0000 C CNN
F 1 "TLV62569DBVR" H 5950 1679 50  0000 C CNN
F 2 "artix7-pcie-v2:SOT95P280X145-5N" H 5950 1200 50  0001 L BNN
F 3 "" H 5950 1200 50  0001 C CNN
F 4 "C141836" H 5950 1200 50  0001 C CNN "LCSC"
	1    5950 1200
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C11
U 1 1 5F574628
P 4850 1250
F 0 "C11" H 4736 1182 40  0000 R CNN
F 1 "4.7uF/10V/X5R" H 4736 1258 40  0000 R CNN
F 2 "tom-passives:C_0402_1005Metric" H 4736 1326 30  0001 R CNN
F 3 "" H 4850 1250 60  0001 C CNN
F 4 "490-5915-1-ND" H 4850 1250 50  0001 C CNN "Vendor"
F 5 "C23733" H 4850 1250 50  0001 C CNN "LCSC"
	1    4850 1250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F574C6D
P 4850 1450
F 0 "#PWR0118" H 4850 1200 50  0001 C CNN
F 1 "GND" H 4855 1277 50  0000 C CNN
F 2 "" H 4850 1450 50  0001 C CNN
F 3 "" H 4850 1450 50  0001 C CNN
	1    4850 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0119
U 1 1 5F5755C4
P 4850 850
F 0 "#PWR0119" H 4850 700 50  0001 C CNN
F 1 "VCC" H 4867 1023 50  0000 C CNN
F 2 "" H 4850 850 50  0001 C CNN
F 3 "" H 4850 850 50  0001 C CNN
	1    4850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 850  4850 900 
Wire Wire Line
	5250 900  5150 900 
Connection ~ 4850 900 
Wire Wire Line
	4850 900  4850 1050
Wire Wire Line
	5150 900  5150 1200
Wire Wire Line
	5150 1200 5250 1200
Connection ~ 5150 900 
Wire Wire Line
	5150 900  4850 900 
$Comp
L power:GND #PWR0120
U 1 1 5F580CEC
P 7400 1550
F 0 "#PWR0120" H 7400 1300 50  0001 C CNN
F 1 "GND" H 7405 1377 50  0000 C CNN
F 2 "" H 7400 1550 50  0001 C CNN
F 3 "" H 7400 1550 50  0001 C CNN
	1    7400 1550
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R24
U 1 1 5F580FB8
P 6950 1250
F 0 "R24" H 7021 1288 40  0000 L CNN
F 1 "100k/1%" H 7021 1212 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 6880 1250 30  0001 C CNN
F 3 "" H 6950 1250 30  0001 C CNN
F 4 "C25741" H 6950 1250 50  0001 C CNN "LCSC"
	1    6950 1250
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R23
U 1 1 5F5814F9
P 6850 1250
F 0 "R23" H 6921 1288 40  0000 L CNN
F 1 "200k/1%" H 6921 1212 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 6780 1250 30  0001 C CNN
F 3 "" H 6850 1250 30  0001 C CNN
F 4 "C25764" H 6850 1250 50  0001 C CNN "LCSC"
	1    6850 1250
	-1   0    0    -1  
$EndComp
$Comp
L tom-passives:R R21
U 1 1 5F581950
P 6650 1750
F 0 "R21" H 6721 1788 40  0000 L CNN
F 1 "100k/1%" H 6721 1712 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 6580 1750 30  0001 C CNN
F 3 "" H 6650 1750 30  0001 C CNN
F 4 "C25741" H 6650 1750 50  0001 C CNN "LCSC"
	1    6650 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5F581DB0
P 5950 1800
F 0 "#PWR0121" H 5950 1550 50  0001 C CNN
F 1 "GND" H 5955 1627 50  0000 C CNN
F 2 "" H 5950 1800 50  0001 C CNN
F 3 "" H 5950 1800 50  0001 C CNN
	1    5950 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5F582091
P 6650 2000
F 0 "#PWR0122" H 6650 1750 50  0001 C CNN
F 1 "GND" H 6655 1827 50  0000 C CNN
F 2 "" H 6650 2000 50  0001 C CNN
F 3 "" H 6650 2000 50  0001 C CNN
	1    6650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1500 6850 1500
Connection ~ 6650 1500
Connection ~ 6850 1500
Wire Wire Line
	6850 1500 6950 1500
Wire Wire Line
	6850 1000 6950 1000
Wire Wire Line
	7150 1000 7150 900 
Connection ~ 6950 1000
Wire Wire Line
	6950 1000 7150 1000
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F58D64F
P 7400 900
F 0 "#FLG0101" H 7400 975 50  0001 C CNN
F 1 "PWR_FLAG" H 7400 1073 50  0000 C CNN
F 2 "" H 7400 900 50  0001 C CNN
F 3 "~" H 7400 900 50  0001 C CNN
	1    7400 900 
	1    0    0    -1  
$EndComp
Text Label 7550 900  0    50   ~ 0
VCCBRAM
Text Label 900  7100 2    50   ~ 0
VCCBRAM
Text Notes 4950 3050 0    118  ~ 0
Sequence #1 1.0V\nVCCBRAM\n(est 567mA)
Text Notes 5000 2400 0    50   ~ 0
1.0 = 0.6 * (1 + R1/100k)\nR1 = (1.0/0.6-1) * 100k = 66.67K
Text Notes 10750 2900 2    118  ~ 0
Sequence #2 1.8V\nVCCAUX (est 114mA)
$Comp
L artix7-pcie-v2:TPS74701DRCR U10
U 1 1 5F5A4105
P 9250 1400
F 0 "U10" H 9250 2170 50  0000 C CNN
F 1 "TPS74701DRCR" H 9250 2079 50  0000 C CNN
F 2 "artix7-pcie-v2:16624-01YE" H 9250 1400 50  0001 L BNN
F 3 "" H 9250 1400 50  0001 C CNN
F 4 "C105262" H 9250 1400 50  0001 C CNN "LCSC"
	1    9250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F5A46C9
P 9250 2200
F 0 "#PWR0123" H 9250 1950 50  0001 C CNN
F 1 "GND" H 9255 2027 50  0000 C CNN
F 2 "" H 9250 2200 50  0001 C CNN
F 3 "" H 9250 2200 50  0001 C CNN
	1    9250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2200 9250 2200
Wire Wire Line
	7150 900  7400 900 
Connection ~ 9250 2200
Connection ~ 7400 900 
Wire Wire Line
	7400 900  7550 900 
$Comp
L power:VCC #PWR0124
U 1 1 5F5AE2C3
P 8200 900
F 0 "#PWR0124" H 8200 750 50  0001 C CNN
F 1 "VCC" H 8217 1073 50  0000 C CNN
F 2 "" H 8200 900 50  0001 C CNN
F 3 "" H 8200 900 50  0001 C CNN
	1    8200 900 
	1    0    0    -1  
$EndComp
NoConn ~ 8550 1850
Wire Wire Line
	8550 900  8550 1000
Connection ~ 8550 900 
$Comp
L tom-passives:C C16
U 1 1 5F5BF9BC
P 8200 1950
F 0 "C16" H 8086 1882 40  0000 R CNN
F 1 "4.7uF/10V/X5R" H 8086 1958 40  0000 R CNN
F 2 "tom-passives:C_0402_1005Metric" H 8086 2026 30  0001 R CNN
F 3 "" H 8200 1950 60  0001 C CNN
F 4 "490-5915-1-ND" H 8200 1950 50  0001 C CNN "Vendor"
F 5 "C23733" H 8200 1950 50  0001 C CNN "LCSC"
	1    8200 1950
	1    0    0    1   
$EndComp
Wire Wire Line
	8550 1200 8200 1200
Wire Wire Line
	8200 1200 8200 1750
$Comp
L power:GND #PWR0125
U 1 1 5F5C5B8D
P 8200 2150
F 0 "#PWR0125" H 8200 1900 50  0001 C CNN
F 1 "GND" H 8205 1977 50  0000 C CNN
F 2 "" H 8200 2150 50  0001 C CNN
F 3 "" H 8200 2150 50  0001 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 900  8200 1200
Wire Wire Line
	8200 900  8550 900 
Connection ~ 8200 1200
Connection ~ 8200 900 
Wire Wire Line
	8550 1600 8300 1600
Text Label 8300 1600 0    50   ~ 0
PG_1.0V
$Comp
L power:VCC #PWR0126
U 1 1 5F5E0A7C
P 10100 700
F 0 "#PWR0126" H 10100 550 50  0001 C CNN
F 1 "VCC" H 10117 873 50  0000 C CNN
F 2 "" H 10100 700 50  0001 C CNN
F 3 "" H 10100 700 50  0001 C CNN
	1    10100 700 
	1    0    0    -1  
$EndComp
Text Label 10250 1200 0    50   ~ 0
PG_1.8V
$Comp
L tom-passives:C C36
U 1 1 5F5EB583
P 10750 1550
F 0 "C36" H 10636 1482 40  0000 R CNN
F 1 "4.7uF/10V/X5R" V 10500 1800 40  0000 R CNN
F 2 "tom-passives:C_0402_1005Metric" H 10636 1626 30  0001 R CNN
F 3 "" H 10750 1550 60  0001 C CNN
F 4 "490-5915-1-ND" H 10750 1550 50  0001 C CNN "Vendor"
F 5 "C23733" H 10750 1550 50  0001 C CNN "LCSC"
	1    10750 1550
	-1   0    0    1   
$EndComp
$Comp
L tom-passives:R R36
U 1 1 5F5EC513
P 10150 1600
F 0 "R36" H 10221 1638 40  0000 L CNN
F 1 "200k/1%" H 10221 1562 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 10080 1600 30  0001 C CNN
F 3 "" H 10150 1600 30  0001 C CNN
F 4 "C25764" H 10150 1600 50  0001 C CNN "LCSC"
	1    10150 1600
	-1   0    0    -1  
$EndComp
$Comp
L tom-passives:R R38
U 1 1 5F5ECD9A
P 10150 2100
F 0 "R38" H 10221 2138 40  0000 L CNN
F 1 "100k/1%" H 10221 2062 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 10080 2100 30  0001 C CNN
F 3 "" H 10150 2100 30  0001 C CNN
F 4 "C25741" H 10150 2100 50  0001 C CNN "LCSC"
	1    10150 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5F5ED14C
P 10150 2350
F 0 "#PWR0127" H 10150 2100 50  0001 C CNN
F 1 "GND" H 10155 2177 50  0000 C CNN
F 2 "" H 10150 2350 50  0001 C CNN
F 3 "" H 10150 2350 50  0001 C CNN
	1    10150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1850 10150 1850
Connection ~ 10150 1850
Wire Wire Line
	9950 1450 9950 1350
Wire Wire Line
	10150 1350 9950 1350
Connection ~ 9950 1350
Wire Wire Line
	10150 1350 10350 1350
Connection ~ 10150 1350
Connection ~ 10750 1350
$Comp
L power:GND #PWR0128
U 1 1 5F602976
P 10750 1750
F 0 "#PWR0128" H 10750 1500 50  0001 C CNN
F 1 "GND" H 10755 1577 50  0000 C CNN
F 2 "" H 10750 1750 50  0001 C CNN
F 3 "" H 10750 1750 50  0001 C CNN
	1    10750 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0129
U 1 1 5F604E02
P 10750 1350
F 0 "#PWR0129" H 10750 1200 50  0001 C CNN
F 1 "+1V8" H 10765 1523 50  0000 C CNN
F 2 "" H 10750 1350 50  0001 C CNN
F 3 "" H 10750 1350 50  0001 C CNN
	1    10750 1350
	1    0    0    -1  
$EndComp
Text Notes 7500 2900 0    50   ~ 0
1.8 = 0.8 * (1 + R1/100k)\nR1 = (1.8/0.8-1) * 100k = 125K\n\n200//330 = 124.5\n0.8 * (1 + 124.5/100) = 1.796
$Comp
L tom-passives:R R39
U 1 1 5F62A9AF
P 10350 1600
F 0 "R39" H 10421 1638 40  0000 L CNN
F 1 "330k/1%" H 10421 1562 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 10280 1600 30  0001 C CNN
F 3 "" H 10350 1600 30  0001 C CNN
F 4 "C25778" H 10350 1600 50  0001 C CNN "LCSC"
	1    10350 1600
	1    0    0    -1  
$EndComp
Connection ~ 10350 1350
Wire Wire Line
	10350 1350 10750 1350
Wire Wire Line
	10150 1850 10350 1850
$Comp
L artix7-pcie-v2:TPS74701DRCR U9
U 1 1 5F657583
P 9150 3850
F 0 "U9" H 9150 4620 50  0000 C CNN
F 1 "TPS74701DRCR" H 9150 4529 50  0000 C CNN
F 2 "artix7-pcie-v2:16624-01YE" H 9150 3850 50  0001 L BNN
F 3 "" H 9150 3850 50  0001 C CNN
F 4 "C105262" H 9150 3850 50  0001 C CNN "LCSC"
	1    9150 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5F65758D
P 9150 4650
F 0 "#PWR0130" H 9150 4400 50  0001 C CNN
F 1 "GND" H 9155 4477 50  0000 C CNN
F 2 "" H 9150 4650 50  0001 C CNN
F 3 "" H 9150 4650 50  0001 C CNN
	1    9150 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4650 9150 4650
Connection ~ 9150 4650
$Comp
L power:VCC #PWR0131
U 1 1 5F657599
P 8100 3350
F 0 "#PWR0131" H 8100 3200 50  0001 C CNN
F 1 "VCC" H 8117 3523 50  0000 C CNN
F 2 "" H 8100 3350 50  0001 C CNN
F 3 "" H 8100 3350 50  0001 C CNN
	1    8100 3350
	1    0    0    -1  
$EndComp
NoConn ~ 8450 4300
Wire Wire Line
	8450 3350 8450 3450
Connection ~ 8450 3350
$Comp
L tom-passives:C C15
U 1 1 5F6575A8
P 8100 4400
F 0 "C15" H 7986 4332 40  0000 R CNN
F 1 "4.7uF/10V/X5R" H 7986 4408 40  0000 R CNN
F 2 "tom-passives:C_0402_1005Metric" H 7986 4476 30  0001 R CNN
F 3 "" H 8100 4400 60  0001 C CNN
F 4 "490-5915-1-ND" H 8100 4400 50  0001 C CNN "Vendor"
F 5 "C23733" H 8100 4400 50  0001 C CNN "LCSC"
	1    8100 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	8450 3650 8100 3650
Wire Wire Line
	8100 3650 8100 4200
$Comp
L power:GND #PWR0132
U 1 1 5F6575B4
P 8100 4600
F 0 "#PWR0132" H 8100 4350 50  0001 C CNN
F 1 "GND" H 8105 4427 50  0000 C CNN
F 2 "" H 8100 4600 50  0001 C CNN
F 3 "" H 8100 4600 50  0001 C CNN
	1    8100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3350 8100 3650
Wire Wire Line
	8100 3350 8450 3350
Connection ~ 8100 3650
Connection ~ 8100 3350
Wire Wire Line
	8450 4050 8200 4050
Text Label 8200 4050 0    50   ~ 0
PG_1.0V
$Comp
L tom-passives:C C35
U 1 1 5F6575DF
P 10250 4000
F 0 "C35" H 10136 3932 40  0000 R CNN
F 1 "4.7uF/10V/X5R" H 10136 4008 40  0000 R CNN
F 2 "tom-passives:C_0402_1005Metric" H 10136 4076 30  0001 R CNN
F 3 "" H 10250 4000 60  0001 C CNN
F 4 "490-5915-1-ND" H 10250 4000 50  0001 C CNN "Vendor"
F 5 "C23733" H 10250 4000 50  0001 C CNN "LCSC"
	1    10250 4000
	-1   0    0    1   
$EndComp
$Comp
L tom-passives:R R31
U 1 1 5F6575EA
P 10050 4050
F 0 "R31" H 10121 4088 40  0000 L CNN
F 1 "150k/1%" H 10121 4012 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 9980 4050 30  0001 C CNN
F 3 "" H 10050 4050 30  0001 C CNN
F 4 "C25755" H 10050 4050 50  0001 C CNN "LCSC"
	1    10050 4050
	-1   0    0    -1  
$EndComp
$Comp
L tom-passives:R R32
U 1 1 5F6575F5
P 10050 4550
F 0 "R32" H 10121 4588 40  0000 L CNN
F 1 "100k/1%" H 10121 4512 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 9980 4550 30  0001 C CNN
F 3 "" H 10050 4550 30  0001 C CNN
F 4 "C25741" H 10050 4550 50  0001 C CNN "LCSC"
	1    10050 4550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5F6575FF
P 10050 4800
F 0 "#PWR0134" H 10050 4550 50  0001 C CNN
F 1 "GND" H 10055 4627 50  0000 C CNN
F 2 "" H 10050 4800 50  0001 C CNN
F 3 "" H 10050 4800 50  0001 C CNN
	1    10050 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4300 10050 4300
Connection ~ 10050 4300
Wire Wire Line
	9850 3900 9850 3800
Wire Wire Line
	10050 3800 9850 3800
Connection ~ 9850 3800
Connection ~ 10050 3800
Text Notes 8350 5050 0    50   ~ 0
1.2 = 0.8 * (1 + R1/100k)\nR1 = (1.2/0.8-1) * 100k = 150k
Text Notes 8150 5450 0    118  ~ 0
Sequence #2 1.2V\nMGTAVTT (156mA est)
Text Label 10250 3800 0    50   ~ 0
MGTAVTT
NoConn ~ 9850 3450
Wire Wire Line
	10050 3800 10250 3800
Text Notes 800  5550 0    118  ~ 0
Sequence #3 3.3V\nVCCO Bank 14 & config\n(allow 500mA per bank)
$Comp
L artix7-pcie-v2:TLV62569DBVR U3
U 1 1 5F6A5DAB
P 2050 3700
F 0 "U3" H 2050 4270 50  0000 C CNN
F 1 "TLV62569DBVR" H 2050 4179 50  0000 C CNN
F 2 "artix7-pcie-v2:SOT95P280X145-5N" H 2050 3700 50  0001 L BNN
F 3 "" H 2050 3700 50  0001 C CNN
F 4 "C141836" H 2050 3700 50  0001 C CNN "LCSC"
	1    2050 3700
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C5
U 1 1 5F6A5DB7
P 950 3750
F 0 "C5" H 836 3682 40  0000 R CNN
F 1 "4.7uF/10V/X5R" H 836 3758 40  0000 R CNN
F 2 "tom-passives:C_0402_1005Metric" H 836 3826 30  0001 R CNN
F 3 "" H 950 3750 60  0001 C CNN
F 4 "490-5915-1-ND" H 950 3750 50  0001 C CNN "Vendor"
F 5 "C23733" H 950 3750 50  0001 C CNN "LCSC"
	1    950  3750
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 5F6A5DC1
P 950 3950
F 0 "#PWR0137" H 950 3700 50  0001 C CNN
F 1 "GND" H 955 3777 50  0000 C CNN
F 2 "" H 950 3950 50  0001 C CNN
F 3 "" H 950 3950 50  0001 C CNN
	1    950  3950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0138
U 1 1 5F6A5DCB
P 950 3350
F 0 "#PWR0138" H 950 3200 50  0001 C CNN
F 1 "VCC" H 967 3523 50  0000 C CNN
F 2 "" H 950 3350 50  0001 C CNN
F 3 "" H 950 3350 50  0001 C CNN
	1    950  3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3350 950  3400
Connection ~ 950  3400
Wire Wire Line
	950  3400 950  3550
$Comp
L tom-passives:C C7
U 1 1 5F6A5DEB
P 3500 3600
F 0 "C7" H 3386 3562 40  0000 R CNN
F 1 "10uF/25V/X7R" H 3386 3638 40  0000 R CNN
F 2 "tom-passives:C_1206_3216Metric" H 3538 3450 30  0001 C CNN
F 3 "" H 3500 3600 60  0001 C CNN
F 4 "C3216X7R1E106M160AE" H 3500 3600 50  0001 C CNN "MFGPN"
F 5 "399-8153-1-ND" H 3500 3600 50  0001 C CNN "Vendor"
F 6 "C13585" H 3500 3600 50  0001 C CNN "LCSC"
	1    3500 3600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5F6A5DF5
P 3500 3800
F 0 "#PWR0139" H 3500 3550 50  0001 C CNN
F 1 "GND" H 3505 3627 50  0000 C CNN
F 2 "" H 3500 3800 50  0001 C CNN
F 3 "" H 3500 3800 50  0001 C CNN
	1    3500 3800
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R15
U 1 1 5F6A5E00
P 3250 3650
F 0 "R15" H 3321 3688 40  0000 L CNN
F 1 "150k/1%" H 3321 3612 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 3180 3650 30  0001 C CNN
F 3 "" H 3250 3650 30  0001 C CNN
F 4 "C25755" H 3250 3650 50  0001 C CNN "LCSC"
	1    3250 3650
	-1   0    0    -1  
$EndComp
$Comp
L tom-passives:R R12
U 1 1 5F6A5E16
P 2750 4250
F 0 "R12" H 2821 4288 40  0000 L CNN
F 1 "100k/1%" H 2821 4212 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 2680 4250 30  0001 C CNN
F 3 "" H 2750 4250 30  0001 C CNN
F 4 "C25741" H 2750 4250 50  0001 C CNN "LCSC"
	1    2750 4250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 5F6A5E20
P 2050 4300
F 0 "#PWR0140" H 2050 4050 50  0001 C CNN
F 1 "GND" H 2055 4127 50  0000 C CNN
F 2 "" H 2050 4300 50  0001 C CNN
F 3 "" H 2050 4300 50  0001 C CNN
	1    2050 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 5F6A5E2A
P 2750 4500
F 0 "#PWR0141" H 2750 4250 50  0001 C CNN
F 1 "GND" H 2755 4327 50  0000 C CNN
F 2 "" H 2750 4500 50  0001 C CNN
F 3 "" H 2750 4500 50  0001 C CNN
	1    2750 4500
	1    0    0    -1  
$EndComp
Text Notes 1100 4900 0    50   ~ 0
3.3 = 0.6 * (1 + R1/100k)\nR1 = (3.3/0.6-1) * 100k = 450K
Wire Wire Line
	3250 3400 3500 3400
Connection ~ 3500 3400
$Comp
L power:+3.3V #PWR0158
U 1 1 5F6CA83D
P 3500 3400
F 0 "#PWR0158" H 3500 3250 50  0001 C CNN
F 1 "+3.3V" H 3515 3573 50  0000 C CNN
F 2 "" H 3500 3400 50  0001 C CNN
F 3 "" H 3500 3400 50  0001 C CNN
	1    3500 3400
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C14
U 1 1 5F6E0463
P 7400 1100
F 0 "C14" H 7286 1062 40  0000 R CNN
F 1 "47uF/10V/X7R" H 7286 1138 40  0000 R CNN
F 2 "tom-passives:C_1206_3216Metric" H 7438 950 30  0001 C CNN
F 3 "" H 7400 1100 60  0001 C CNN
F 4 "" H 7400 1100 50  0001 C CNN "MFGPN"
F 5 "" H 7400 1100 50  0001 C CNN "Vendor"
F 6 "C96123" H 7400 1100 50  0001 C CNN "LCSC"
	1    7400 1100
	-1   0    0    1   
$EndComp
$Comp
L tom-passives:R R13
U 1 1 5F6FC9DC
P 3000 4000
F 0 "R13" H 3071 4038 40  0000 L CNN
F 1 "300k/1%" H 3071 3962 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 2930 4000 30  0001 C CNN
F 3 "" H 3000 4000 30  0001 C CNN
F 4 "C25774" H 3000 4000 50  0001 C CNN "LCSC"
	1    3000 4000
	0    1    1    0   
$EndComp
Connection ~ 2750 4000
Wire Wire Line
	3250 3900 3250 4000
Wire Wire Line
	950  3400 1350 3400
Text Label 1350 3700 2    50   ~ 0
PG_1.8V
$Comp
L tom-passives:INDUCTOR_SMALL L1
U 1 1 5F714B52
P 3000 3400
F 0 "L1" H 3000 3615 50  0000 C CNN
F 1 "2.2uH/4.5A" H 3000 3524 50  0000 C CNN
F 2 "tom-passives:L_MWSA0518S" H 3000 3531 60  0001 C CNN
F 3 "" H 3000 3400 60  0001 C CNN
F 4 "C408345" H 3000 3400 50  0001 C CNN "LCSC"
F 5 "MWSA0518S-2R2MT" H 3000 3400 50  0001 C CNN "MPN"
	1    3000 3400
	1    0    0    -1  
$EndComp
Connection ~ 3250 3400
$Comp
L tom-passives:INDUCTOR_SMALL L5
U 1 1 5F715221
P 6900 900
F 0 "L5" H 6900 1115 50  0000 C CNN
F 1 "2.2uH/4.5A" H 6900 1024 50  0000 C CNN
F 2 "tom-passives:L_MWSA0518S" H 6900 1031 60  0001 C CNN
F 3 "" H 6900 900 60  0001 C CNN
F 4 "C408345" H 6900 900 50  0001 C CNN "LCSC"
F 5 "MWSA0518S-2R2MT" H 6900 900 50  0001 C CNN "MPN"
	1    6900 900 
	1    0    0    -1  
$EndComp
Connection ~ 7150 900 
$Comp
L artix7-pcie-v2:TLV62569DBVR U7
U 1 1 5F71FBEA
P 5850 3700
F 0 "U7" H 5850 4270 50  0000 C CNN
F 1 "TLV62569DBVR" H 5850 4179 50  0000 C CNN
F 2 "artix7-pcie-v2:SOT95P280X145-5N" H 5850 3700 50  0001 L BNN
F 3 "" H 5850 3700 50  0001 C CNN
F 4 "C141836" H 5850 3700 50  0001 C CNN "LCSC"
	1    5850 3700
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:C C10
U 1 1 5F71FBF6
P 4750 3750
F 0 "C10" H 4636 3682 40  0000 R CNN
F 1 "4.7uF/10V/X5R" H 4636 3758 40  0000 R CNN
F 2 "tom-passives:C_0402_1005Metric" H 4636 3826 30  0001 R CNN
F 3 "" H 4750 3750 60  0001 C CNN
F 4 "490-5915-1-ND" H 4750 3750 50  0001 C CNN "Vendor"
F 5 "C23733" H 4750 3750 50  0001 C CNN "LCSC"
	1    4750 3750
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 5F71FC00
P 4750 3950
F 0 "#PWR0159" H 4750 3700 50  0001 C CNN
F 1 "GND" H 4755 3777 50  0000 C CNN
F 2 "" H 4750 3950 50  0001 C CNN
F 3 "" H 4750 3950 50  0001 C CNN
	1    4750 3950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0160
U 1 1 5F71FC0A
P 4750 3350
F 0 "#PWR0160" H 4750 3200 50  0001 C CNN
F 1 "VCC" H 4767 3523 50  0000 C CNN
F 2 "" H 4750 3350 50  0001 C CNN
F 3 "" H 4750 3350 50  0001 C CNN
	1    4750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3350 4750 3400
Connection ~ 4750 3400
Wire Wire Line
	4750 3400 4750 3550
$Comp
L tom-passives:C C13
U 1 1 5F71FC1A
P 7300 3600
F 0 "C13" H 7186 3562 40  0000 R CNN
F 1 "10uF/25V/X7R" H 7186 3638 40  0000 R CNN
F 2 "tom-passives:C_1206_3216Metric" H 7338 3450 30  0001 C CNN
F 3 "" H 7300 3600 60  0001 C CNN
F 4 "C3216X7R1E106M160AE" H 7300 3600 50  0001 C CNN "MFGPN"
F 5 "399-8153-1-ND" H 7300 3600 50  0001 C CNN "Vendor"
F 6 "C13585" H 7300 3600 50  0001 C CNN "LCSC"
	1    7300 3600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0161
U 1 1 5F71FC24
P 7300 3800
F 0 "#PWR0161" H 7300 3550 50  0001 C CNN
F 1 "GND" H 7305 3627 50  0000 C CNN
F 2 "" H 7300 3800 50  0001 C CNN
F 3 "" H 7300 3800 50  0001 C CNN
	1    7300 3800
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R25
U 1 1 5F71FC2F
P 7050 3650
F 0 "R25" H 7121 3688 40  0000 L CNN
F 1 "18k/1%" H 7121 3612 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 6980 3650 30  0001 C CNN
F 3 "" H 7050 3650 30  0001 C CNN
F 4 "C25762" H 7050 3650 50  0001 C CNN "LCSC"
	1    7050 3650
	-1   0    0    -1  
$EndComp
$Comp
L tom-passives:R R20
U 1 1 5F71FC3A
P 6550 4250
F 0 "R20" H 6621 4288 40  0000 L CNN
F 1 "100k/1%" H 6621 4212 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 6480 4250 30  0001 C CNN
F 3 "" H 6550 4250 30  0001 C CNN
F 4 "C25741" H 6550 4250 50  0001 C CNN "LCSC"
	1    6550 4250
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 5F71FC44
P 5850 4300
F 0 "#PWR0162" H 5850 4050 50  0001 C CNN
F 1 "GND" H 5855 4127 50  0000 C CNN
F 2 "" H 5850 4300 50  0001 C CNN
F 3 "" H 5850 4300 50  0001 C CNN
	1    5850 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 5F71FC4E
P 6550 4500
F 0 "#PWR0163" H 6550 4250 50  0001 C CNN
F 1 "GND" H 6555 4327 50  0000 C CNN
F 2 "" H 6550 4500 50  0001 C CNN
F 3 "" H 6550 4500 50  0001 C CNN
	1    6550 4500
	1    0    0    -1  
$EndComp
Text Notes 4900 4950 0    50   ~ 0
2.5 = 0.6 * (1 + R1/100k)\nR1 = (2.5/0.6-1) * 100k = 316k\n\n0.6 * (1 + 318k/100k) = 2.508V\n[0.6 * (1 + 321.2k/99k) = 2.54V]
Wire Wire Line
	7050 3400 7200 3400
$Comp
L tom-passives:R R22
U 1 1 5F71FC68
P 6800 4000
F 0 "R22" H 6871 4038 40  0000 L CNN
F 1 "300k/1%" H 6871 3962 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 6730 4000 30  0001 C CNN
F 3 "" H 6800 4000 30  0001 C CNN
F 4 "C25774" H 6800 4000 50  0001 C CNN "LCSC"
	1    6800 4000
	0    1    1    0   
$EndComp
Connection ~ 6550 4000
Wire Wire Line
	7050 3900 7050 4000
Wire Wire Line
	4750 3400 5150 3400
Text Label 5150 3700 2    50   ~ 0
PG_1.8V
$Comp
L tom-passives:INDUCTOR_SMALL L4
U 1 1 5F71FC78
P 6800 3400
F 0 "L4" H 6800 3615 50  0000 C CNN
F 1 "2.2uH/4.5A" H 6800 3524 50  0000 C CNN
F 2 "tom-passives:L_MWSA0518S" H 6800 3531 60  0001 C CNN
F 3 "" H 6800 3400 60  0001 C CNN
F 4 "C408345" H 6800 3400 50  0001 C CNN "LCSC"
F 5 "MWSA0518S-2R2MT" H 6800 3400 50  0001 C CNN "MPN"
	1    6800 3400
	1    0    0    -1  
$EndComp
Connection ~ 7050 3400
Text Notes 4850 5550 0    118  ~ 0
Sequence #3 2.5V\nVCCO Bank 16\n(allow 500mA per bank)
Text Label 7300 3400 0    50   ~ 0
VCCO_16
$Comp
L tom-passives:C C8
U 1 1 5F764A4C
P 3550 6300
F 0 "C8" H 3436 6232 40  0000 R CNN
F 1 "4.7uF/10V/X5R" H 3436 6308 40  0000 R CNN
F 2 "tom-passives:C_0402_1005Metric" H 3436 6376 30  0001 R CNN
F 3 "" H 3550 6300 60  0001 C CNN
F 4 "490-5915-1-ND" H 3550 6300 50  0001 C CNN "Vendor"
F 5 "C23733" H 3550 6300 50  0001 C CNN "LCSC"
	1    3550 6300
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0164
U 1 1 5F764A56
P 3550 6500
F 0 "#PWR0164" H 3550 6250 50  0001 C CNN
F 1 "GND" H 3555 6327 50  0000 C CNN
F 2 "" H 3550 6500 50  0001 C CNN
F 3 "" H 3550 6500 50  0001 C CNN
	1    3550 6500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0165
U 1 1 5F764A60
P 3550 5900
F 0 "#PWR0165" H 3550 5750 50  0001 C CNN
F 1 "VCC" H 3567 6073 50  0000 C CNN
F 2 "" H 3550 5900 50  0001 C CNN
F 3 "" H 3550 5900 50  0001 C CNN
	1    3550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5900 3550 5950
Connection ~ 3550 5950
Wire Wire Line
	3550 5950 3550 6100
$Comp
L power:GND #PWR0166
U 1 1 5F764A72
P 6100 6350
F 0 "#PWR0166" H 6100 6100 50  0001 C CNN
F 1 "GND" H 6105 6177 50  0000 C CNN
F 2 "" H 6100 6350 50  0001 C CNN
F 3 "" H 6100 6350 50  0001 C CNN
	1    6100 6350
	1    0    0    -1  
$EndComp
$Comp
L tom-passives:R R19
U 1 1 5F764A88
P 5850 6300
F 0 "R19" H 5921 6338 40  0000 L CNN
F 1 "200k/1%" H 5921 6262 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 5780 6300 30  0001 C CNN
F 3 "" H 5850 6300 30  0001 C CNN
F 4 "C25764" H 5850 6300 50  0001 C CNN "LCSC"
	1    5850 6300
	-1   0    0    -1  
$EndComp
$Comp
L tom-passives:R R18
U 1 1 5F764A93
P 5600 6700
F 0 "R18" H 5671 6738 40  0000 L CNN
F 1 "100k/1%" H 5671 6662 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 5530 6700 30  0001 C CNN
F 3 "" H 5600 6700 30  0001 C CNN
F 4 "C25741" H 5600 6700 50  0001 C CNN "LCSC"
	1    5600 6700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0167
U 1 1 5F764A9D
P 4650 6850
F 0 "#PWR0167" H 4650 6600 50  0001 C CNN
F 1 "GND" H 4655 6677 50  0000 C CNN
F 2 "" H 4650 6850 50  0001 C CNN
F 3 "" H 4650 6850 50  0001 C CNN
	1    4650 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0168
U 1 1 5F764AA7
P 5350 6700
F 0 "#PWR0168" H 5350 6450 50  0001 C CNN
F 1 "GND" H 5355 6527 50  0000 C CNN
F 2 "" H 5350 6700 50  0001 C CNN
F 3 "" H 5350 6700 50  0001 C CNN
	1    5350 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6550 5850 6550
Wire Wire Line
	5850 6050 5850 5950
Text Notes 4800 7700 0    118  ~ 0
Sequence #3 1.8V\nVCCO Bank 34 & 35\n(allow 500mA per bank)
Text Notes 3350 7450 0    50   ~ 0
1.8 = 0.6 * (1 + R1/100k)\nR1 = (1.8/0.6-1) * 100k = 200K
Wire Wire Line
	5850 5950 6100 5950
Connection ~ 6100 5950
Wire Wire Line
	6100 5950 6250 5950
$Comp
L tom-passives:C C12
U 1 1 5F764ACC
P 6100 6150
F 0 "C12" H 5986 6112 40  0000 R CNN
F 1 "47uF/10V/X7R" H 5986 6188 40  0000 R CNN
F 2 "tom-passives:C_1206_3216Metric" H 6138 6000 30  0001 C CNN
F 3 "" H 6100 6150 60  0001 C CNN
F 4 "" H 6100 6150 50  0001 C CNN "MFGPN"
F 5 "" H 6100 6150 50  0001 C CNN "Vendor"
F 6 "C96123" H 6100 6150 50  0001 C CNN "LCSC"
	1    6100 6150
	-1   0    0    1   
$EndComp
$Comp
L tom-passives:INDUCTOR_SMALL L3
U 1 1 5F764AD8
P 5600 5950
F 0 "L3" H 5600 6165 50  0000 C CNN
F 1 "2.2uH/4.5A" H 5600 6074 50  0000 C CNN
F 2 "tom-passives:L_MWSA0518S" H 5600 6081 60  0001 C CNN
F 3 "" H 5600 5950 60  0001 C CNN
F 4 "C408345" H 5600 5950 50  0001 C CNN "LCSC"
F 5 "MWSA0518S-2R2MT" H 5600 5950 50  0001 C CNN "MPN"
	1    5600 5950
	1    0    0    -1  
$EndComp
Connection ~ 5850 5950
Text Label 6250 5950 0    50   ~ 0
VCCO_34_35
Wire Wire Line
	10100 1200 10250 1200
$Comp
L tom-passives:R R33
U 1 1 5F5E05BC
P 10100 950
F 0 "R33" H 10171 988 40  0000 L CNN
F 1 "100k/1%" H 10171 912 40  0000 L CNN
F 2 "tom-passives:R_0402_1005Metric" V 10030 950 30  0001 C CNN
F 3 "" H 10100 950 30  0001 C CNN
F 4 "C25741" H 10100 950 50  0001 C CNN "LCSC"
	1    10100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1000 9950 1200
Wire Wire Line
	9950 1200 10100 1200
Connection ~ 10100 1200
Wire Wire Line
	5850 6550 5850 6700
Connection ~ 5850 6550
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F8DE924
P 7200 3400
F 0 "#FLG0102" H 7200 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 7200 3573 50  0000 C CNN
F 2 "" H 7200 3400 50  0001 C CNN
F 3 "~" H 7200 3400 50  0001 C CNN
	1    7200 3400
	1    0    0    -1  
$EndComp
Connection ~ 7200 3400
Wire Wire Line
	7200 3400 7300 3400
$Comp
L power:+3.3V #PWR0169
U 1 1 5F908F98
P 1600 5700
F 0 "#PWR0169" H 1600 5550 50  0001 C CNN
F 1 "+3.3V" H 1615 5873 50  0000 C CNN
F 2 "" H 1600 5700 50  0001 C CNN
F 3 "" H 1600 5700 50  0001 C CNN
	1    1600 5700
	1    0    0    -1  
$EndComp
Text Label 3500 1550 0    50   ~ 0
FB_1.0V
Text Label 6950 1500 0    50   ~ 0
FB_VCCBRAM
Wire Wire Line
	7400 1300 7400 1550
Text Label 10350 1850 0    50   ~ 0
FB_1.8V
Text Label 2750 4000 1    50   ~ 0
FB_3.3V
Text Label 6550 4000 1    50   ~ 0
FB_VCCO_16
Text Label 10050 4300 0    50   ~ 0
FB_MGTAVTT
$Comp
L power:GND #PWR0136
U 1 1 5F657611
P 10250 4450
F 0 "#PWR0136" H 10250 4200 50  0001 C CNN
F 1 "GND" H 10255 4277 50  0000 C CNN
F 2 "" H 10250 4450 50  0001 C CNN
F 3 "" H 10250 4450 50  0001 C CNN
	1    10250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4200 10250 4450
Text Label 5850 6700 3    50   ~ 0
FB_VCCO_34_35
Text Label 3200 850  3    50   ~ 0
SW_1.0V
Text Label 6650 900  1    50   ~ 0
SW_VCCBRAM
Text Label 6550 3400 1    50   ~ 0
SW_VCCO_16
Text Label 2750 3400 1    50   ~ 0
SW_3.3V
Text Label 5350 5950 3    50   ~ 0
SW_VCCO_34_35
Wire Wire Line
	1600 6000 2500 6000
Wire Wire Line
	1600 6200 2500 6200
Connection ~ 1600 6200
Text Label 3950 6250 2    50   ~ 0
PG_1.8V
Wire Wire Line
	3550 5950 3950 5950
$Comp
L artix7-pcie-v2:TLV62569DBVR U6
U 1 1 5F764A40
P 4650 6250
F 0 "U6" H 4650 6820 50  0000 C CNN
F 1 "TLV62569DBVR" H 4650 6729 50  0000 C CNN
F 2 "artix7-pcie-v2:SOT95P280X145-5N" H 4650 6250 50  0001 L BNN
F 3 "" H 4650 6250 50  0001 C CNN
F 4 "C141836" H 4650 6250 50  0001 C CNN "LCSC"
	1    4650 6250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
