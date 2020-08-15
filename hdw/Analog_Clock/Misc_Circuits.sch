EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 24 25
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
L power:GND #PWR?
U 1 1 5E28E1DA
P 7700 2490
AR Path="/5B3E071A/5E28E1DA" Ref="#PWR?"  Part="1" 
AR Path="/5E0652BA/5E28E1DA" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E28E1DA" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5E28E1DA" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5E28E1DA" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E28E1DA" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E28E1DA" Ref="#PWR02420"  Part="1" 
F 0 "#PWR02420" H 7700 2240 50  0001 C CNN
F 1 "GND" H 7700 2340 50  0000 C CNN
F 2 "" H 7700 2490 50  0001 C CNN
F 3 "" H 7700 2490 50  0001 C CNN
	1    7700 2490
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7700 2490 7700 2450
Wire Wire Line
	7700 2450 7700 2410
Wire Wire Line
	7700 2450 7600 2450
Wire Wire Line
	7600 2450 7600 2410
Connection ~ 7700 2450
$Comp
L power:+3.3V #PWR?
U 1 1 5E28E1E9
P 7700 1410
AR Path="/5E0652BA/5E28E1E9" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E28E1E9" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5E28E1E9" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5E28E1E9" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E28E1E9" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E28E1E9" Ref="#PWR02419"  Part="1" 
F 0 "#PWR02419" H 7700 1260 50  0001 C CNN
F 1 "+3.3V" H 7700 1550 50  0000 C CNN
F 2 "" H 7700 1410 50  0001 C CNN
F 3 "" H 7700 1410 50  0001 C CNN
	1    7700 1410
	-1   0    0    -1  
$EndComp
Text GLabel 8100 1710 2    50   Input ~ 0
I2C_SCL
Text GLabel 8100 1610 2    50   BiDi ~ 0
I2C_SDA
NoConn ~ 7300 1910
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E28E204
P 7700 3060
AR Path="/5B3E071A/5E28E204" Ref="C?"  Part="1" 
AR Path="/5E0652BA/5E28E204" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/5E28E204" Ref="C?"  Part="1" 
AR Path="/5E0DC084/5E28E204" Ref="C?"  Part="1" 
AR Path="/5E0F9112/5E28E204" Ref="C?"  Part="1" 
AR Path="/5E2843EF/5E28E204" Ref="C?"  Part="1" 
AR Path="/5F360CB6/5E28E204" Ref="C2403"  Part="1" 
F 0 "C2403" H 7725 3160 50  0000 L CNN
F 1 "0.1uF" H 7725 2960 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7738 2910 50  0001 C CNN
F 3 "" H 7725 3160 50  0001 C CNN
F 4 "0603" H 7550 3160 50  0000 R CNN "display_footprint"
F 5 "50V" H 7550 3060 50  0000 R CNN "Voltage"
F 6 "X7R" H 7550 2960 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 3790 -3820 50  0001 C CNN "Digi-Key PN"
	1    7700 3060
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E28E20E
P 7700 2910
AR Path="/5E0652BA/5E28E20E" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E28E20E" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5E28E20E" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5E28E20E" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E28E20E" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E28E20E" Ref="#PWR02421"  Part="1" 
F 0 "#PWR02421" H 7700 2760 50  0001 C CNN
F 1 "+3.3V" H 7700 3050 50  0000 C CNN
F 2 "" H 7700 2910 50  0001 C CNN
F 3 "" H 7700 2910 50  0001 C CNN
	1    7700 2910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E28E218
P 7700 3210
AR Path="/5E0652BA/5E28E218" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E28E218" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5E28E218" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5E28E218" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E28E218" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E28E218" Ref="#PWR02422"  Part="1" 
F 0 "#PWR02422" H 7700 2960 50  0001 C CNN
F 1 "GND" H 7700 3060 50  0000 C CNN
F 2 "" H 7700 3210 50  0001 C CNN
F 3 "" H 7700 3210 50  0001 C CNN
	1    7700 3210
	1    0    0    -1  
