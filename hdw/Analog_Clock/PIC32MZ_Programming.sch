EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 8 25
Title "Analog Clock"
Date "2020-08-15"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5730 1860 2    50   UnSpc ~ 0
~PIC32MZ_MCLR
Text GLabel 5730 2160 2    50   BiDi ~ 0
PIC32MZ_ICSPDAT
Text GLabel 5730 2260 2    50   Output ~ 0
PIC32MZ_ICSPCLK
$Comp
L power:GND #PWR0808
U 1 1 5BB4A7C4
P 6620 2110
F 0 "#PWR0808" H 6620 1860 50  0001 C CNN
F 1 "GND" H 6620 1960 50  0000 C CNN
F 2 "" H 6620 2110 50  0001 C CNN
F 3 "" H 6620 2110 50  0001 C CNN
	1    6620 2110
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6620 1890 6620 1960
Wire Wire Line
	6620 2110 6620 2060
NoConn ~ 3170 2360
$Comp
L Custom_Library:C_Custom C802
U 1 1 5BC13497
P 7130 2010
F 0 "C802" H 7155 2110 50  0000 L CNN
F 1 "0.1uF" H 7155 1910 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7168 1860 50  0001 C CNN
F 3 "" H 7155 2110 50  0001 C CNN
F 4 "0603" H 6980 2110 50  0000 R CNN "display_footprint"
F 5 "50V" H 6980 2010 50  0000 R CNN "Voltage"
F 6 "X7R" H 6980 1910 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 7555 2510 60  0001 C CNN "Digi-Key PN"
	1    7130 2010
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0810
U 1 1 5BC1349E
P 7130 2160
F 0 "#PWR0810" H 7130 1910 50  0001 C CNN
F 1 "GND" H 7130 2010 50  0000 C CNN
F 2 "" H 7130 2160 50  0001 C CNN
F 3 "" H 7130 2160 50  0001 C CNN
	1    7130 2160
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BC152E5
P 5770 4770
AR Path="/5BAAE1F3/5BC152E5" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5BC152E5" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5BC152E5" Ref="R?"  Part="1" 
AR Path="/5C1D5CB6/5BC152E5" Ref="R?"  Part="1" 
AR Path="/5CB0BC26/5BC152E5" Ref="R?"  Part="1" 
AR Path="/5E697920/5BC152E5" Ref="R?"  Part="1" 
AR Path="/5EAE2EF2/5BC152E5" Ref="R?"  Part="1" 
AR Path="/5E939EAF/5BC152E5" Ref="R804"  Part="1" 
F 0 "R804" H 5710 4770 50  0000 R CNN
F 1 "10k" V 5770 4770 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5770 4770 50  0001 C CNN
F 3 "" H 5770 4770 50  0001 C CNN
F 4 "0603" H 5960 4850 50  0000 C CNN "display_footprint"
F 5 "1%" H 5950 4770 50  0000 C CNN "Tolerance"
F 6 "1/10W" H 5980 4700 50  0000 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 6070 5170 60  0001 C CNN "Digi-Key PN"
	1    5770 4770
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C801
U 1 1 5BC1574E
P 5770 5580
F 0 "C801" H 5795 5680 50  0000 L CNN
F 1 "0.1uF" H 5795 5480 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5808 5430 50  0001 C CNN
F 3 "" H 5795 5680 50  0001 C CNN
F 4 "0603" H 5620 5680 50  0000 R CNN "display_footprint"
F 5 "50V" H 5620 5580 50  0000 R CNN "Voltage"
F 6 "X7R" H 5620 5480 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 6195 6080 60  0001 C CNN "Digi-Key PN"
	1    5770 5580
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0806
U 1 1 5BC15E18
P 5770 5730
F 0 "#PWR0806" H 5770 5480 50  0001 C CNN
F 1 "GND" H 5770 5580 50  0000 C CNN
F 2 "" H 5770 5730 50  0001 C CNN
F 3 "" H 5770 5730 50  0001 C CNN
	1    5770 5730
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R805
U 1 1 5BC16316
P 6300 5000
F 0 "R805" V 6200 5000 50  0000 C CNN
F 1 "1k" V 6300 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6300 5000 50  0001 C CNN
F 3 "" H 6300 5000 50  0001 C CNN
F 4 "0603" V 6400 5000 50  0000 C CNN "display_footprint"
F 5 "1%" V 6500 5000 50  0000 C CNN "Tolerance"
F 6 "1/10W" V 6600 5000 50  0000 C CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 6600 5400 60  0001 C CNN "Digi-Key PN"
	1    6300 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	5770 4920 5770 5000
