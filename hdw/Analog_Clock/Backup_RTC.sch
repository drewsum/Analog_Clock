EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 12 25
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
L Timer_RTC:DS3231MZ U1201
U 1 1 5E217505
P 5050 2000
F 0 "U1201" H 4750 2350 50  0000 R CNN
F 1 "DS3231MZ" H 5500 2350 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5050 1500 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231M.pdf" H 5050 1400 50  0001 C CNN
F 4 "DS3231MZ+-ND" H 5050 2000 50  0001 C CNN "Digi-Key PN"
	1    5050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01214
U 1 1 5E217898
P 5050 2400
F 0 "#PWR01214" H 5050 2150 50  0001 C CNN
F 1 "GND" H 5050 2250 50  0000 C CNN
F 2 "" H 5050 2400 50  0001 C CNN
F 3 "" H 5050 2400 50  0001 C CNN
	1    5050 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01213
U 1 1 5E217DBC
P 5050 1600
F 0 "#PWR01213" H 5050 1450 50  0001 C CNN
F 1 "+3.3V" H 5130 1740 50  0000 C CNN
F 2 "" H 5050 1600 50  0001 C CNN
F 3 "" H 5050 1600 50  0001 C CNN
	1    5050 1600
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:VBAT #PWR01212
U 1 1 5E2180E2
P 4950 1600
F 0 "#PWR01212" H 4950 1450 50  0001 C CNN
F 1 "VBAT" H 4870 1740 50  0000 C CNN
F 2 "" H 4950 1600 50  0001 C CNN
F 3 "" H 4950 1600 50  0001 C CNN
	1    4950 1600
	1    0    0    -1  
$EndComp
NoConn ~ 5550 2100
NoConn ~ 4550 2200
Text GLabel 4550 1900 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 4550 1800 0    50   Input ~ 0
I2C_SCL
$Comp
L Custom_Library:C_Custom C1203
U 1 1 5E21E9AC
P 5470 3190
F 0 "C1203" H 5495 3290 50  0000 L CNN
F 1 "0.1uF" H 5495 3090 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5508 3040 50  0001 C CNN
F 3 "" H 5495 3290 50  0001 C CNN
F 4 "0603" H 5320 3290 50  0000 R CNN "display_footprint"
F 5 "50V" H 5320 3190 50  0000 R CNN "Voltage"
F 6 "X7R" H 5320 3090 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 5470 3190 50  0001 C CNN "Digi-Key PN"
	1    5470 3190
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01217
U 1 1 5E21E9B2
P 5470 3040
F 0 "#PWR01217" H 5470 2890 50  0001 C CNN
F 1 "+3.3V" H 5470 3180 50  0000 C CNN
F 2 "" H 5470 3040 50  0000 C CNN
F 3 "" H 5470 3040 50  0000 C CNN
	1    5470 3040
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01218
U 1 1 5E21E9B8
P 5470 3340
F 0 "#PWR01218" H 5470 3090 50  0001 C CNN
F 1 "GND" H 5470 3190 50  0000 C CNN
F 2 "" H 5470 3340 50  0001 C CNN
F 3 "" H 5470 3340 50  0001 C CNN
	1    5470 3340
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1202
U 1 1 5E220EDC
P 4740 3190
F 0 "C1202" H 4765 3290 50  0000 L CNN
F 1 "0.1uF" H 4765 3090 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4778 3040 50  0001 C CNN
F 3 "" H 4765 3290 50  0001 C CNN
F 4 "0603" H 4590 3290 50  0000 R CNN "display_footprint"
F 5 "50V" H 4590 3190 50  0000 R CNN "Voltage"
F 6 "X7R" H 4590 3090 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 4740 3190 50  0001 C CNN "Digi-Key PN"
	1    4740 3190
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01210
U 1 1 5E220EE8
P 4740 3340
F 0 "#PWR01210" H 4740 3090 50  0001 C CNN
F 1 "GND" H 4740 3190 50  0000 C CNN
F 2 "" H 4740 3340 50  0001 C CNN
F 3 "" H 4740 3340 50  0001 C CNN
	1    4740 3340
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:VBAT #PWR01209
U 1 1 5E220F81
P 4740 3040
F 0 "#PWR01209" H 4740 2890 50  0001 C CNN
F 1 "VBAT" H 4740 3190 50  0000 C CNN
F 2 "" H 4740 3040 50  0001 C CNN
F 3 "" H 4740 3040 50  0001 C CNN
	1    4740 3040
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC1201
U 1 1 5E990E17
P 6810 2550
F 0 "DOC1201" H 6810 2800 60  0001 C CNN
F 1 "0x68" H 6360 2550 60  0000 L CNN
F 2 "" H 6810 2900 60  0001 C CNN
F 3 "" H 6810 2900 60  0001 C CNN
	1    6810 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1201