$EndComp
Text Notes 5730 2370 0    50   ~ 0
Place away from power components
$Comp
L Device:Buzzer BZ2401
U 1 1 5E2951F3
P 8090 4750
F 0 "BZ2401" H 8240 4800 50  0000 L CNN
F 1 "CST-931RP-A" H 8240 4700 50  0000 L CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_CUI_CST-931RP-A" V 8065 4850 50  0001 C CNN
F 3 "~" V 8065 4850 50  0001 C CNN
F 4 "102-1461-ND" H 8090 4750 50  0001 C CNN "Digi-Key PN"
	1    8090 4750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS214NW Q?
U 1 1 5E2991CF
P 7810 5210
AR Path="/5BAAE16C/5E2991CF" Ref="Q?"  Part="1" 
AR Path="/5BB844FD/5E2991CF" Ref="Q?"  Part="1" 
AR Path="/5C1D5CB6/5E2991CF" Ref="Q?"  Part="1" 
AR Path="/5CB0BC26/5E2991CF" Ref="Q?"  Part="1" 
AR Path="/5E1352F5/5E2991CF" Ref="Q?"  Part="1" 
AR Path="/5E2843EF/5E2991CF" Ref="Q?"  Part="1" 
AR Path="/5F360CB6/5E2991CF" Ref="Q2401"  Part="1" 
F 0 "Q2401" H 8010 5285 50  0000 L CNN
F 1 "BSS214NW" H 8010 5210 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70" H 8010 5135 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/Infineon-BSS214NW-DS-v02_02-en.pdf?fileId=db3a30431b3e89eb011b695aebc01bde" H 7810 5210 50  0001 L CNN
F 4 "BSS214NWH6327XTSA1CT-ND" H 1400 2440 50  0001 C CNN "Digi-Key PN"
	1    7810 5210
	1    0    0    -1  
$EndComp
Wire Wire Line
	7990 4850 7910 4850
Wire Wire Line
	7910 4850 7910 4960
Wire Wire Line
	7990 4650 7910 4650
Wire Wire Line
	7910 4650 7910 4500
Wire Wire Line
	7670 4880 7670 4960
Wire Wire Line
	7670 4960 7910 4960
Connection ~ 7910 4960
Wire Wire Line
	7910 4960 7910 5010
Wire Wire Line
	7670 4580 7670 4500
Wire Wire Line
	7670 4500 7910 4500
$Comp
L power:+3.3V #PWR02423
U 1 1 5E29CC65
P 7910 4420
F 0 "#PWR02423" H 7910 4270 50  0001 C CNN
F 1 "+3.3V" H 7910 4560 50  0000 C CNN
F 2 "" H 7910 4420 50  0001 C CNN
F 3 "" H 7910 4420 50  0001 C CNN
	1    7910 4420
	1    0    0    -1  
$EndComp
Wire Wire Line
	7910 4420 7910 4500
Connection ~ 7910 4500
$Comp
L power:GND #PWR02424
U 1 1 5E29F69F
P 7910 5410
F 0 "#PWR02424" H 7910 5160 50  0001 C CNN
F 1 "GND" H 7910 5260 50  0000 C CNN
F 2 "" H 7910 5410 50  0001 C CNN
F 3 "" H 7910 5410 50  0001 C CNN
	1    7910 5410
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2DD231
P 5380 5490
AR Path="/5A0BC776/5E2DD231" Ref="R?"  Part="1" 
AR Path="/5E2843EF/5E2DD231" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5E2DD231" Ref="R2405"  Part="1" 
F 0 "R2405" H 5320 5490 50  0000 R CNN
F 1 "10k" V 5380 5490 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5380 5490 50  0001 C CNN
F 3 "" H 5380 5490 50  0001 C CNN
F 4 "0603" H 5450 5570 50  0000 L CNN "display_footprint"
F 5 "1%" H 5450 5490 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5450 5420 50  0000 L CNN "Wattage"
F 7 "" H 1290 -100 50  0001 C CNN "Digi-Key PN"
	1    5380 5490
	-1   0    0    1   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2DDD5F
