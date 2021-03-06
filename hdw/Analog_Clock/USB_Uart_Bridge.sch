EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 13 25
Title "Analog Clock"
Date "2020-08-15"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Custom_Library:FT234XD U1302
U 1 1 5BAEAC0F
P 3050 4750
F 0 "U1302" H 3600 4350 60  0000 R CNN
F 1 "FT234XD" H 3050 4750 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-12-1EP_3x3mm_Pitch0.45mm" H 3050 5150 60  0001 C CNN
F 3 "http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT234XD.pdf" H 3050 5150 60  0001 C CNN
F 4 "768-1178-1-ND" H 3700 4450 60  0001 C CNN "Digi-Key PN"
	1    3050 4750
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1309
U 1 1 5BAEE754
P 5680 5130
F 0 "C1309" H 5705 5230 50  0000 L CNN
F 1 "47pF" H 5705 5030 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5718 4980 50  0001 C CNN
F 3 "" H 5705 5230 50  0001 C CNN
F 4 "0603" H 5530 5230 50  0000 R CNN "display_footprint"
F 5 "50V" H 5530 5130 50  0000 R CNN "Voltage"
F 6 "NP0" H 5530 5030 50  0000 R CNN "Dielectric"
F 7 "399-7918-1-ND" H 5680 5130 50  0001 C CNN "Digi-Key PN"
	1    5680 5130
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1302
U 1 1 5BAEE8C5
P 2360 3680
F 0 "C1302" H 2385 3780 50  0000 L CNN
F 1 "0.1uF" H 2385 3580 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2398 3530 50  0001 C CNN
F 3 "" H 2385 3780 50  0001 C CNN
F 4 "0603" H 2210 3780 50  0000 R CNN "display_footprint"
F 5 "50V" H 2210 3680 50  0000 R CNN "Voltage"
F 6 "X7R" H 2210 3580 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 2785 4180 60  0001 C CNN "Digi-Key PN"
	1    2360 3680
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR01306
U 1 1 5BAF1727
P 2360 3530
F 0 "#PWR01306" H 2360 3380 50  0001 C CNN
F 1 "+5V_USB" H 2360 3670 50  0000 C CNN
F 2 "" H 2360 3530 50  0001 C CNN
F 3 "" H 2360 3530 50  0001 C CNN
	1    2360 3530
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR01312
U 1 1 5BAF173C
P 3040 3530
F 0 "#PWR01312" H 3040 3380 50  0001 C CNN
F 1 "+5V_USB" H 3040 3670 50  0000 C CNN
F 2 "" H 3040 3530 50  0001 C CNN
F 3 "" H 3040 3530 50  0001 C CNN
	1    3040 3530
	1    0    0    -1  
$EndComp
NoConn ~ 2400 4700
NoConn ~ 2400 4800
NoConn ~ 8140 4900
$Comp
L Custom_Library:C_Custom C1311
U 1 1 5BAFEC78
P 6510 5130
F 0 "C1311" H 6535 5230 50  0000 L CNN
F 1 "47pF" H 6535 5030 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6548 4980 50  0001 C CNN
F 3 "" H 6535 5230 50  0001 C CNN
F 4 "0603" H 6360 5230 50  0000 R CNN "display_footprint"
F 5 "50V" H 6360 5130 50  0000 R CNN "Voltage"
F 6 "NP0" H 6360 5030 50  0000 R CNN "Dielectric"
F 7 "399-7918-1-ND" H 6510 5130 50  0001 C CNN "Digi-Key PN"
	1    6510 5130
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1301
U 1 1 5BAFEEB4
P 1670 3680
F 0 "C1301" H 1695 3780 50  0000 L CNN
F 1 "0.1uF" H 1695 3580 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1708 3530 50  0001 C CNN
F 3 "" H 1695 3780 50  0001 C CNN
F 4 "0603" H 1520 3780 50  0000 R CNN "display_footprint"
F 5 "50V" H 1520 3680 50  0000 R CNN "Voltage"
F 6 "X7R" H 1520 3580 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 2095 4180 60  0001 C CNN "Digi-Key PN"
	1    1670 3680
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1307
U 1 1 5BB0046F
P 4410 5350
F 0 "C1307" H 4435 5450 50  0000 L CNN
F 1 "0.1uF" H 4435 5250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4448 5200 50  0001 C CNN
F 3 "" H 4435 5450 50  0001 C CNN
F 4 "0603" H 4260 5450 50  0000 R CNN "display_footprint"
F 5 "50V" H 4260 5350 50  0000 R CNN "Voltage"
F 6 "X7R" H 4260 5250 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 4835 5850 60  0001 C CNN "Digi-Key PN"
	1    4410 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4410 4500 4410 5200
Wire Wire Line
	6810 3630 6950 3630
Wire Wire Line
	6950 3430 6950 3630
Connection ~ 6950 3630
Wire Wire Line
	6810 3430 6950 3430