Wire Wire Line
	6150 5000 5770 5000
Connection ~ 5770 5000
Text GLabel 6450 5000 2    50   UnSpc ~ 0
~PIC32MZ_MCLR
$Comp
L Switch:SW_Push SW801
U 1 1 5BC17B44
P 3240 5520
F 0 "SW801" H 3240 5805 50  0000 C CNN
F 1 "MRST" H 3240 5714 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 3240 5720 50  0001 C CNN
F 3 "" H 3240 5720 50  0001 C CNN
	1    3240 5520
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0804
U 1 1 5BE087C1
P 4730 5720
F 0 "#PWR0804" H 4730 5470 50  0001 C CNN
F 1 "GND" H 4730 5570 50  0000 C CNN
F 2 "" H 4730 5720 50  0001 C CNN
F 3 "" H 4730 5720 50  0001 C CNN
	1    4730 5720
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R801
U 1 1 5BE087CB
P 3690 5520
F 0 "R801" V 3590 5520 50  0000 C CNN
F 1 "10" V 3690 5520 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3690 5520 50  0001 C CNN
F 3 "" H 3690 5520 50  0001 C CNN
F 4 "0603" V 3790 5520 50  0000 C CNN "display_footprint"
F 5 "1%" V 3890 5520 50  0000 C CNN "Tolerance"
F 6 "1/10W" V 3990 5520 50  0000 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 3990 5920 60  0001 C CNN "Digi-Key PN"
	1    3690 5520
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BE087D6
P 4140 5750
AR Path="/5BAAE1F3/5BE087D6" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5BE087D6" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5BE087D6" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5BE087D6" Ref="R?"  Part="1" 
AR Path="/5C1D5CB6/5BE087D6" Ref="R?"  Part="1" 
AR Path="/5CB0BC26/5BE087D6" Ref="R?"  Part="1" 
AR Path="/5E697920/5BE087D6" Ref="R?"  Part="1" 
AR Path="/5EAE2EF2/5BE087D6" Ref="R?"  Part="1" 
AR Path="/5E939EAF/5BE087D6" Ref="R802"  Part="1" 
F 0 "R802" H 4080 5750 50  0000 R CNN
F 1 "10k" V 4140 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4140 5750 50  0001 C CNN
F 3 "" H 4140 5750 50  0001 C CNN
F 4 "0603" H 4330 5830 50  0000 C CNN "display_footprint"
F 5 "1%" H 4320 5750 50  0000 C CNN "Tolerance"
F 6 "1/10W" H 4350 5680 50  0000 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 4440 6150 60  0001 C CNN "Digi-Key PN"
	1    4140 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0803
U 1 1 5BE087DD
P 4140 5900
F 0 "#PWR0803" H 4140 5650 50  0001 C CNN
F 1 "GND" H 4140 5750 50  0000 C CNN
F 2 "" H 4140 5900 50  0001 C CNN
F 3 "" H 4140 5900 50  0001 C CNN
	1    4140 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4430 5520 4140 5520
Wire Wire Line
	4140 5600 4140 5520
Connection ~ 4140 5520
Wire Wire Line
	4140 5520 3840 5520
Wire Wire Line
	4730 5320 4730 5000
Wire Wire Line
	3540 5520 3440 5520
Wire Wire Line
	2890 5470 2890 5520
Wire Wire Line
	2890 5520 3040 5520
Wire Wire Line
	5770 5430 5770 5000