P 4750 5490
AR Path="/5A0BC776/5E2DDD5F" Ref="R?"  Part="1" 
AR Path="/5E2843EF/5E2DDD5F" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5E2DDD5F" Ref="R2402"  Part="1" 
F 0 "R2402" H 4690 5490 50  0000 R CNN
F 1 "10k" V 4750 5490 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4750 5490 50  0001 C CNN
F 3 "" H 4750 5490 50  0001 C CNN
F 4 "0603" H 4820 5570 50  0000 L CNN "display_footprint"
F 5 "1%" H 4820 5490 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4820 5420 50  0000 L CNN "Wattage"
F 7 "" H 660 -100 50  0001 C CNN "Digi-Key PN"
	1    4750 5490
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02410
U 1 1 5E2DE657
P 4750 5640
F 0 "#PWR02410" H 4750 5390 50  0001 C CNN
F 1 "GND" H 4750 5490 50  0000 C CNN
F 2 "" H 4750 5640 50  0001 C CNN
F 3 "" H 4750 5640 50  0001 C CNN
	1    4750 5640
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02413
U 1 1 5E2DEBD7
P 5380 5640
F 0 "#PWR02413" H 5380 5390 50  0001 C CNN
F 1 "GND" H 5380 5490 50  0000 C CNN
F 2 "" H 5380 5640 50  0001 C CNN
F 3 "" H 5380 5640 50  0001 C CNN
	1    5380 5640
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02415
U 1 1 5E2DEFF7
P 5830 5310
F 0 "#PWR02415" H 5830 5060 50  0001 C CNN
F 1 "GND" H 5830 5160 50  0000 C CNN
F 2 "" H 5830 5310 50  0001 C CNN
F 3 "" H 5830 5310 50  0001 C CNN
	1    5830 5310
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02414
U 1 1 5E2DF499
P 5830 5110
F 0 "#PWR02414" H 5830 4960 50  0001 C CNN
F 1 "+3.3V" H 5830 5250 50  0000 C CNN
F 2 "" H 5830 5110 50  0001 C CNN
F 3 "" H 5830 5110 50  0001 C CNN
	1    5830 5110
	1    0    0    -1  
$EndComp
Wire Wire Line
	5530 5160 4750 5160
Wire Wire Line
	5530 5260 5380 5260
Wire Wire Line
	4750 5340 4750 5160
Wire Wire Line
	5380 5340 5380 5260
Connection ~ 5380 5260
Wire Wire Line
	5380 5260 4670 5260
Text GLabel 4670 5260 0    50   Input ~ 0
Buzzer_Enable
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E2EC7D3
P 5990 5900
AR Path="/5B3E071A/5E2EC7D3" Ref="C?"  Part="1" 
AR Path="/5E0652BA/5E2EC7D3" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/5E2EC7D3" Ref="C?"  Part="1" 
AR Path="/5E0DC084/5E2EC7D3" Ref="C?"  Part="1" 
AR Path="/5E0F9112/5E2EC7D3" Ref="C?"  Part="1" 
AR Path="/5E2843EF/5E2EC7D3" Ref="C?"  Part="1" 
AR Path="/5F360CB6/5E2EC7D3" Ref="C2402"  Part="1" 
F 0 "C2402" H 6015 6000 50  0000 L CNN
F 1 "0.1uF" H 6015 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6028 5750 50  0001 C CNN
F 3 "" H 6015 6000 50  0001 C CNN
F 4 "0603" H 5840 6000 50  0000 R CNN "display_footprint"
F 5 "50V" H 5840 5900 50  0000 R CNN "Voltage"
F 6 "X7R" H 5840 5800 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 2080 -980 50  0001 C CNN "Digi-Key PN"
	1    5990 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E2EC7DD