Text GLabel 3700 5000 2    50   UnSpc ~ 0
~USB_ACTIVE
Text GLabel 940  4930 3    50   UnSpc ~ 0
~USB_ACTIVE
$Comp
L Custom_Library:R_Custom R1301
U 1 1 5BB07016
P 940 4480
F 0 "R1301" H 880 4480 50  0000 R CNN
F 1 "1k" V 940 4480 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 940 4480 50  0001 C CNN
F 3 "" H 940 4480 50  0001 C CNN
F 4 "0603" H 1010 4560 50  0000 L CNN "display_footprint"
F 5 "1%" H 1010 4480 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 1010 4410 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 1240 4880 60  0001 C CNN "Digi-Key PN"
	1    940  4480
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead L1301
U 1 1 5BB0BDEE
P 7720 4500
F 0 "L1301" V 7570 4525 50  0000 C CNN
F 1 "600R 0.5A" V 7870 4500 50  0000 C CNN
F 2 "Inductors_SMD:L_0603" V 7650 4500 50  0001 C CNN
F 3 "~" H 7720 4500 50  0001 C CNN
F 4 "732-1593-1-ND" H -470 1410 50  0001 C CNN "Digi-Key PN"
	1    7720 4500
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01302
U 1 1 5BB10D97
P 7030 3630
F 0 "#FLG01302" H 7030 3705 50  0001 C CNN
F 1 "PWR_FLAG" V 7030 3780 50  0000 L CNN
F 2 "" H 7030 3630 50  0001 C CNN
F 3 "~" H 7030 3630 50  0001 C CNN
	1    7030 3630
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR01301
U 1 1 5BB118AB
P 940 4330
F 0 "#PWR01301" H 940 4180 50  0001 C CNN
F 1 "+5V_USB" H 940 4470 50  0000 C CNN
F 2 "" H 940 4330 50  0001 C CNN
F 3 "" H 940 4330 50  0001 C CNN
	1    940  4330
	1    0    0    -1  
$EndComp
Text Label 3800 4700 0    50   ~ 0
BRIDGE_USB+
Text Label 3800 4800 0    50   ~ 0
BRIDGE_USB-
Text Label 6810 4700 0    50   ~ 0
CONN_USB+
Text Label 6810 4800 0    50   ~ 0
CONN_USB-
Wire Wire Line
	3700 4700 4960 4700
Wire Wire Line
	3700 4800 4960 4800
Wire Wire Line
	5260 4700 5680 4700
$Comp
L Custom_Library:TPD3S014DBVR U1305
U 1 1 5BBEE4ED
P 6260 3630
F 0 "U1305" H 6560 3280 50  0000 L CNN
F 1 "TPD3S014DBVR" H 6260 3980 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 6410 3080 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd3s014.pdf" H 6410 2880 50  0001 L CNN
F 4 "296-38835-1-ND" H 6410 2980 50  0001 L CNN "Digi-Key PN"
	1    6260 3630
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6510 4030 6510 4800
Wire Wire Line
	6610 4030 6610 4700
$Comp
L Custom_Library:R_Custom R1311
U 1 1 5BBF0F91
P 5110 4700
F 0 "R1311" V 5490 4700 50  0000 C CNN
F 1 "27" V 5110 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5110 4700 50  0001 C CNN
F 3 "" H 5110 4700 50  0001 C CNN
F 4 "0603" V 5407 4700 50  0000 C CNN "display_footprint"
F 5 "1%" V 5316 4700 50  0000 C CNN "Tolerance"
F 6 "1/10W" V 5225 4700 50  0000 C CNN "Wattage"
F 7 "311-27.0HRCT-ND" H 5410 5100 60  0001 C CNN "Digi-Key PN"
	1    5110 4700
	0    1    -1   0   
$EndComp
Wire Wire Line
	5680 4980 5680 4700
Connection ~ 5680 4700
Wire Wire Line
	5680 4700 6610 4700
Wire Wire Line
	6510 4980 6510 4800
$Comp
L Device:LED D1301
U 1 1 5BBF2083
P 940 4780
F 0 "D1301" V 978 4663 50  0000 R CNN
F 1 "Yellow" V 887 4663 50  0000 R CNN
F 2 "LEDs:LED_0603" H 940 4780 50  0001 C CNN
F 3 "~" H 940 4780 50  0001 C CNN
F 4 "754-1124-1-ND" H -5700 -340 50  0001 C CNN "Digi-Key PN"
	1    940  4780
	0    -1   -1   0   
$EndComp
$Comp
L Connector:USB_B_Mini J1301
U 1 1 5BAEA883
P 8440 4700
F 0 "J1301" H 8211 4691 50  0000 R CNN
F 1 "USB_B_Mini" H 8211 4600 50  0000 R CNN
F 2 "Connectors:USB_Mini-B" H 8590 4650 50  0001 C CNN
F 3 "~" H 8590 4650 50  0001 C CNN
F 4 "732-2109-1-ND" H -470 1410 50  0001 C CNN "Digi-Key PN"
	1    8440 4700
	-1   0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead L1302
U 1 1 5BBF2600
P 9060 5170
F 0 "L1302" V 8910 5195 50  0000 C CNN
F 1 "600R 0.5A" V 9210 5170 50  0000 C CNN
F 2 "Inductors_SMD:L_0603" V 8990 5170 50  0001 C CNN
F 3 "~" H 9060 5170 50  0001 C CNN
F 4 "732-1593-1-ND" H -470 1410 50  0001 C CNN "Digi-Key PN"
	1    9060 5170
	0    1    1    0   