U 1 1 5EA04714
P 1140 4760
F 0 "BT1201" H 1240 4860 50  0000 L CNN
F 1 "CR1616" H 1240 4760 50  0000 L CNN
F 2 "" V 1140 4820 50  0001 C CNN
F 3 "~" V 1140 4820 50  0001 C CNN
F 4 "P034-ND" H 1140 4760 50  0001 C CNN "Digi-Key PN"
	1    1140 4760
	1    0    0    -1  
$EndComp
NoConn ~ 1140 4860
NoConn ~ 1140 4560
$Comp
L Device:Battery_Cell BT1202
U 1 1 5EA086C4
P 1880 4760
F 0 "BT1202" H 1980 4860 50  0000 L CNN
F 1 "CR1616_Holder" H 1980 4760 50  0000 L CNN
F 2 "Custom Footprints Library:BAT_BU1632SM-JJ-GTR" V 1880 4820 50  0001 C CNN
F 3 "~" V 1880 4820 50  0001 C CNN
F 4 "BU1632SM-JJ-GCT-ND" H 1880 4760 50  0001 C CNN "Digi-Key PN"
	1    1880 4760
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01203
U 1 1 5EA0966C
P 1880 4860
F 0 "#PWR01203" H 1880 4610 50  0001 C CNN
F 1 "GND" H 1880 4710 50  0000 C CNN
F 2 "" H 1880 4860 50  0001 C CNN
F 3 "" H 1880 4860 50  0001 C CNN
	1    1880 4860
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:VBAT #PWR01202
U 1 1 5EA09B4F
P 1880 4560
F 0 "#PWR01202" H 1880 4410 50  0001 C CNN
F 1 "VBAT" H 1880 4710 50  0000 C CNN
F 2 "" H 1880 4560 50  0001 C CNN
F 3 "" H 1880 4560 50  0001 C CNN
	1    1880 4560
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:TLV6700 U1202
U 1 1 5F2BD087
P 5330 4870
F 0 "U1202" H 5630 4370 50  0000 C CNN
F 1 "TLV6700" H 5330 4870 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 5330 5470 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlv6700.pdf" H 5330 4870 60  0001 C CNN
F 4 "296-51696-1-ND" H 5330 4870 50  0001 C CNN "Digi-Key PN"
	1    5330 4870
	1    0    0    -1  
$EndComp
NoConn ~ 5880 5120
$Comp
L power:GND #PWR01211
U 1 1 5F2BE5E6
P 4780 5120
F 0 "#PWR01211" H 4780 4870 50  0001 C CNN
F 1 "GND" V 4780 4970 50  0000 R CNN
F 2 "" H 4780 5120 50  0001 C CNN
F 3 "" H 4780 5120 50  0001 C CNN
	1    4780 5120
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01216
U 1 1 5F2BEAFF
P 5330 5470
F 0 "#PWR01216" H 5330 5220 50  0001 C CNN
F 1 "GND" H 5330 5320 50  0000 C CNN
F 2 "" H 5330 5470 50  0001 C CNN
F 3 "" H 5330 5470 50  0001 C CNN
	1    5330 5470
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01215
U 1 1 5F2C04CE
P 5330 4270
F 0 "#PWR01215" H 5330 4120 50  0001 C CNN
F 1 "+3.3V" H 5330 4410 50  0000 C CNN
F 2 "" H 5330 4270 50  0001 C CNN
F 3 "" H 5330 4270 50  0001 C CNN
	1    5330 4270
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01208
U 1 1 5F2C3EEE
P 4130 5000
F 0 "#PWR01208" H 4130 4750 50  0001 C CNN
F 1 "GND" H 4130 4850 50  0000 C CNN
F 2 "" H 4130 5000 50  0001 C CNN
F 3 "" H 4130 5000 50  0001 C CNN
	1    4130 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4780 4620 4130 4620
Wire Wire Line
	4130 4620 4130 4700
$Comp
L Custom_Library:VBAT #PWR01207
U 1 1 5F2C590F
P 4130 4240
F 0 "#PWR01207" H 4130 4090 50  0001 C CNN
F 1 "VBAT" H 4130 4390 50  0000 C CNN
F 2 "" H 4130 4240 50  0001 C CNN
F 3 "" H 4130 4240 50  0001 C CNN
	1    4130 4240
	1    0    0    -1  
$EndComp
Wire Wire Line
	4130 4540 4130 4620