P 5990 5750
AR Path="/5E0652BA/5E2EC7DD" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E2EC7DD" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5E2EC7DD" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5E2EC7DD" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E2EC7DD" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E2EC7DD" Ref="#PWR02416"  Part="1" 
F 0 "#PWR02416" H 5990 5600 50  0001 C CNN
F 1 "+3.3V" H 5990 5890 50  0000 C CNN
F 2 "" H 5990 5750 50  0001 C CNN
F 3 "" H 5990 5750 50  0001 C CNN
	1    5990 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2EC7E7
P 5990 6050
AR Path="/5E0652BA/5E2EC7E7" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E2EC7E7" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5E2EC7E7" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5E2EC7E7" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E2EC7E7" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E2EC7E7" Ref="#PWR02417"  Part="1" 
F 0 "#PWR02417" H 5990 5800 50  0001 C CNN
F 1 "GND" H 5990 5900 50  0000 C CNN
F 2 "" H 5990 6050 50  0001 C CNN
F 3 "" H 5990 6050 50  0001 C CNN
	1    5990 6050
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2F537E
P 7530 5440
AR Path="/5A0BC776/5E2F537E" Ref="R?"  Part="1" 
AR Path="/5E2843EF/5E2F537E" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5E2F537E" Ref="R2407"  Part="1" 
F 0 "R2407" H 7470 5440 50  0000 R CNN
F 1 "10k" V 7530 5440 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7530 5440 50  0001 C CNN
F 3 "" H 7530 5440 50  0001 C CNN
F 4 "0603" H 7600 5520 50  0000 L CNN "display_footprint"
F 5 "1%" H 7600 5440 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 7600 5370 50  0000 L CNN "Wattage"
F 7 "" H 3440 -150 50  0001 C CNN "Digi-Key PN"
	1    7530 5440
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02418
U 1 1 5E2F5BEE
P 7530 5590
F 0 "#PWR02418" H 7530 5340 50  0001 C CNN
F 1 "GND" H 7530 5440 50  0000 C CNN
F 2 "" H 7530 5590 50  0001 C CNN
F 3 "" H 7530 5590 50  0001 C CNN
	1    7530 5590
	1    0    0    -1  
$EndComp
Wire Wire Line
	7610 5210 7530 5210
Wire Wire Line
	7530 5210 7530 5290
$Comp
L Custom_Library:R_Custom R2406
U 1 1 5E2FB0E2
P 6900 5210
F 0 "R2406" V 6800 5210 50  0000 C CNN
F 1 "10" V 6900 5210 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6900 5210 50  0001 C CNN
F 3 "" H 6900 5210 50  0001 C CNN
F 4 "" H 7200 5610 60  0001 C CNN "Digi-Key PN"
F 5 "0603" V 7000 5210 50  0000 C CNN "display_footprint"
F 6 "1%" V 7100 5210 50  0000 C CNN "Tolerance"
F 7 "1/10W" V 7200 5210 50  0000 C CNN "Wattage"
	1    6900 5210
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 5210 7530 5210
Connection ~ 7530 5210
Wire Wire Line
	6750 5210 6080 5210
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5E3ACDAF
P 2690 960
AR Path="/5B583C3D/5E3ACDAF" Ref="J?"  Part="1" 
AR Path="/5E2843EF/5E3ACDAF" Ref="J?"  Part="1" 
AR Path="/5F360CB6/5E3ACDAF" Ref="J2401"  Part="1" 
F 0 "J2401" H 2690 1160 50  0000 C CNN
F 1 "I2C" H 2690 760 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2690 960 50  0001 C CNN
F 3 "~" H 2690 960 50  0001 C CNN
	1    2690 960 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3ACDB5
P 2410 1140
AR Path="/5B583C3D/5E3ACDB5" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E3ACDB5" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E3ACDB5" Ref="#PWR02401"  Part="1" 
F 0 "#PWR02401" H 2410 890 50  0001 C CNN
F 1 "GND" H 2410 990 50  0000 C CNN
F 2 "" H 2410 1140 50  0001 C CNN
F 3 "" H 2410 1140 50  0001 C CNN
	1    2410 1140
	1    0    0    -1  