$EndComp
Wire Wire Line
	8910 5170 8540 5170
Wire Wire Line
	8540 5170 8540 5100
Wire Wire Line
	9510 5240 9510 5170
Wire Wire Line
	9510 5170 9210 5170
Wire Wire Line
	6610 4700 8140 4700
Connection ~ 6610 4700
Wire Wire Line
	6510 4800 8140 4800
Connection ~ 6510 4800
Wire Wire Line
	7870 4500 8140 4500
Wire Wire Line
	7570 4500 6950 4500
Wire Wire Line
	6950 3630 6950 4500
$Comp
L Custom_Library:COM_Port_Settings DOC1301
U 1 1 5BF874C4
P 9400 3820
F 0 "DOC1301" H 9400 4220 60  0001 C CNN
F 1 "COM_Port_Settings" H 9400 4320 60  0001 C CNN
F 2 "" H 9400 4320 60  0001 C CNN
F 3 "" H 9400 4320 60  0001 C CNN
F 4 "115200 bps" H 10150 3970 60  0000 R CNN "Baud_Rate"
F 5 "8 bit" H 10150 3870 60  0000 R CNN "Data_Length"
F 6 "None" H 10150 3770 60  0000 R CNN "Parity"
F 7 "1" H 10150 3670 60  0000 R CNN "Stop_Bits"
F 8 "None" H 10150 3570 60  0000 R CNN "Flow_Control"
	1    9400 3820
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R1303
U 1 1 5BF9D312
P 1780 6880
F 0 "R1303" H 1720 6880 50  0000 R CNN
F 1 "6.04k" V 1780 6880 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 1780 6880 50  0001 C CNN
F 3 "" H 1780 6880 50  0001 C CNN
F 4 "0603" H 1880 6970 50  0000 L CNN "display_footprint"
F 5 "1%" H 1880 6880 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 1890 6800 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT6K04CT-ND" H 2080 7280 60  0001 C CNN "Digi-Key PN"
	1    1780 6880
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R1304
U 1 1 5BF9D416
P 1780 7370
F 0 "R1304" H 1720 7370 50  0000 R CNN
F 1 "40.2k" V 1780 7370 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 1780 7370 50  0001 C CNN
F 3 "" H 1780 7370 50  0001 C CNN
F 4 "0603" H 1880 7460 50  0000 L CNN "display_footprint"
F 5 "1%" H 1880 7370 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 1890 7290 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT40K2CT-ND" H 2080 7770 60  0001 C CNN "Digi-Key PN"
	1    1780 7370
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R1302
U 1 1 5BF9D46E
P 1780 6340
F 0 "R1302" H 1720 6340 50  0000 R CNN
F 1 "487k" V 1780 6340 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 1780 6340 50  0001 C CNN
F 3 "" H 1780 6340 50  0001 C CNN
F 4 "0603" H 1880 6430 50  0000 L CNN "display_footprint"
F 5 "1%" H 1880 6340 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 1890 6260 50  0000 L CNN "Wattage"
F 7 "311-487KHRCT-ND" H 2080 6740 60  0001 C CNN "Digi-Key PN"
	1    1780 6340
	1    0    0    -1  
$EndComp
Wire Wire Line
	2180 6640 1780 6640
Wire Wire Line
	1780 6640 1780 6490
Wire Wire Line
	1780 6640 1780 6730
Connection ~ 1780 6640
Wire Wire Line
	2180 7140 1780 7140
Wire Wire Line
	1780 7140 1780 7030
Wire Wire Line
	1780 7140 1780 7220
Connection ~ 1780 7140
$Comp
L Custom_Library:+5V_USB #PWR01304
U 1 1 5BFA0E0D
P 1780 6190
F 0 "#PWR01304" H 1780 6040 50  0001 C CNN
F 1 "+5V_USB" H 1780 6330 50  0000 C CNN
F 2 "" H 1780 6190 50  0001 C CNN
F 3 "" H 1780 6190 50  0001 C CNN
	1    1780 6190
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R1305
U 1 1 5BFA54D6
P 3410 6290
F 0 "R1305" H 3350 6290 50  0000 R CNN
F 1 "10k" V 3410 6290 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3410 6290 50  0001 C CNN
F 3 "" H 3410 6290 50  0001 C CNN
F 4 "0603" H 3510 6380 50  0000 L CNN "display_footprint"
F 5 "1%" H 3510 6290 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3520 6210 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 3710 6690 60  0001 C CNN "Digi-Key PN"
	1    3410 6290
	1    0    0    -1  
$EndComp
Wire Wire Line
	3280 7140 3410 7140
Wire Wire Line
	3410 7140 3410 6640
Wire Wire Line
	3280 6640 3410 6640
Connection ~ 3410 6640
Wire Wire Line
	3410 6640 3410 6440
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C037C42
P 3480 7600
AR Path="/5BAAE1F3/5C037C42" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5C037C42" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5C037C42" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5C037C42" Ref="C?"  Part="1" 
AR Path="/5E939F76/5C037C42" Ref="C1304"  Part="1" 
F 0 "C1304" H 3505 7700 50  0000 L CNN
F 1 "0.1uF" H 3505 7500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3518 7450 50  0001 C CNN
F 3 "" H 3505 7700 50  0001 C CNN
F 4 "399-7845-1-ND" H 3905 8100 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 3330 7700 50  0000 R CNN "display_footprint"
F 6 "50V" H 3330 7600 50  0000 R CNN "Voltage"
F 7 "X7R" H 3330 7500 50  0000 R CNN "Dielectric"
	1    3480 7600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5260 4800 6510 4800