$Comp
L power:+3.3V #PWR0801
U 1 1 5E6EB62A
P 2890 5470
F 0 "#PWR0801" H 2890 5320 50  0001 C CNN
F 1 "+3.3V" H 2890 5610 50  0000 C CNN
F 2 "" H 2890 5470 50  0001 C CNN
F 3 "" H 2890 5470 50  0001 C CNN
	1    2890 5470
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0805
U 1 1 5E6EBFA5
P 5770 4620
F 0 "#PWR0805" H 5770 4470 50  0001 C CNN
F 1 "+3.3V" H 5770 4760 50  0000 C CNN
F 2 "" H 5770 4620 50  0001 C CNN
F 3 "" H 5770 4620 50  0001 C CNN
	1    5770 4620
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0809
U 1 1 5E6EC62F
P 7130 1860
F 0 "#PWR0809" H 7130 1710 50  0001 C CNN
F 1 "+3.3V" H 7130 2000 50  0000 C CNN
F 2 "" H 7130 1860 50  0001 C CNN
F 3 "" H 7130 1860 50  0001 C CNN
	1    7130 1860
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0807
U 1 1 5E6ECA36
P 6620 1890
F 0 "#PWR0807" H 6620 1740 50  0001 C CNN
F 1 "+3.3V" H 6620 2030 50  0000 C CNN
F 2 "" H 6620 1890 50  0001 C CNN
F 3 "" H 6620 1890 50  0001 C CNN
	1    6620 1890
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS214NW Q801
U 1 1 5E765004
P 4630 5520
F 0 "Q801" H 4830 5595 50  0000 L CNN
F 1 "BSS214NW" H 4830 5520 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 4830 5445 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/Infineon-BSS214NW-DS-v02_02-en.pdf?fileId=db3a30431b3e89eb011b695aebc01bde" H 4630 5520 50  0001 L CNN
F 4 "BSS214NWH6327XTSA1CT-ND" H 4630 5520 50  0001 C CNN "Digi-Key PN"
	1    4630 5520
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J801
U 1 1 5F36CE98
P 2970 2160
F 0 "J801" H 2840 2700 50  0000 C CNN
F 1 "PICKIT4" H 2840 2600 50  0000 C CNN
F 2 "Custom Footprints Library:PICKIT4_Header" H 2970 2160 50  0001 C CNN
F 3 "~" H 2970 2160 50  0001 C CNN
	1    2970 2160
	-1   0    0    -1  