$EndComp
Wire Wire Line
	2410 1140 2410 1060
Wire Wire Line
	2410 1060 2490 1060
Text GLabel 2490 860  0    50   UnSpc ~ 0
I2C_SCL
Text GLabel 2490 960  0    50   UnSpc ~ 0
I2C_SDA
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5E3ACDBF
P 2690 1710
AR Path="/5B583C3D/5E3ACDBF" Ref="J?"  Part="1" 
AR Path="/5E2843EF/5E3ACDBF" Ref="J?"  Part="1" 
AR Path="/5F360CB6/5E3ACDBF" Ref="J2402"  Part="1" 
F 0 "J2402" H 2690 1910 50  0000 C CNN
F 1 "USB UART" H 2690 1510 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2690 1710 50  0001 C CNN
F 3 "~" H 2690 1710 50  0001 C CNN
	1    2690 1710
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3ACDC5
P 2410 1890
AR Path="/5B583C3D/5E3ACDC5" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E3ACDC5" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E3ACDC5" Ref="#PWR02402"  Part="1" 
F 0 "#PWR02402" H 2410 1640 50  0001 C CNN
F 1 "GND" H 2410 1740 50  0000 C CNN
F 2 "" H 2410 1890 50  0001 C CNN
F 3 "" H 2410 1890 50  0001 C CNN
	1    2410 1890
	1    0    0    -1  
$EndComp
Wire Wire Line
	2410 1890 2410 1810
Wire Wire Line
	2410 1810 2490 1810
Text GLabel 2490 1610 0    50   UnSpc ~ 0
USB_UART_TX
Text GLabel 2490 1710 0    50   UnSpc ~ 0
USB_UART_RX
$Comp
L Diode:MBR0580 D?
U 1 1 5E3E32E2
P 7670 4730
AR Path="/5A0BC776/5E3E32E2" Ref="D?"  Part="1" 
AR Path="/5E2843EF/5E3E32E2" Ref="D?"  Part="1" 
AR Path="/5F360CB6/5E3E32E2" Ref="D2401"  Part="1" 
F 0 "D2401" H 7670 4830 50  0000 C CNN
F 1 "MBR0580" H 7670 4630 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7670 4555 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 7670 4730 50  0001 C CNN
F 4 "MBR0580S1-7DICT-ND" H 7670 4730 50  0001 C CNN "Digi-Key PN"
	1    7670 4730
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:LTC6900 U2401
U 1 1 5E4B6BC9
P 2920 5160
F 0 "U2401" H 2970 5410 50  0000 L CNN
F 1 "LTC6900" H 2970 4910 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2920 5760 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/6900fa.pdf" H 2920 5760 50  0001 C CNN
F 4 "LTC6900CS5#TRMPBFCT-ND" H 2920 5160 50  0001 C CNN "Digi-Key PN"
	1    2920 5160
	1    0    0    -1  
$EndComp
Wire Wire Line
	3320 5160 4750 5160