$Comp
L Custom_Library:R_Custom R1312
U 1 1 5C04BC29
P 5110 4800
F 0 "R1312" V 5490 4800 50  0000 C CNN
F 1 "27" V 5110 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5110 4800 50  0001 C CNN
F 3 "" H 5110 4800 50  0001 C CNN
F 4 "0603" V 5407 4800 50  0000 C CNN "display_footprint"
F 5 "1%" V 5316 4800 50  0000 C CNN "Tolerance"
F 6 "1/10W" V 5225 4800 50  0000 C CNN "Wattage"
F 7 "311-27.0HRCT-ND" H 5410 5200 60  0001 C CNN "Digi-Key PN"
	1    5110 4800
	0    1    1    0   
$EndComp
Text GLabel 3720 6640 2    50   Output ~ 0
POS5_USB_PGOOD
Wire Wire Line
	3720 6640 3410 6640
$Comp
L Custom_Library:TLV6700 U1301
U 1 1 5E1EE9A5
P 2730 6890
F 0 "U1301" H 3030 6390 50  0000 C CNN
F 1 "TLV6700" H 2730 6890 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2730 7490 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlv6700.pdf" H 2730 6890 60  0001 C CNN
F 4 "296-51696-1-ND" H 2730 6890 50  0001 C CNN "Digi-Key PN"
	1    2730 6890
	1    0    0    -1  
$EndComp
NoConn ~ 2400 5000
$Comp
L power:GND #PWR01337
U 1 1 5E9AEFB8
P 6260 4030
F 0 "#PWR01337" H 6260 3780 50  0001 C CNN
F 1 "GND" H 6260 3880 50  0000 C CNN
F 2 "" H 6260 4030 50  0001 C CNN
F 3 "" H 6260 4030 50  0001 C CNN
	1    6260 4030
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01333
U 1 1 5E9AF91E
P 5680 5280
F 0 "#PWR01333" H 5680 5030 50  0001 C CNN
F 1 "GND" H 5680 5130 50  0000 C CNN
F 2 "" H 5680 5280 50  0001 C CNN
F 3 "" H 5680 5280 50  0001 C CNN
	1    5680 5280
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01338
U 1 1 5E9AFDC5
P 6510 5280
F 0 "#PWR01338" H 6510 5030 50  0001 C CNN
F 1 "GND" H 6510 5130 50  0000 C CNN
F 2 "" H 6510 5280 50  0001 C CNN
F 3 "" H 6510 5280 50  0001 C CNN
	1    6510 5280
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01344
U 1 1 5E9B0267
P 8440 5100
F 0 "#PWR01344" H 8440 4850 50  0001 C CNN
F 1 "GND" H 8440 4950 50  0000 C CNN
F 2 "" H 8440 5100 50  0001 C CNN
F 3 "" H 8440 5100 50  0001 C CNN
	1    8440 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01345
U 1 1 5E9B06D9
P 9510 5240
F 0 "#PWR01345" H 9510 4990 50  0001 C CNN
F 1 "GND" H 9510 5090 50  0000 C CNN
F 2 "" H 9510 5240 50  0001 C CNN
F 3 "" H 9510 5240 50  0001 C CNN
	1    9510 5240
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01327
U 1 1 5E9B1845
P 4410 5500
F 0 "#PWR01327" H 4410 5250 50  0001 C CNN
F 1 "GND" H 4410 5350 50  0000 C CNN
F 2 "" H 4410 5500 50  0001 C CNN
F 3 "" H 4410 5500 50  0001 C CNN
	1    4410 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01315
U 1 1 5E9B1E03
P 3150 5200
F 0 "#PWR01315" H 3150 4950 50  0001 C CNN
F 1 "GND" H 3150 5050 50  0000 C CNN
F 2 "" H 3150 5200 50  0001 C CNN
F 3 "" H 3150 5200 50  0001 C CNN
	1    3150 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01311
U 1 1 5E9B22D2
P 2950 5200
F 0 "#PWR01311" H 2950 4950 50  0001 C CNN
F 1 "GND" H 2950 5050 50  0000 C CNN
F 2 "" H 2950 5200 50  0001 C CNN
F 3 "" H 2950 5200 50  0001 C CNN
	1    2950 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01303