$EndComp
NoConn ~ 3170 2460
NoConn ~ 3170 2560
$Comp
L Power_Protection:PESD3V3L5UY D801
U 1 1 5F37FACB
P 3490 2930
F 0 "D801" H 3490 3030 50  0000 C CNN
F 1 "PESD3V3L5UY" V 3490 2830 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3490 2930 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 3490 2930 50  0001 C CNN
F 4 "1727-3828-1-ND" H 3490 2930 50  0001 C CNN "Digi-Key PN"
	1    3490 2930
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D801
U 2 1 5F38087E
P 3740 2930
F 0 "D801" H 3740 3030 50  0000 C CNN
F 1 "PESD3V3L5UY" H 3740 2830 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3740 2930 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 3740 2930 50  0001 C CNN
F 4 "1727-3828-1-ND" H 3740 2930 50  0001 C CNN "Digi-Key PN"
	2    3740 2930
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D801
U 3 1 5F380F72
P 3990 2930
F 0 "D801" H 3990 3030 50  0000 C CNN
F 1 "PESD3V3L5UY" H 3990 2830 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3990 2930 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 3990 2930 50  0001 C CNN
F 4 "1727-3828-1-ND" H 3990 2930 50  0001 C CNN "Digi-Key PN"
	3    3990 2930
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D801
U 4 1 5F381590
P 4240 2930
F 0 "D801" H 4240 3030 50  0000 C CNN
F 1 "PESD3V3L5UY" H 4240 2830 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4240 2930 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 4240 2930 50  0001 C CNN
F 4 "1727-3828-1-ND" H 4240 2930 50  0001 C CNN "Digi-Key PN"
	4    4240 2930
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0802
U 1 1 5F3831ED
P 3490 3030
F 0 "#PWR0802" H 3490 2780 50  0001 C CNN
F 1 "GND" H 3490 2880 50  0000 C CNN
F 2 "" H 3490 3030 50  0001 C CNN
F 3 "" H 3490 3030 50  0001 C CNN
	1    3490 3030
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead L?
U 1 1 5F386594
P 5120 1860
AR Path="/5CAD2D97/5F386594" Ref="L?"  Part="1" 
AR Path="/5CB25152/5F386594" Ref="L?"  Part="1" 
AR Path="/5E697934/5F386594" Ref="L?"  Part="1" 
AR Path="/5EAE2F02/5F386594" Ref="L?"  Part="1" 
AR Path="/5E939EC2/5F386594" Ref="L?"  Part="1" 
AR Path="/5E939EAF/5F386594" Ref="L801"  Part="1" 
F 0 "L801" V 5050 1780 50  0000 R CNN
F 1 "600R 0.5A" V 5050 1970 50  0000 L CNN
F 2 "Inductors_SMD:L_0603" V 5050 1860 50  0001 C CNN
F 3 "~" H 5120 1860 50  0001 C CNN
F 4 "732-1593-1-ND" H -4410 -1900 50  0001 C CNN "Digi-Key PN"
	1    5120 1860
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead L?
U 1 1 5F387C18
P 5120 2060
AR Path="/5CAD2D97/5F387C18" Ref="L?"  Part="1" 
AR Path="/5CB25152/5F387C18" Ref="L?"  Part="1" 
AR Path="/5E697934/5F387C18" Ref="L?"  Part="1" 
AR Path="/5EAE2F02/5F387C18" Ref="L?"  Part="1" 
AR Path="/5E939EC2/5F387C18" Ref="L?"  Part="1" 
AR Path="/5E939EAF/5F387C18" Ref="L802"  Part="1" 
F 0 "L802" V 5050 1980 50  0000 R CNN
F 1 "600R 0.5A" V 5050 2170 50  0000 L CNN
F 2 "Inductors_SMD:L_0603" V 5050 2060 50  0001 C CNN
F 3 "~" H 5120 2060 50  0001 C CNN
F 4 "732-1593-1-ND" H -4410 -1700 50  0001 C CNN "Digi-Key PN"
	1    5120 2060
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5730 1860 5270 1860
Wire Wire Line
	5270 2060 6620 2060
Wire Wire Line
	3170 1960 3740 1960
Wire Wire Line
	3170 1860 3490 1860
Wire Wire Line
	3170 2160 3990 2160
Wire Wire Line
	3490 2830 3490 1860
Wire Wire Line
	3740 2830 3740 1960
Wire Wire Line
	3990 2830 3990 2160
Wire Wire Line
	4240 2830 4240 2260
Wire Wire Line
	4240 2260 3170 2260
$Comp
L Power_Protection:PESD3V3L5UY D801
U 5 1 5F39050C
P 4490 2930
F 0 "D801" H 4490 3030 50  0000 C CNN
F 1 "PESD3V3L5UY" H 4490 2830 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4490 2930 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 4490 2930 50  0001 C CNN
F 4 "1727-3828-1-ND" H 4490 2930 50  0001 C CNN "Digi-Key PN"
	5    4490 2930
	0    1    1    0   
$EndComp
NoConn ~ 4490 2830
Wire Wire Line
	3490 1860 4970 1860
Connection ~ 3490 1860
Wire Wire Line
	3740 1960 6620 1960
Connection ~ 3740 1960
Wire Wire Line
	4970 2060 3170 2060
Wire Wire Line
	3990 2160 5730 2160
Connection ~ 3990 2160
Wire Wire Line
	5730 2260 4240 2260
Connection ~ 4240 2260
Wire Wire Line
	4730 5000 4930 5000
Wire Wire Line
	5230 5000 5770 5000
$Comp
L Custom_Library:R_Custom R803
U 1 1 5EB9A4D9
P 5080 5000
F 0 "R803" V 4980 5000 50  0000 C CNN
F 1 "10" V 5080 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5080 5000 50  0001 C CNN
F 3 "" H 5080 5000 50  0001 C CNN
F 4 "0603" V 5180 5000 50  0000 C CNN "display_footprint"
F 5 "1%" V 5280 5000 50  0000 C CNN "Tolerance"
F 6 "1/10W" V 5380 5000 50  0000 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 5380 5400 60  0001 C CNN "Digi-Key PN"
	1    5080 5000
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