Connection ~ 4130 4620
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F2C6099
P 6210 4390
AR Path="/5BAAE1F3/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5E01BCC3/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5E697952/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5EAE2F15/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5E939EDE/5F2C6099" Ref="R?"  Part="1" 
AR Path="/5E939EED/5F2C6099" Ref="R1203"  Part="1" 
F 0 "R1203" H 6150 4390 50  0000 R CNN
F 1 "10k" V 6210 4390 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6210 4390 50  0001 C CNN
F 3 "" H 6210 4390 50  0001 C CNN
F 4 "0603" H 6280 4470 50  0000 L CNN "display_footprint"
F 5 "1%" H 6280 4390 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 6280 4320 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 6210 4390 50  0001 C CNN "Digi-Key PN"
	1    6210 4390
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01221
U 1 1 5F2C6F13
P 6210 4240
F 0 "#PWR01221" H 6210 4090 50  0001 C CNN
F 1 "+3.3V" H 6210 4380 50  0000 C CNN
F 2 "" H 6210 4240 50  0001 C CNN
F 3 "" H 6210 4240 50  0001 C CNN
	1    6210 4240
	1    0    0    -1  
$EndComp
Wire Wire Line
	6210 4540 6210 4620
Wire Wire Line
	6210 4620 5880 4620
Text GLabel 6290 4620 2    50   Output ~ 0
VBAT_PGOOD
Wire Wire Line
	6290 4620 6210 4620
Connection ~ 6210 4620
Text Notes 6120 4910 0    50   ~ 0
Falling threshold set to 2.5V
$Comp
L power:GND #PWR01206
U 1 1 5F2CCEAA
P 3950 3340
F 0 "#PWR01206" H 3950 3090 50  0001 C CNN
F 1 "GND" H 3950 3190 50  0000 C CNN
F 2 "" H 3950 3340 50  0001 C CNN
F 3 "" H 3950 3340 50  0001 C CNN
	1    3950 3340
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F2CCEB4
P 3950 3190
AR Path="/5CB7718D/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5A557C58/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5CB25152/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5E697934/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5E939D31/5F2CCEB4" Ref="C?"  Part="1" 
AR Path="/5E939EED/5F2CCEB4" Ref="C1201"  Part="1" 
F 0 "C1201" H 3975 3290 50  0000 L CNN
F 1 "10uF" H 3975 3090 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3988 3040 50  0001 C CNN
F 3 "" H 3975 3290 50  0001 C CNN
F 4 "0603" H 3800 3290 50  0000 R CNN "display_footprint"
F 5 "10V" H 3800 3190 50  0000 R CNN "Voltage"
F 6 "X5R" H 3800 3090 50  0000 R CNN "Dielectric"
F 7 "490-10474-1-ND" H 3950 3190 50  0001 C CNN "Digi-Key PN"
	1    3950 3190
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:VBAT #PWR01205
U 1 1 5F2CCEF3
P 3950 3040
F 0 "#PWR01205" H 3950 2890 50  0001 C CNN
F 1 "VBAT" H 3950 3190 50  0000 C CNN
F 2 "" H 3950 3040 50  0001 C CNN
F 3 "" H 3950 3040 50  0001 C CNN
	1    3950 3040
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1204
U 1 1 5F3B2874
P 5990 5960
F 0 "C1204" H 6015 6060 50  0000 L CNN
F 1 "0.1uF" H 6015 5860 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6028 5810 50  0001 C CNN
F 3 "" H 6015 6060 50  0001 C CNN
F 4 "0603" H 5840 6060 50  0000 R CNN "display_footprint"
F 5 "50V" H 5840 5960 50  0000 R CNN "Voltage"
F 6 "X7R" H 5840 5860 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 5990 5960 50  0001 C CNN "Digi-Key PN"
	1    5990 5960
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01219
U 1 1 5F3B287A
P 5990 5810
F 0 "#PWR01219" H 5990 5660 50  0001 C CNN
F 1 "+3.3V" H 5990 5950 50  0000 C CNN
F 2 "" H 5990 5810 50  0000 C CNN
F 3 "" H 5990 5810 50  0000 C CNN
	1    5990 5810
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01220
U 1 1 5F3B2880
P 5990 6110
F 0 "#PWR01220" H 5990 5860 50  0001 C CNN
F 1 "GND" H 5990 5960 50  0000 C CNN
F 2 "" H 5990 6110 50  0001 C CNN
F 3 "" H 5990 6110 50  0001 C CNN
	1    5990 6110
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1205
U 1 1 5F3B28E1
P 3300 4850
F 0 "C1205" H 3325 4950 50  0000 L CNN
F 1 "0.1uF" H 3325 4750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3338 4700 50  0001 C CNN
F 3 "" H 3325 4950 50  0001 C CNN
F 4 "0603" H 3150 4950 50  0000 R CNN "display_footprint"
F 5 "50V" H 3150 4850 50  0000 R CNN "Voltage"
F 6 "X7R" H 3150 4750 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 3300 4850 50  0001 C CNN "Digi-Key PN"
	1    3300 4850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01225