U 1 1 5E9B24F5
P 1670 3830
F 0 "#PWR01303" H 1670 3580 50  0001 C CNN
F 1 "GND" H 1670 3680 50  0000 C CNN
F 2 "" H 1670 3830 50  0001 C CNN
F 3 "" H 1670 3830 50  0001 C CNN
	1    1670 3830
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01307
U 1 1 5E9B2C90
P 2360 3830
F 0 "#PWR01307" H 2360 3580 50  0001 C CNN
F 1 "GND" H 2360 3680 50  0000 C CNN
F 2 "" H 2360 3830 50  0001 C CNN
F 3 "" H 2360 3830 50  0001 C CNN
	1    2360 3830
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01313
U 1 1 5E9B31F3
P 3040 3830
F 0 "#PWR01313" H 3040 3580 50  0001 C CNN
F 1 "GND" H 3040 3680 50  0000 C CNN
F 2 "" H 3040 3830 50  0001 C CNN
F 3 "" H 3040 3830 50  0001 C CNN
	1    3040 3830
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01305
U 1 1 5E9B587D
P 1780 7520
F 0 "#PWR01305" H 1780 7270 50  0001 C CNN
F 1 "GND" H 1780 7370 50  0000 C CNN
F 2 "" H 1780 7520 50  0001 C CNN
F 3 "" H 1780 7520 50  0001 C CNN
	1    1780 7520
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01309
U 1 1 5E9B5EFB
P 2730 7490
F 0 "#PWR01309" H 2730 7240 50  0001 C CNN
F 1 "GND" H 2730 7340 50  0000 C CNN
F 2 "" H 2730 7490 50  0001 C CNN
F 3 "" H 2730 7490 50  0001 C CNN
	1    2730 7490
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01316
U 1 1 5E9B74F0
P 3410 6140
F 0 "#PWR01316" H 3410 5990 50  0001 C CNN
F 1 "+3.3V" H 3410 6280 50  0000 C CNN
F 2 "" H 3410 6140 50  0001 C CNN
F 3 "" H 3410 6140 50  0001 C CNN
	1    3410 6140
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01318
U 1 1 5E9B8D0A
P 3480 7750
F 0 "#PWR01318" H 3480 7500 50  0001 C CNN
F 1 "GND" H 3480 7600 50  0000 C CNN
F 2 "" H 3480 7750 50  0001 C CNN
F 3 "" H 3480 7750 50  0001 C CNN
	1    3480 7750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01308
U 1 1 5E9BDFD3
P 2730 6290
F 0 "#PWR01308" H 2730 6140 50  0001 C CNN
F 1 "+3.3V" H 2730 6430 50  0000 C CNN
F 2 "" H 2730 6290 50  0001 C CNN
F 3 "" H 2730 6290 50  0001 C CNN
	1    2730 6290
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01325
U 1 1 5E9AF283
P 4410 3980
F 0 "#PWR01325" H 4410 3730 50  0001 C CNN
F 1 "GND" H 4410 3830 50  0000 C CNN
F 2 "" H 4410 3980 50  0001 C CNN
F 3 "" H 4410 3980 50  0001 C CNN
	1    4410 3980
	1    0    0    -1  
$EndComp
Connection ~ 4050 3630
Wire Wire Line
	3580 3630 4050 3630
Wire Wire Line
	3580 3560 3580 3630
$Comp
L power:PWR_FLAG #FLG01301
U 1 1 5E475BF2
P 3580 3560
F 0 "#FLG01301" H 3580 3635 50  0001 C CNN
F 1 "PWR_FLAG" H 3580 3710 50  0000 C CNN
F 2 "" H 3580 3560 50  0001 C CNN
F 3 "~" H 3580 3560 50  0001 C CNN
	1    3580 3560
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3630 4410 3630
Wire Wire Line
	4050 3560 4050 3630
$Comp
L Custom_Library:TP TP?
U 1 1 5E3059D8
P 4050 3560
AR Path="/5A557C58/5E3059D8" Ref="TP?"  Part="1" 
AR Path="/5A0BC776/5E3059D8" Ref="TP?"  Part="1" 
AR Path="/5CAD2D97/5E3059D8" Ref="TP?"  Part="1" 
AR Path="/5E939F76/5E3059D8" Ref="TP1301"  Part="1" 
F 0 "TP1301" H 4050 3710 50  0000 C CNN
F 1 "TP" H 4050 3710 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 4050 3560 60  0001 C CNN
F 3 "" H 4050 3560 60  0000 C CNN
	1    4050 3560
	1    0    0    -1  
$EndComp
Wire Wire Line
	4410 3550 4410 3630
$Comp
L Custom_Library:+5V_USB #PWR01324
U 1 1 5BBEEF4D
P 4410 3550
F 0 "#PWR01324" H 4410 3400 50  0001 C CNN
F 1 "+5V_USB" H 4410 3690 50  0000 C CNN
F 2 "" H 4410 3550 50  0001 C CNN
F 3 "" H 4410 3550 50  0001 C CNN
	1    4410 3550
	1    0    0    -1  
$EndComp
Connection ~ 4410 3630
Wire Wire Line
	4410 3630 4410 3680