Connection ~ 4750 5160
$Comp
L power:GND #PWR02407
U 1 1 5E4B894F
P 2920 5460
F 0 "#PWR02407" H 2920 5210 50  0001 C CNN
F 1 "GND" H 2920 5310 50  0000 C CNN
F 2 "" H 2920 5460 50  0001 C CNN
F 3 "" H 2920 5460 50  0001 C CNN
	1    2920 5460
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02406
U 1 1 5E4BE0B8
P 2920 4860
F 0 "#PWR02406" H 2920 4710 50  0001 C CNN
F 1 "+3.3V" H 2920 5000 50  0000 C CNN
F 2 "" H 2920 4860 50  0001 C CNN
F 3 "" H 2920 4860 50  0001 C CNN
	1    2920 4860
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02405
U 1 1 5E4C0C08
P 2520 5260
F 0 "#PWR02405" H 2520 5110 50  0001 C CNN
F 1 "+3.3V" V 2520 5400 50  0000 L CNN
F 2 "" H 2520 5260 50  0001 C CNN
F 3 "" H 2520 5260 50  0001 C CNN
	1    2520 5260
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E4C333E
P 3270 6060
AR Path="/5B3E071A/5E4C333E" Ref="C?"  Part="1" 
AR Path="/5E0652BA/5E4C333E" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/5E4C333E" Ref="C?"  Part="1" 
AR Path="/5E0DC084/5E4C333E" Ref="C?"  Part="1" 
AR Path="/5E0F9112/5E4C333E" Ref="C?"  Part="1" 
AR Path="/5E2843EF/5E4C333E" Ref="C?"  Part="1" 
AR Path="/5F360CB6/5E4C333E" Ref="C2401"  Part="1" 
F 0 "C2401" H 3295 6160 50  0000 L CNN
F 1 "0.1uF" H 3295 5960 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3308 5910 50  0001 C CNN
F 3 "" H 3295 6160 50  0001 C CNN
F 4 "0603" H 3120 6160 50  0000 R CNN "display_footprint"
F 5 "50V" H 3120 6060 50  0000 R CNN "Voltage"
F 6 "X7R" H 3120 5960 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H -640 -820 50  0001 C CNN "Digi-Key PN"
	1    3270 6060
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E4C3348
P 3270 5910
AR Path="/5E0652BA/5E4C3348" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E4C3348" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5E4C3348" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5E4C3348" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E4C3348" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E4C3348" Ref="#PWR02408"  Part="1" 
F 0 "#PWR02408" H 3270 5760 50  0001 C CNN
F 1 "+3.3V" H 3270 6050 50  0000 C CNN
F 2 "" H 3270 5910 50  0001 C CNN
F 3 "" H 3270 5910 50  0001 C CNN
	1    3270 5910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4C3352
P 3270 6210
AR Path="/5E0652BA/5E4C3352" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E4C3352" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5E4C3352" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5E4C3352" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5E4C3352" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5E4C3352" Ref="#PWR02409"  Part="1" 
F 0 "#PWR02409" H 3270 5960 50  0001 C CNN
F 1 "GND" H 3270 6060 50  0000 C CNN
F 2 "" H 3270 6210 50  0001 C CNN
F 3 "" H 3270 6210 50  0001 C CNN
	1    3270 6210
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E4C9565
P 2440 4830
AR Path="/5BB27BA3/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5A557C58/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5E2843EF/5E4C9565" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5E4C9565" Ref="R2401"  Part="1" 
F 0 "R2401" H 2360 4830 50  0000 R CNN
F 1 "1.07M" V 2440 4830 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2440 4830 50  0001 C CNN
F 3 "" H 2440 4830 50  0001 C CNN
F 4 "0603" H 2540 4910 50  0000 L CNN "display_footprint"
F 5 "1%" H 2540 4830 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2550 4750 50  0000 L CNN "Wattage"
F 7 "" H 2440 4830 50  0001 C CNN "Digi-Key PN"
	1    2440 4830
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02404
U 1 1 5E4C99BF
P 2440 4680
F 0 "#PWR02404" H 2440 4530 50  0001 C CNN
F 1 "+3.3V" H 2440 4820 50  0000 C CNN
F 2 "" H 2440 4680 50  0001 C CNN
F 3 "" H 2440 4680 50  0001 C CNN
	1    2440 4680
	1    0    0    -1  
$EndComp
Wire Wire Line
	2440 4980 2440 5060
Wire Wire Line
	2440 5060 2520 5060
