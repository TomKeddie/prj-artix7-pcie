EESchema Schematic File Version 4
LIBS:artix7-pcie-v2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
P 3550 4150
F 0 "U1" H 3550 1175 50  0000 C CNN
F 1 "XC7A75T-FGG484" H 3550 1084 50  0000 C CNN
F 2 "" H 3550 4150 50  0001 C CNN
F 3 "" H 3550 4150 50  0000 C CNN
	2    3550 4150
	1    0    0    -1  
$EndComp
Text HLabel 6450 1200 1    50   BiDi ~ 0
IO_L9_16_P
Wire Wire Line
	6450 1200 6450 3750
Wire Wire Line
	6450 3750 5550 3750
Text HLabel 6550 1200 1    50   BiDi ~ 0
IO_L9_16_N
Wire Wire Line
	6550 1200 6550 3850
Wire Wire Line
	6550 3850 5550 3850
Text HLabel 6650 1200 1    50   BiDi ~ 0
IO_L11_16_P
Text HLabel 6750 1200 1    50   BiDi ~ 0
IO_L11_16_N
Text HLabel 7450 1200 1    50   BiDi ~ 0
IO_L20_16_P
Text HLabel 7550 1200 1    50   BiDi ~ 0
IO_L20_16_N
Wire Wire Line
	6650 1200 6650 4150
Wire Wire Line
	6650 4150 5550 4150
Wire Wire Line
	5550 4250 6750 4250
Wire Wire Line
	6750 4250 6750 1200
Text HLabel 8050 1200 1    50   BiDi ~ 0
IO_L24_16_P
Text HLabel 8150 1200 1    50   BiDi ~ 0
IO_L24_16_N
Wire Wire Line
	7450 5950 5550 5950
Wire Wire Line
	7450 1200 7450 5950
Wire Wire Line
	5550 6050 7550 6050
Wire Wire Line
	7550 6050 7550 1200
Wire Wire Line
	7650 6150 5550 6150
Wire Wire Line
	5550 6250 7750 6250
Wire Wire Line
	8050 1200 8050 6750
Wire Wire Line
	8050 6750 5550 6750
Wire Wire Line
	5550 6850 8150 6850
Wire Wire Line
	8150 6850 8150 1200
Text HLabel 7950 1200 1    50   BiDi ~ 0
IO_L22_16_N
Text HLabel 7850 1200 1    50   BiDi ~ 0
IO_L22_16_P
Wire Wire Line
	7950 1200 7950 6450
Wire Wire Line
	7950 6450 5550 6450
Wire Wire Line
	5550 6350 7850 6350
Wire Wire Line
	7850 6350 7850 1200
Wire Wire Line
	7750 6250 7750 1200
Wire Wire Line
	7650 1200 7650 6150
Text HLabel 7750 1200 1    50   BiDi ~ 0
IO_L21_16_N
Text HLabel 7650 1200 1    50   BiDi ~ 0
IO_L21_16_P
Text HLabel 7150 1200 1    50   BiDi ~ 0
IO_L17_16_N
Text HLabel 7050 1200 1    50   BiDi ~ 0
IO_L17_16_P
Wire Wire Line
	7050 5350 5550 5350
Wire Wire Line
	7050 1200 7050 5350
Wire Wire Line
	5550 5450 7150 5450
Wire Wire Line
	7150 5450 7150 1200
$EndSCHEMATC