$Comp
L Custom_Library:C_Custom C1306
U 1 1 5BB040A2
P 4410 3830
F 0 "C1306" H 4435 3930 50  0000 L CNN
F 1 "0.1uF" H 4435 3730 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4448 3680 50  0001 C CNN
F 3 "" H 4435 3930 50  0001 C CNN
F 4 "0603" H 4260 3930 50  0000 R CNN "display_footprint"
F 5 "50V" H 4260 3830 50  0000 R CNN "Voltage"
F 6 "X7R" H 4260 3730 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 4835 4330 60  0001 C CNN "Digi-Key PN"
	1    4410 3830
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E954115
P 5240 3400
AR Path="/5CB0BC26/5E954115" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5E954115" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5E954115" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5E954115" Ref="R?"  Part="1" 
AR Path="/5E939F76/5E954115" Ref="R1313"  Part="1" 
F 0 "R1313" V 5140 3400 50  0000 C CNN
F 1 "10" V 5240 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5240 3400 50  0001 C CNN
F 3 "" H 5240 3400 50  0001 C CNN
F 4 "0603" V 5340 3400 50  0001 C CNN "display_footprint"
F 5 "1%" V 5440 3400 50  0001 C CNN "Tolerance"
F 6 "1/10W" V 5540 3400 50  0001 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 5240 3400 50  0001 C CNN "Digi-Key PN"
	1    5240 3400
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E95410C
P 4780 3400
AR Path="/5CB0BC26/5E95410C" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5E95410C" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5E95410C" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5E95410C" Ref="R?"  Part="1" 
AR Path="/5E939F76/5E95410C" Ref="R1309"  Part="1" 
F 0 "R1309" V 4680 3400 50  0000 C CNN
F 1 "10" V 4780 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4780 3400 50  0001 C CNN
F 3 "" H 4780 3400 50  0001 C CNN
F 4 "0603" V 4880 3400 50  0001 C CNN "display_footprint"
F 5 "1%" V 4980 3400 50  0001 C CNN "Tolerance"
F 6 "1/10W" V 5080 3400 50  0001 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 4780 3400 50  0001 C CNN "Digi-Key PN"
	1    4780 3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5240 3630 5710 3630
Wire Wire Line
	5240 3550 5240 3630
Wire Wire Line
	4780 3630 4860 3630
Wire Wire Line
	4780 3550 4780 3630
Connection ~ 4780 3630
Wire Wire Line
	4410 3630 4780 3630
Connection ~ 5240 3630
Wire Wire Line
	5160 3630 5240 3630
Text GLabel 5240 3250 1    50   UnSpc ~ 0
POS5_USB_SNS+
Text GLabel 4780 3250 1    50   UnSpc ~ 0
POS5_USB_SNS-
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E0650D5
P 5010 3630
AR Path="/5CB6F1ED/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5A0BC776/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5E939F76/5E0650D5" Ref="R1310"  Part="1" 
F 0 "R1310" V 4910 3630 50  0000 C CNN
F 1 "0.02" V 5010 3630 40  0000 C CNN
F 2 "Resistors_SMD:R_0612" H 5010 3630 50  0001 C CNN
F 3 "" H 5010 3630 50  0001 C CNN
F 4 "P16010CT-ND" H 5310 4030 60  0001 C CNN "Digi-Key PN"
F 5 "0612" V 5110 3630 50  0000 C CNN "display_footprint"
F 6 "1%" V 5210 3630 50  0000 C CNN "Tolerance"
F 7 "1W" V 5310 3630 50  0000 C CNN "Wattage"
	1    5010 3630
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR01314
U 1 1 5BAEE620
P 3150 4300
F 0 "#PWR01314" H 3150 4150 50  0001 C CNN
F 1 "+5V_USB" H 3250 4440 50  0000 C CNN
F 2 "" H 3150 4300 50  0001 C CNN
F 3 "" H 3150 4300 50  0001 C CNN
	1    3150 4300
	1    0    0    -1  
$EndComp
Text GLabel 2400 4500 0    50   Output ~ 0
USB_UART_RX_BUF
Text GLabel 2400 4600 0    50   Input ~ 0
USB_UART_TX_BUF
Wire Wire Line
	3700 4500 4410 4500
$Comp
L Custom_Library:+3.3V_USB #PWR01326
U 1 1 5F2EA333
P 4410 4420
F 0 "#PWR01326" H 4410 4270 50  0001 C CNN
F 1 "+3.3V_USB" H 4410 4560 50  0000 C CNN
F 2 "" H 4410 4420 50  0001 C CNN
F 3 "" H 4410 4420 50  0001 C CNN
	1    4410 4420
	1    0    0    -1  
$EndComp
Wire Wire Line
	4410 4420 4410 4500
Connection ~ 4410 4500
$Comp
L Custom_Library:+3.3V_USB #PWR01310
U 1 1 5F2EC9A4
P 2950 4300
F 0 "#PWR01310" H 2950 4150 50  0001 C CNN
F 1 "+3.3V_USB" H 2810 4440 50  0000 C CNN
F 2 "" H 2950 4300 50  0001 C CNN
F 3 "" H 2950 4300 50  0001 C CNN
	1    2950 4300
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR01302
U 1 1 5F2EE021
P 1670 3530
F 0 "#PWR01302" H 1670 3380 50  0001 C CNN
F 1 "+3.3V_USB" H 1670 3670 50  0000 C CNN
F 2 "" H 1670 3530 50  0001 C CNN
F 3 "" H 1670 3530 50  0001 C CNN
	1    1670 3530
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01317
U 1 1 5F35E4BA
P 3480 7450
F 0 "#PWR01317" H 3480 7300 50  0001 C CNN
F 1 "+3.3V" H 3480 7590 50  0000 C CNN
F 2 "" H 3480 7450 50  0001 C CNN
F 3 "" H 3480 7450 50  0001 C CNN
	1    3480 7450
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0102DCU U1304
U 1 1 5F39F395
P 5350 1460
F 0 "U1304" H 5100 1910 50  0000 C CNN
F 1 "TXB0102DCU" H 5500 1910 50  0000 L CNN
F 2 "Package_SO:VSSOP-8_2.4x2.1mm_P0.5mm" H 5350 910 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0102.pdf" H 5350 1430 50  0001 C CNN
F 4 "296-22862-1-ND" H 5350 1460 50  0001 C CNN "Digi-Key PN"
	1    5350 1460
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR01332
U 1 1 5F3A38A3
P 5450 960
F 0 "#PWR01332" H 5450 810 50  0001 C CNN
F 1 "+3.3V_USB" H 5580 1100 50  0000 C CNN
F 2 "" H 5450 960 50  0001 C CNN
F 3 "" H 5450 960 50  0001 C CNN
	1    5450 960 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01330