Text Notes 3430 5010 0    50   ~ 0
Fosc ~~ 2kHz
$Comp
L Custom_Library:I2C_Address DOC?
U 1 1 5E28E222
P 8600 2930
AR Path="/5E0652BA/5E28E222" Ref="DOC?"  Part="1" 
AR Path="/5E0A0E29/5E28E222" Ref="DOC?"  Part="1" 
AR Path="/5E0DC084/5E28E222" Ref="DOC?"  Part="1" 
AR Path="/5E0F9112/5E28E222" Ref="DOC?"  Part="1" 
AR Path="/5E2843EF/5E28E222" Ref="DOC?"  Part="1" 
AR Path="/5F360CB6/5E28E222" Ref="DOC2401"  Part="1" 
F 0 "DOC2401" H 8600 3180 60  0001 C CNN
F 1 "0x1C" H 8150 2930 60  0000 L CNN
F 2 "" H 8600 3280 60  0001 C CNN
F 3 "" H 8600 3280 60  0001 C CNN
	1    8600 2930
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G08_Power U2402
U 1 1 5F37D042
P 5830 5210
F 0 "U2402" H 5980 5360 50  0000 L CNN
F 1 "74LVC1G08" H 5980 5060 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5830 5210 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5830 5210 50  0001 C CNN
F 4 "296-11602-1-ND" H 5830 5210 50  0001 C CNN "Digi-Key PN"
	1    5830 5210
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:MCP9804_DFN U?
U 1 1 5F37FABC
P 7700 1910
AR Path="/5B3E071A/5F37FABC" Ref="U?"  Part="1" 
AR Path="/5E0652BA/5F37FABC" Ref="U?"  Part="1" 
AR Path="/5E0A0E29/5F37FABC" Ref="U?"  Part="1" 
AR Path="/5E052856/5F37FABC" Ref="U?"  Part="1" 
AR Path="/5EAE2D84/5F37FABC" Ref="U?"  Part="1" 
AR Path="/5E939D24/5F37FABC" Ref="U?"  Part="1" 
AR Path="/5E939F86/5F37FABC" Ref="U?"  Part="1" 
AR Path="/5F360CB6/5F37FABC" Ref="U2403"  Part="1" 
F 0 "U2403" H 7450 2360 50  0000 C CNN
F 1 "MCP9804" H 8100 2360 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.5mm" H 6600 1410 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 7450 2360 50  0001 C CNN
F 4 "MCP9804T-E/MCCT-ND" H 7700 1910 50  0001 C CNN "Digi-Key PN"
F 5 "Telemetry" H 8100 2440 50  0000 C CNN "Configuration"
	1    7700 1910
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5F3876F2
P 2690 2630
AR Path="/5B583C3D/5F3876F2" Ref="J?"  Part="1" 
AR Path="/5E2843EF/5F3876F2" Ref="J?"  Part="1" 
AR Path="/5F360CB6/5F3876F2" Ref="J2403"  Part="1" 
F 0 "J2403" H 2690 2830 50  0000 C CNN
F 1 "DAC SPI" H 2690 2430 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2690 2630 50  0001 C CNN
F 3 "~" H 2690 2630 50  0001 C CNN
	1    2690 2630
	1    0    0    -1  
$EndComp
Text GLabel 2490 2530 0    50   Input ~ 0
DAC_SPI_MOSI
Text GLabel 2490 2630 0    50   Input ~ 0
DAC_SPI_SCLK
$Comp
L power:GND #PWR?
U 1 1 5F38DAFD
P 2410 2810
AR Path="/5B583C3D/5F38DAFD" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5F38DAFD" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5F38DAFD" Ref="#PWR02403"  Part="1" 
F 0 "#PWR02403" H 2410 2560 50  0001 C CNN
F 1 "GND" H 2410 2660 50  0000 C CNN
F 2 "" H 2410 2810 50  0001 C CNN
F 3 "" H 2410 2810 50  0001 C CNN
	1    2410 2810
	1    0    0    -1  
$EndComp
Wire Wire Line
	2410 2810 2410 2730
