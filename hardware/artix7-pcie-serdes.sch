EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L FPGA_Xilinx_Artix7:XC7A15T-CSG325 U1
U 3 1 5BA4C667
P 6050 4050
F 0 "U1" H 7329 4096 50  0000 L CNN
F 1 "XC7A15T-CSG325" H 7329 4005 50  0000 L CNN
F 2 "" H 6050 4050 50  0001 C CNN
F 3 "" H 6050 4050 50  0000 C CNN
	3    6050 4050
	1    0    0    -1  
$EndComp
Text HLabel 2050 2950 0    50   Output ~ 0
PCIE_TXP0
Text HLabel 2050 3050 0    50   Output ~ 0
PCIE_TXN0
Text HLabel 2050 3850 0    50   Input ~ 0
PCIE_RXP0
Text HLabel 2050 3950 0    50   Input ~ 0
PCIE_RXN0
Wire Wire Line
	4550 2950 2050 2950
Wire Wire Line
	2050 3050 4550 3050
Wire Wire Line
	4550 3850 2050 3850
Wire Wire Line
	4550 3950 2050 3950
Text HLabel 2050 4750 0    50   Input ~ 0
PCIE_REFCLKP
Text HLabel 2050 4850 0    50   Input ~ 0
PCIE_REFCLKN
Wire Wire Line
	4550 4750 2050 4750
Wire Wire Line
	4550 4850 2050 4850
$Comp
L FPGA_Xilinx_Artix7:XC7A15T-CSG325 U?
U 4 1 5BB152D6
P 6050 1650
F 0 "U?" H 6050 2217 50  0000 C CNN
F 1 "XC7A15T-CSG325" H 6050 2126 50  0000 C CNN
F 2 "" H 6050 1650 50  0001 C CNN
F 3 "" H 6050 1650 50  0000 C CNN
	4    6050 1650
	1    0    0    -1  
$EndComp
Text HLabel 2050 1350 0    50   Input ~ 0
MGTAVCC
Wire Wire Line
	4550 1650 4450 1650
Wire Wire Line
	4450 1650 4450 1550
Wire Wire Line
	4450 1550 4550 1550
Wire Wire Line
	4450 1550 4450 1450
Wire Wire Line
	4450 1450 4550 1450
Connection ~ 4450 1550
Wire Wire Line
	4450 1450 4450 1350
Wire Wire Line
	4450 1350 4550 1350
Connection ~ 4450 1450
Wire Wire Line
	4450 1350 2050 1350
Connection ~ 4450 1350
Text HLabel 10150 1350 2    50   Input ~ 0
MGTAVTT
Wire Wire Line
	10150 1350 7650 1350
Wire Wire Line
	7550 1750 7650 1750
Wire Wire Line
	7650 1750 7650 1650
Wire Wire Line
	7650 1650 7550 1650
Wire Wire Line
	7650 1650 7650 1550
Wire Wire Line
	7650 1550 7550 1550
Connection ~ 7650 1650
Wire Wire Line
	7650 1550 7650 1450
Wire Wire Line
	7650 1450 7550 1450
Connection ~ 7650 1550
Wire Wire Line
	7650 1450 7650 1350
Connection ~ 7650 1450
Connection ~ 7650 1350
Wire Wire Line
	7650 1350 7550 1350
$EndSCHEMATC