U 1 1 5F3A3F67
P 5250 960
F 0 "#PWR01330" H 5250 810 50  0001 C CNN
F 1 "+3.3V" H 5200 1100 50  0000 C CNN
F 2 "" H 5250 960 50  0001 C CNN
F 3 "" H 5250 960 50  0001 C CNN
	1    5250 960 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01331
U 1 1 5F3A6750
P 5350 1960
F 0 "#PWR01331" H 5350 1710 50  0001 C CNN
F 1 "GND" H 5350 1810 50  0000 C CNN
F 2 "" H 5350 1960 50  0001 C CNN
F 3 "" H 5350 1960 50  0001 C CNN
	1    5350 1960
	1    0    0    -1  
$EndComp
Text GLabel 7250 1360 2    50   Input ~ 0
USB_UART_RX_BUF
Text GLabel 7250 1560 2    50   Output ~ 0
USB_UART_TX_BUF
$Comp
L Custom_Library:+3.3V_USB #PWR01336
U 1 1 5F3B0FEC
P 6220 980
F 0 "#PWR01336" H 6220 830 50  0001 C CNN
F 1 "+3.3V_USB" H 6220 1120 50  0000 C CNN
F 2 "" H 6220 980 50  0001 C CNN
F 3 "" H 6220 980 50  0001 C CNN
	1    6220 980 
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR01339
U 1 1 5F3B149F
P 6730 980
F 0 "#PWR01339" H 6730 830 50  0001 C CNN
F 1 "+3.3V_USB" H 6730 1120 50  0000 C CNN
F 2 "" H 6730 980 50  0001 C CNN
F 3 "" H 6730 980 50  0001 C CNN
	1    6730 980 
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3B373F
P 6220 1130
AR Path="/5E939D51/5F3B373F" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F3B373F" Ref="R1314"  Part="1" 
F 0 "R1314" H 6290 1260 50  0000 L CNN
F 1 "100k" V 6220 1130 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6220 1130 50  0001 C CNN
F 3 "" H 6220 1130 50  0001 C CNN
F 4 "0603" H 6290 1180 50  0000 L CNN "display_footprint"
F 5 "1%" H 6290 1090 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 6290 1000 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT100KCT-ND" H 6220 1130 50  0001 C CNN "Digi-Key PN"
	1    6220 1130
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3B4F3C
P 6730 1130
AR Path="/5E939D51/5F3B4F3C" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F3B4F3C" Ref="R1315"  Part="1" 
F 0 "R1315" H 6800 1260 50  0000 L CNN
F 1 "100k" V 6730 1130 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6730 1130 50  0001 C CNN
F 3 "" H 6730 1130 50  0001 C CNN
F 4 "0603" H 6800 1180 50  0000 L CNN "display_footprint"
F 5 "1%" H 6800 1090 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 6800 1000 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT100KCT-ND" H 6730 1130 50  0001 C CNN "Digi-Key PN"
	1    6730 1130
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1360 6220 1360
Wire Wire Line
	7250 1560 6730 1560
Wire Wire Line
	6220 1280 6220 1360
Connection ~ 6220 1360
Wire Wire Line
	6220 1360 5750 1360
Wire Wire Line
	6730 1280 6730 1560
Connection ~ 6730 1560
Wire Wire Line
	6730 1560 5750 1560
Text GLabel 3450 1360 0    50   Output ~ 0
USB_UART_RX
Text GLabel 3450 1560 0    50   Input ~ 0
USB_UART_TX
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3C1475
P 4480 1130
AR Path="/5E939D51/5F3C1475" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F3C1475" Ref="R1308"  Part="1" 
F 0 "R1308" H 4550 1260 50  0000 L CNN
F 1 "100k" V 4480 1130 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4480 1130 50  0001 C CNN
F 3 "" H 4480 1130 50  0001 C CNN
F 4 "0603" H 4550 1180 50  0000 L CNN "display_footprint"
F 5 "1%" H 4550 1090 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4550 1000 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT100KCT-ND" H 4480 1130 50  0001 C CNN "Digi-Key PN"
	1    4480 1130
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3C147E
P 3970 1130
AR Path="/5E939D51/5F3C147E" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F3C147E" Ref="R1306"  Part="1" 
F 0 "R1306" H 4040 1260 50  0000 L CNN
F 1 "100k" V 3970 1130 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3970 1130 50  0001 C CNN
F 3 "" H 3970 1130 50  0001 C CNN
F 4 "0603" H 4040 1180 50  0000 L CNN "display_footprint"
F 5 "1%" H 4040 1090 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4040 1000 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT100KCT-ND" H 3970 1130 50  0001 C CNN "Digi-Key PN"
	1    3970 1130
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 1360 4480 1360
Wire Wire Line
	3450 1560 3970 1560