Wire Wire Line
	2410 2730 2490 2730
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3923E3
P 4910 3200
AR Path="/5BB27BA3/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5F280E04/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F3923E3" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5F3923E3" Ref="R2403"  Part="1" 
F 0 "R2403" H 4830 3200 50  0000 R CNN
F 1 "10k" V 4910 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4910 3200 50  0001 C CNN
F 3 "" H 4910 3200 50  0001 C CNN
F 4 "0603" H 5010 3280 50  0000 L CNN "display_footprint"
F 5 "1%" H 5010 3200 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5020 3120 50  0000 L CNN "Wattage"
F 7 "" H 5210 3600 60  0001 C CNN "Digi-Key PN"
	1    4910 3200
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3928EC
P 4910 3660
AR Path="/5BB27BA3/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5F280E04/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F3928EC" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5F3928EC" Ref="R2404"  Part="1" 
F 0 "R2404" H 4830 3660 50  0000 R CNN
F 1 "10" V 4910 3660 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4910 3660 50  0001 C CNN
F 3 "" H 4910 3660 50  0001 C CNN
F 4 "0603" H 5010 3740 50  0000 L CNN "display_footprint"
F 5 "1%" H 5010 3660 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5020 3580 50  0000 L CNN "Wattage"
F 7 "Telemetry" H 5200 3490 50  0000 C CNN "Configuration"
	1    4910 3660
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02411
U 1 1 5F39383E
P 4910 3050
F 0 "#PWR02411" H 4910 2900 50  0001 C CNN
F 1 "+3.3V" H 4910 3190 50  0000 C CNN
F 2 "" H 4910 3050 50  0001 C CNN
F 3 "" H 4910 3050 50  0001 C CNN
	1    4910 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02412
U 1 1 5F394470
P 4910 3810
F 0 "#PWR02412" H 4910 3560 50  0001 C CNN
F 1 "GND" H 4910 3660 50  0000 C CNN
F 2 "" H 4910 3810 50  0001 C CNN
F 3 "" H 4910 3810 50  0001 C CNN
	1    4910 3810
	1    0    0    -1  
$EndComp
Wire Wire Line
	4910 3350 4910 3430
Text GLabel 4990 3430 2    50   UnSpc ~ 0
Telemetry_Hardstrap
Wire Wire Line
	4990 3430 4910 3430
Connection ~ 4910 3430
Wire Wire Line
	4910 3430 4910 3510
$Comp
L power:+3.3V #PWR?
U 1 1 5F4DD4B8
P 8100 2210
AR Path="/5E0652BA/5F4DD4B8" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5F4DD4B8" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5F4DD4B8" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5F4DD4B8" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5F4DD4B8" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5F4DD4B8" Ref="#PWR02427"  Part="1" 
F 0 "#PWR02427" H 8100 2060 50  0001 C CNN
F 1 "+3.3V" V 8100 2350 50  0000 L CNN
F 2 "" H 8100 2210 50  0001 C CNN
F 3 "" H 8100 2210 50  0001 C CNN
	1    8100 2210
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4DF719
P 8100 2110
AR Path="/5B3E071A/5F4DF719" Ref="#PWR?"  Part="1" 
AR Path="/5E0652BA/5F4DF719" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5F4DF719" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5F4DF719" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5F4DF719" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5F4DF719" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5F4DF719" Ref="#PWR02426"  Part="1" 
F 0 "#PWR02426" H 8100 1860 50  0001 C CNN
F 1 "GND" V 8100 1960 50  0000 R CNN
F 2 "" H 8100 2110 50  0001 C CNN
F 3 "" H 8100 2110 50  0001 C CNN
	1    8100 2110
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4DFB32
P 8100 2010
AR Path="/5B3E071A/5F4DFB32" Ref="#PWR?"  Part="1" 
AR Path="/5E0652BA/5F4DFB32" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5F4DFB32" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC084/5F4DFB32" Ref="#PWR?"  Part="1" 
AR Path="/5E0F9112/5F4DFB32" Ref="#PWR?"  Part="1" 
AR Path="/5E2843EF/5F4DFB32" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5F4DFB32" Ref="#PWR02425"  Part="1" 
F 0 "#PWR02425" H 8100 1760 50  0001 C CNN
F 1 "GND" V 8100 1860 50  0000 R CNN
F 2 "" H 8100 2010 50  0001 C CNN
F 3 "" H 8100 2010 50  0001 C CNN
	1    8100 2010
	0    -1   1    0   
$EndComp
$EndSCHEMATC