U 1 1 5F3B39C7
P 3300 5000
F 0 "#PWR01225" H 3300 4750 50  0001 C CNN
F 1 "GND" H 3300 4850 50  0000 C CNN
F 2 "" H 3300 5000 50  0001 C CNN
F 3 "" H 3300 5000 50  0001 C CNN
	1    3300 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 4700 3300 4620
Text GLabel 3220 4620 0    50   Output ~ 0
VBAT_ADC
Wire Wire Line
	3220 4620 3300 4620
$Comp
L Custom_Library:TP TP?
U 1 1 5F4AB76C
P 1620 4090
AR Path="/5C1D5CD8/5F4AB76C" Ref="TP?"  Part="1" 
AR Path="/5C1D5C9E/5F4AB76C" Ref="TP?"  Part="1" 
AR Path="/5CB6F1ED/5F4AB76C" Ref="TP?"  Part="1" 
AR Path="/5E939CFF/5F4AB76C" Ref="TP?"  Part="1" 
AR Path="/5E9E0E87/5F4AB76C" Ref="TP?"  Part="1" 
AR Path="/5EAE2D66/5F4AB76C" Ref="TP?"  Part="1" 
AR Path="/5EAE2F15/5F4AB76C" Ref="TP?"  Part="1" 
AR Path="/5E939EDE/5F4AB76C" Ref="TP?"  Part="1" 
AR Path="/5E939EED/5F4AB76C" Ref="TP1201"  Part="1" 
F 0 "TP1201" H 1620 4240 50  0000 C CNN
F 1 "TP" H 1620 4240 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 1620 4090 60  0001 C CNN
F 3 "" H 1620 4090 60  0000 C CNN
	1    1620 4090
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:VBAT #PWR01201
U 1 1 5F4AC3BF
P 1620 4090
F 0 "#PWR01201" H 1620 3940 50  0001 C CNN
F 1 "VBAT" H 1620 4240 50  0000 C CNN
F 2 "" H 1620 4090 50  0001 C CNN
F 3 "" H 1620 4090 50  0001 C CNN
	1    1620 4090
	-1   0    0    1   
$EndComp
$Comp
L Custom_Library:VBAT #PWR01204
U 1 1 5F4AC9AA
P 2150 4090
F 0 "#PWR01204" H 2150 3940 50  0001 C CNN
F 1 "VBAT" H 2150 4240 50  0000 C CNN
F 2 "" H 2150 4090 50  0001 C CNN
F 3 "" H 2150 4090 50  0001 C CNN
	1    2150 4090
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG01201
U 1 1 5F4AD5C0
P 2150 4090
F 0 "#FLG01201" H 2150 4165 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 4240 50  0000 C CNN
F 2 "" H 2150 4090 50  0001 C CNN
F 3 "~" H 2150 4090 50  0001 C CNN
	1    2150 4090
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F39B3AD
P 4130 4390
AR Path="/5BB27BA3/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5A557C58/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5E2843EF/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5F39B3AD" Ref="R?"  Part="1" 
AR Path="/5E939EED/5F39B3AD" Ref="R1201"  Part="1" 
F 0 "R1201" H 4050 4390 50  0000 R CNN
F 1 "1.07M" V 4130 4390 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4130 4390 50  0001 C CNN
F 3 "" H 4130 4390 50  0001 C CNN
F 4 "0603" H 4230 4470 50  0000 L CNN "display_footprint"
F 5 "1%" H 4230 4390 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4240 4310 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT1M07CT-ND" H 4130 4390 50  0001 C CNN "Digi-Key PN"
	1    4130 4390
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F39C65B
P 4130 4850
AR Path="/5BB27BA3/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5A557C58/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5E2843EF/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5F39C65B" Ref="R?"  Part="1" 
AR Path="/5E939EED/5F39C65B" Ref="R1202"  Part="1" 
F 0 "R1202" H 4050 4850 50  0000 R CNN
F 1 "220k" V 4130 4850 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4130 4850 50  0001 C CNN
F 3 "" H 4130 4850 50  0001 C CNN
F 4 "0603" H 4230 4930 50  0000 L CNN "display_footprint"
F 5 "1%" H 4230 4850 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4240 4770 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT220KCT-ND" H 4130 4850 50  0001 C CNN "Digi-Key PN"
	1    4130 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 4620 4130 4620
Connection ~ 3300 4620
NoConn ~ 5550 1800
$EndSCHEMATC