Wire Wire Line
	4480 1280 4480 1360
Connection ~ 4480 1360
Wire Wire Line
	4480 1360 4950 1360
Wire Wire Line
	3970 1280 3970 1560
Connection ~ 3970 1560
Wire Wire Line
	3970 1560 4950 1560
$Comp
L power:+3.3V #PWR01323
U 1 1 5F3C5E82
P 3970 980
F 0 "#PWR01323" H 3970 830 50  0001 C CNN
F 1 "+3.3V" H 3970 1120 50  0000 C CNN
F 2 "" H 3970 980 50  0001 C CNN
F 3 "" H 3970 980 50  0001 C CNN
	1    3970 980 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01328
U 1 1 5F3C6623
P 4480 980
F 0 "#PWR01328" H 4480 830 50  0001 C CNN
F 1 "+3.3V" H 4480 1120 50  0000 C CNN
F 2 "" H 4480 980 50  0001 C CNN
F 3 "" H 4480 980 50  0001 C CNN
	1    4480 980 
	1    0    0    -1  
$EndComp
Text GLabel 4950 1760 0    50   Input ~ 0
POS5_USB_PGOOD
$Comp
L Custom_Library:C_Custom C1310
U 1 1 5F3FC0E2
P 6090 2040
F 0 "C1310" H 6115 2140 50  0000 L CNN
F 1 "0.1uF" H 6115 1940 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6128 1890 50  0001 C CNN
F 3 "" H 6115 2140 50  0001 C CNN
F 4 "0603" H 5940 2140 50  0000 R CNN "display_footprint"
F 5 "50V" H 5940 2040 50  0000 R CNN "Voltage"
F 6 "X7R" H 5940 1940 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 6515 2540 60  0001 C CNN "Digi-Key PN"
	1    6090 2040
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01335
U 1 1 5F3FC0EC
P 6090 2190
F 0 "#PWR01335" H 6090 1940 50  0001 C CNN
F 1 "GND" H 6090 2040 50  0000 C CNN
F 2 "" H 6090 2190 50  0001 C CNN
F 3 "" H 6090 2190 50  0001 C CNN
	1    6090 2190
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1312
U 1 1 5F402831
P 6800 2040
F 0 "C1312" H 6825 2140 50  0000 L CNN
F 1 "0.1uF" H 6825 1940 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6838 1890 50  0001 C CNN
F 3 "" H 6825 2140 50  0001 C CNN
F 4 "0603" H 6650 2140 50  0000 R CNN "display_footprint"
F 5 "50V" H 6650 2040 50  0000 R CNN "Voltage"
F 6 "X7R" H 6650 1940 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 7225 2540 60  0001 C CNN "Digi-Key PN"
	1    6800 2040
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01341
U 1 1 5F40283B
P 6800 2190
F 0 "#PWR01341" H 6800 1940 50  0001 C CNN
F 1 "GND" H 6800 2040 50  0000 C CNN
F 2 "" H 6800 2190 50  0001 C CNN
F 3 "" H 6800 2190 50  0001 C CNN
	1    6800 2190
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR01340
U 1 1 5F402845
P 6800 1890
F 0 "#PWR01340" H 6800 1740 50  0001 C CNN
F 1 "+3.3V_USB" H 6800 2030 50  0000 C CNN
F 2 "" H 6800 1890 50  0001 C CNN
F 3 "" H 6800 1890 50  0001 C CNN
	1    6800 1890
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01334
U 1 1 5F405693
P 6090 1890
F 0 "#PWR01334" H 6090 1740 50  0001 C CNN
F 1 "+3.3V" H 6090 2030 50  0000 C CNN
F 2 "" H 6090 1890 50  0001 C CNN
F 3 "" H 6090 1890 50  0001 C CNN
	1    6090 1890
	1    0    0    -1  
$EndComp
Wire Wire Line
	7030 3630 6950 3630
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F6EB551
P 3040 3680
AR Path="/5CB7718D/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5A557C58/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5CB25152/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5E697934/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5E939D31/5F6EB551" Ref="C?"  Part="1" 
AR Path="/5E939F76/5F6EB551" Ref="C1303"  Part="1" 
F 0 "C1303" H 3065 3780 50  0000 L CNN
F 1 "10uF" H 3065 3580 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3078 3530 50  0001 C CNN
F 3 "" H 3065 3780 50  0001 C CNN
F 4 "0603" H 2890 3780 50  0000 R CNN "display_footprint"
F 5 "10V" H 2890 3680 50  0000 R CNN "Voltage"
F 6 "X5R" H 2890 3580 50  0000 R CNN "Dielectric"
F 7 "490-10474-1-ND" H 3040 3680 50  0001 C CNN "Digi-Key PN"
	1    3040 3680
	1    0    0    -1  
$EndComp
$EndSCHEMATC
