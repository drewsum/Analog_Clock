EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 6 25
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
L Custom_Library:C_Custom C606
U 1 1 5A4AC3A5
P 3910 7350
F 0 "C606" H 3935 7450 50  0000 L CNN
F 1 "0.1uF" H 3935 7250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3948 7200 50  0001 C CNN
F 3 "" H 3935 7450 50  0001 C CNN
F 4 "0603" H 3760 7450 50  0000 R CNN "display_footprint"
F 5 "50V" H 3760 7350 50  0000 R CNN "Voltage"
F 6 "X7R" H 3760 7250 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 0   470 50  0001 C CNN "Digi-Key PN"
	1    3910 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0608
U 1 1 5A4AC47C
P 2850 7200
F 0 "#PWR0608" H 2850 6950 50  0001 C CNN
F 1 "GND" H 2850 7050 50  0000 C CNN
F 2 "" H 2850 7200 50  0000 C CNN
F 3 "" H 2850 7200 50  0000 C CNN
	1    2850 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0607
U 1 1 5A4AC509
P 2850 6000
F 0 "#PWR0607" H 2850 5850 50  0001 C CNN
F 1 "+3.3V" H 2850 6140 50  0000 C CNN
F 2 "" H 2850 6000 50  0000 C CNN
F 3 "" H 2850 6000 50  0000 C CNN
	1    2850 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0602
U 1 1 5A4ADA73
P 2050 7250
F 0 "#PWR0602" H 2050 7000 50  0001 C CNN
F 1 "GND" H 2050 7100 50  0000 C CNN
F 2 "" H 2050 7250 50  0000 C CNN
F 3 "" H 2050 7250 50  0000 C CNN
	1    2050 7250
	1    0    0    -1  
$EndComp
Text GLabel 4190 6350 2    50   Output ~ 0
POS20_PGOOD
$Comp
L Custom_Library:R_Custom R607
U 1 1 5A4AE119
P 4090 6060
F 0 "R607" H 4030 6060 50  0000 R CNN
F 1 "10k" V 4090 6060 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4090 6060 50  0001 C CNN
F 3 "" H 4090 6060 50  0001 C CNN
F 4 "0603" H 4160 6140 50  0000 L CNN "display_footprint"
F 5 "1%" H 4160 6060 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4160 5990 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 0   470 50  0001 C CNN "Digi-Key PN"
	1    4090 6060
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0615
U 1 1 5A4AE12A
P 4090 5910
F 0 "#PWR0615" H 4090 5760 50  0001 C CNN
F 1 "+3.3V" H 4090 6050 50  0000 C CNN
F 2 "" H 4090 5910 50  0000 C CNN
F 3 "" H 4090 5910 50  0000 C CNN
	1    4090 5910
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1420 8750 1500
Wire Wire Line
	3490 6350 3490 6850
Wire Wire Line
	2050 6750 2050 6850
Connection ~ 2050 6850
Wire Wire Line
	2050 6250 2050 6350
Connection ~ 2050 6350
Wire Wire Line
	4090 6210 4090 6350
Connection ~ 4090 6350
Connection ~ 3490 6350
$Comp
L power:PWR_FLAG #FLG0601
U 1 1 5B3D0D46
P 9310 1430
F 0 "#FLG0601" H 9310 1505 50  0001 C CNN
F 1 "PWR_FLAG" H 9310 1580 50  0000 C CNN
F 2 "" H 9310 1430 50  0001 C CNN
F 3 "" H 9310 1430 50  0001 C CNN
	1    9310 1430
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6850 2050 6950
Wire Wire Line
	2050 6350 2050 6450
Wire Wire Line
	4090 6350 4190 6350
Wire Wire Line
	3490 6350 4090 6350
Wire Wire Line
	8370 1420 8370 1500
Wire Wire Line
	3400 6350 3490 6350
Wire Wire Line
	3400 6850 3490 6850
Wire Wire Line
	2050 6350 2300 6350
Wire Wire Line
	2050 6850 2300 6850
Connection ~ 8750 1500
Connection ~ 8370 1500
Wire Wire Line
	8370 1500 8750 1500
Wire Wire Line
	3000 3340 3160 3340
Wire Wire Line
	2460 3140 3160 3140
Wire Wire Line
	2080 1500 2800 1500
Wire Wire Line
	2080 1580 2080 1500
$Comp
L power:GND #PWR0604
U 1 1 5B5E6C6E
P 2080 1880
F 0 "#PWR0604" H 2080 1630 50  0001 C CNN
F 1 "GND" H 2080 1730 50  0000 C CNN
F 2 "" H 2080 1880 50  0001 C CNN
F 3 "" H 2080 1880 50  0001 C CNN
	1    2080 1880
	1    0    0    -1  
$EndComp
Wire Wire Line
	3490 1500 3490 1580
$Comp
L power:GND #PWR0612
U 1 1 5B5DD1B7
P 3490 1880
F 0 "#PWR0612" H 3490 1630 50  0001 C CNN
F 1 "GND" H 3490 1730 50  0000 C CNN
F 2 "" H 3490 1880 50  0001 C CNN
F 3 "" H 3490 1880 50  0001 C CNN
	1    3490 1880
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1500 2800 1580
Wire Wire Line
	9310 3790 9310 3960
Wire Wire Line
	5440 1500 5780 1500
Wire Wire Line
	5440 3190 5440 3230
Connection ~ 2800 1500
Wire Wire Line
	2800 1500 3490 1500
Wire Wire Line
	6960 1500 6960 1660
Wire Wire Line
	2920 2740 2920 2700
Wire Wire Line
	2920 2340 3160 2340
Wire Wire Line
	2760 2340 2920 2340
Connection ~ 2920 2340
Wire Wire Line
	2920 2400 2920 2340
Wire Wire Line
	3120 2740 3160 2740
Wire Wire Line
	3120 2740 3120 2780
Connection ~ 9310 3790
Wire Wire Line
	9310 2910 9310 3790
Wire Wire Line
	3000 3420 3000 3340
Wire Wire Line
	2460 3420 2460 3140
Connection ~ 5440 1500
Wire Wire Line
	4820 1500 5440 1500
Wire Wire Line
	3960 1500 4520 1500
Wire Wire Line
	5440 3190 4760 3190
Connection ~ 5440 3190
Wire Wire Line
	5440 2540 5440 3190
Wire Wire Line
	3710 4130 3710 4090
Wire Wire Line
	3710 4470 3710 4430
Wire Wire Line
	4210 4330 4210 4090
Text Notes 1540 3210 0    60   ~ 0
fsw = 950 kHz
$Comp
L power:GND #PWR0606
U 1 1 5A2AD90B
P 2800 1880
F 0 "#PWR0606" H 2800 1630 50  0001 C CNN
F 1 "GND" H 2800 1730 50  0000 C CNN
F 2 "" H 2800 1880 50  0001 C CNN
F 3 "" H 2800 1880 50  0001 C CNN
	1    2800 1880
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0620
U 1 1 5A0BD1B1
P 6960 1960
F 0 "#PWR0620" H 6960 1710 50  0001 C CNN
F 1 "GND" H 6960 1810 50  0000 C CNN
F 2 "" H 6960 1960 50  0001 C CNN
F 3 "" H 6960 1960 50  0001 C CNN
	1    6960 1960
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0609
U 1 1 5A0BD15A
P 2920 2740
F 0 "#PWR0609" H 2920 2490 50  0001 C CNN
F 1 "GND" H 2920 2590 50  0000 C CNN
F 2 "" H 2920 2740 50  0001 C CNN
F 3 "" H 2920 2740 50  0001 C CNN
	1    2920 2740
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0622
U 1 1 5A0BD154
P 9310 4260
F 0 "#PWR0622" H 9310 4010 50  0001 C CNN
F 1 "GND" H 9310 4110 50  0000 C CNN
F 2 "" H 9310 4260 50  0001 C CNN
F 3 "" H 9310 4260 50  0001 C CNN
	1    9310 4260
	1    0    0    -1  
$EndComp
Text GLabel 2760 2340 0    50   Input ~ 0
POS20_RUN
$Comp
L power:GND #PWR0611
U 1 1 5A0BD134
P 3120 2780
F 0 "#PWR0611" H 3120 2530 50  0001 C CNN
F 1 "GND" H 3120 2630 50  0000 C CNN
F 2 "" H 3120 2780 50  0001 C CNN
F 3 "" H 3120 2780 50  0001 C CNN
	1    3120 2780
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0605
U 1 1 5A0BD107
P 2460 3720
F 0 "#PWR0605" H 2460 3470 50  0001 C CNN
F 1 "GND" H 2460 3570 50  0000 C CNN
F 2 "" H 2460 3720 50  0001 C CNN
F 3 "" H 2460 3720 50  0001 C CNN
	1    2460 3720
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0610
U 1 1 5A0BD101
P 3000 3720
F 0 "#PWR0610" H 3000 3470 50  0001 C CNN
F 1 "GND" H 3000 3570 50  0000 C CNN
F 2 "" H 3000 3720 50  0001 C CNN
F 3 "" H 3000 3720 50  0001 C CNN
	1    3000 3720
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0619
U 1 1 5A0BD0DA
P 5440 3530
F 0 "#PWR0619" H 5440 3280 50  0001 C CNN
F 1 "GND" H 5440 3380 50  0000 C CNN
F 2 "" H 5440 3530 50  0001 C CNN
F 3 "" H 5440 3530 50  0001 C CNN
	1    5440 3530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0613
U 1 1 5A0BD0B2
P 3710 4770
F 0 "#PWR0613" H 3710 4520 50  0001 C CNN
F 1 "GND" H 3710 4620 50  0000 C CNN
F 2 "" H 3710 4770 50  0001 C CNN
F 3 "" H 3710 4770 50  0001 C CNN
	1    3710 4770
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0616
U 1 1 5A0BD097
P 4210 4630
F 0 "#PWR0616" H 4210 4380 50  0001 C CNN
F 1 "GND" H 4210 4480 50  0000 C CNN
F 2 "" H 4210 4630 50  0001 C CNN
F 3 "" H 4210 4630 50  0001 C CNN
	1    4210 4630
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0614
U 1 1 5A0BD087
P 3960 4090
F 0 "#PWR0614" H 3960 3840 50  0001 C CNN
F 1 "GND" H 3960 3940 50  0000 C CNN
F 2 "" H 3960 4090 50  0001 C CNN
F 3 "" H 3960 4090 50  0001 C CNN
	1    3960 4090
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C604
U 1 1 5CB762F8
P 3490 1730
F 0 "C604" H 3515 1830 50  0000 L CNN
F 1 "0.1uF" H 3515 1630 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3528 1580 50  0001 C CNN
F 3 "" H 3515 1830 50  0001 C CNN
F 4 "0603" H 3340 1830 50  0000 R CNN "display_footprint"
F 5 "50V" H 3340 1730 50  0000 R CNN "Voltage"
F 6 "X7R" H 3340 1630 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H -420 -5150 50  0001 C CNN "Digi-Key PN"
	1    3490 1730
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R604
U 1 1 5CB7907B
P 2460 3570
F 0 "R604" H 2530 3700 50  0000 L CNN
F 1 "11.5k" V 2460 3570 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2460 3570 50  0001 C CNN
F 3 "" H 2460 3570 50  0001 C CNN
F 4 "0603" H 2530 3620 50  0000 L CNN "display_footprint"
F 5 "1%" H 2530 3530 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2530 3440 50  0000 L CNN "Wattage"
F 7 "311-11.5KHRCT-ND" H 2460 3570 50  0001 C CNN "Digi-Key PN"
	1    2460 3570
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R614
U 1 1 5CB87A40
P 9310 4110
F 0 "R614" H 9380 4240 50  0000 L CNN
F 1 "1k" V 9310 4110 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9310 4110 50  0001 C CNN
F 3 "" H 9310 4110 50  0001 C CNN
F 4 "0603" H 9380 4160 50  0000 L CNN "display_footprint"
F 5 "1%" H 9380 4070 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 9380 3980 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 9310 4110 50  0001 C CNN "Digi-Key PN"
	1    9310 4110
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R606
U 1 1 5CB8AD60
P 3710 4280
F 0 "R606" H 3780 4410 50  0000 L CNN
F 1 "22k" V 3710 4280 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3710 4280 50  0001 C CNN
F 3 "" H 3710 4280 50  0001 C CNN
F 4 "0603" H 3780 4330 50  0000 L CNN "display_footprint"
F 5 "1%" H 3780 4240 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3780 4150 50  0000 L CNN "Wattage"
F 7 "311-22KLDCT-ND" H 4010 4680 60  0001 C CNN "Digi-Key PN"
	1    3710 4280
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C602
U 1 1 5CB8EF0B
P 2800 1730
F 0 "C602" H 2825 1830 50  0000 L CNN
F 1 "10uF" H 2825 1630 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2838 1580 50  0001 C CNN
F 3 "" H 2825 1830 50  0001 C CNN
F 4 "0805" H 2650 1830 50  0000 R CNN "display_footprint"
F 5 "50V" H 2650 1730 50  0000 R CNN "Voltage"
F 6 "X5R" H 2650 1630 50  0000 R CNN "Dielectric"
F 7 "490-18664-1-ND" H -1110 -5150 50  0001 C CNN "Digi-Key PN"
	1    2800 1730
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C601
U 1 1 5CB90AED
P 2080 1730
F 0 "C601" H 2105 1830 50  0000 L CNN
F 1 "10uF" H 2105 1630 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2118 1580 50  0001 C CNN
F 3 "" H 2105 1830 50  0001 C CNN
F 4 "0805" H 1930 1830 50  0000 R CNN "display_footprint"
F 5 "50V" H 1930 1730 50  0000 R CNN "Voltage"
F 6 "X5R" H 1930 1630 50  0000 R CNN "Dielectric"
F 7 "490-18664-1-ND" H -1830 -5150 50  0001 C CNN "Digi-Key PN"
	1    2080 1730
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R609
U 1 1 5CB88EC1
P 5440 3380
F 0 "R609" H 5510 3510 50  0000 L CNN
F 1 "130m" V 5440 3380 40  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 5440 3380 50  0001 C CNN
F 3 "" H 5440 3380 50  0001 C CNN
F 4 "0805" H 5510 3430 50  0000 L CNN "display_footprint"
F 5 "1%" H 5510 3340 50  0000 L CNN "Tolerance"
F 6 "1/4W" H 5510 3250 50  0000 L CNN "Wattage"
F 7 "RL12S.13FCT-ND" H 5440 3380 50  0001 C CNN "Digi-Key PN"
	1    5440 3380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5CBA7DE4
P 3710 4620
AR Path="/5A557C58/5CBA7DE4" Ref="C?"  Part="1" 
AR Path="/5A0BC776/5CBA7DE4" Ref="C?"  Part="1" 
AR Path="/5E939D51/5CBA7DE4" Ref="C605"  Part="1" 
F 0 "C605" H 3735 4720 50  0000 L CNN
F 1 "6.8nF" H 3735 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3748 4470 50  0001 C CNN
F 3 "" H 3735 4720 50  0001 C CNN
F 4 "0603" H 3560 4720 50  0000 R CNN "display_footprint"
F 5 "50V" H 3560 4620 50  0000 R CNN "Voltage"
F 6 "X7R" H 3560 4520 50  0000 R CNN "Dielectric"
F 7 "399-1089-1-ND" H 3710 4620 50  0001 C CNN "Digi-Key PN"
	1    3710 4620
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C603
U 1 1 5CBAA2CC
P 3000 3570
F 0 "C603" H 3025 3670 50  0000 L CNN
F 1 "0.1uF" H 3025 3470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3038 3420 50  0001 C CNN
F 3 "" H 3025 3670 50  0001 C CNN
F 4 "0603" H 2850 3670 50  0000 R CNN "display_footprint"
F 5 "50V" H 2850 3570 50  0000 R CNN "Voltage"
F 6 "X7R" H 2850 3470 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H -910 -3310 50  0001 C CNN "Digi-Key PN"
	1    3000 3570
	1    0    0    -1  
$EndComp
Connection ~ 6960 1500
$Comp
L Custom_Library:R_Custom R605
U 1 1 5A176428
P 2920 2550
F 0 "R605" V 2820 2550 50  0000 C CNN
F 1 "10k" V 2920 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2920 2550 50  0001 C CNN
F 3 "" H 2920 2550 50  0001 C CNN
F 4 "0603" H 2990 2450 50  0000 L CNN "display_footprint"
F 5 "1%" H 2990 2530 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2980 2600 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H -1690 -80 50  0001 C CNN "Digi-Key PN"
	1    2920 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6080 1500 6960 1500
Wire Wire Line
	9310 1500 8750 1500
Wire Wire Line
	4760 3790 9310 3790
Wire Wire Line
	5440 1500 5440 2140
Wire Wire Line
	3960 1500 3960 2040
Wire Wire Line
	9310 1500 9310 2610
Wire Wire Line
	3960 1500 3490 1500
Connection ~ 3960 1500
Connection ~ 3490 1500
$Comp
L power:+12V #PWR?
U 1 1 5E157C2B
P 2080 1420
AR Path="/5CB7718D/5E157C2B" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E157C2B" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E157C2B" Ref="#PWR?"  Part="1" 
AR Path="/5A0BC776/5E157C2B" Ref="#PWR?"  Part="1" 
AR Path="/5E939D51/5E157C2B" Ref="#PWR0603"  Part="1" 
F 0 "#PWR0603" H 2080 1270 50  0001 C CNN
F 1 "+12V" H 2080 1560 50  0000 C CNN
F 2 "" H 2080 1420 50  0001 C CNN
F 3 "" H 2080 1420 50  0001 C CNN
	1    2080 1420
	1    0    0    -1  
$EndComp
Wire Wire Line
	8140 1500 8210 1500
Text GLabel 7750 1960 3    50   UnSpc ~ 0
POS20_SNS+
Text GLabel 8210 1960 3    50   UnSpc ~ 0
POS20_SNS-
Wire Wire Line
	8210 1660 8210 1500
Wire Wire Line
	7750 1660 7750 1500
Connection ~ 7750 1500
Wire Wire Line
	7750 1500 7840 1500
Connection ~ 8210 1500
Wire Wire Line
	8210 1500 8370 1500
$Comp
L Custom_Library:TLV6700 U601
U 1 1 5E1F15CF
P 2850 6600
F 0 "U601" H 3150 6100 50  0000 C CNN
F 1 "TLV6700" H 2850 6600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2850 7200 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlv6700.pdf" H 2850 6600 60  0001 C CNN
F 4 "296-51696-1-ND" H 2850 6600 50  0001 C CNN "Digi-Key PN"
	1    2850 6600
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2D7420
P 7750 1810
AR Path="/5CB0BC26/5E2D7420" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5E2D7420" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5E2D7420" Ref="R?"  Part="1" 
AR Path="/5E0F9110/5E2D7420" Ref="R?"  Part="1" 
AR Path="/5A0BC776/5E2D7420" Ref="R?"  Part="1" 
AR Path="/5E939D51/5E2D7420" Ref="R610"  Part="1" 
F 0 "R610" V 7650 1810 50  0000 C CNN
F 1 "100" V 7750 1810 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7750 1810 50  0001 C CNN
F 3 "" H 7750 1810 50  0001 C CNN
F 4 "0603" V 7850 1810 50  0001 C CNN "display_footprint"
F 5 "1%" V 7950 1810 50  0001 C CNN "Tolerance"
F 6 "1/10W" V 8050 1810 50  0001 C CNN "Wattage"
F 7 "RMCF0603FT100RCT-ND" H 8050 2210 60  0001 C CNN "Digi-Key PN"
	1    7750 1810
	-1   0    0    1   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2D742A
P 8210 1810
AR Path="/5CB0BC26/5E2D742A" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5E2D742A" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5E2D742A" Ref="R?"  Part="1" 
AR Path="/5E0F9110/5E2D742A" Ref="R?"  Part="1" 
AR Path="/5A0BC776/5E2D742A" Ref="R?"  Part="1" 
AR Path="/5E939D51/5E2D742A" Ref="R612"  Part="1" 
F 0 "R612" V 8110 1810 50  0000 C CNN
F 1 "100" V 8210 1810 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 8210 1810 50  0001 C CNN
F 3 "" H 8210 1810 50  0001 C CNN
F 4 "0603" V 8310 1810 50  0001 C CNN "display_footprint"
F 5 "1%" V 8410 1810 50  0001 C CNN "Tolerance"
F 6 "1/10W" V 8510 1810 50  0001 C CNN "Wattage"
F 7 "RMCF0603FT100RCT-ND" H 8510 2210 60  0001 C CNN "Digi-Key PN"
	1    8210 1810
	-1   0    0    1   
$EndComp
Wire Wire Line
	9310 1430 9310 1500
Connection ~ 9310 1500
$Comp
L Diode:MBR0580 D601
U 1 1 5E3DCD92
P 5930 1500
F 0 "D601" H 5930 1600 50  0000 C CNN
F 1 "MBR0580" H 5930 1400 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 5930 1325 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 5930 1500 50  0001 C CNN
F 4 "MBR0580S1-7DICT-ND" H 5930 1500 50  0001 C CNN "Digi-Key PN"
	1    5930 1500
	-1   0    0    1   
$EndComp
$Comp
L Custom_Library:TP TP?
U 1 1 5E42239B
P 8370 1420
AR Path="/5C1D5CD8/5E42239B" Ref="TP?"  Part="1" 
AR Path="/5C1D5C9E/5E42239B" Ref="TP?"  Part="1" 
AR Path="/5C1E3A08/5E42239B" Ref="TP?"  Part="1" 
AR Path="/5D779AE1/5E42239B" Ref="TP?"  Part="1" 
AR Path="/5CB7718D/5E42239B" Ref="TP?"  Part="1" 
AR Path="/5E0DC082/5E42239B" Ref="TP?"  Part="1" 
AR Path="/5E0F9110/5E42239B" Ref="TP?"  Part="1" 
AR Path="/5A0BC776/5E42239B" Ref="TP?"  Part="1" 
AR Path="/5E939D51/5E42239B" Ref="TP601"  Part="1" 
F 0 "TP601" H 8370 1570 50  0000 C CNN
F 1 "TP" H 8370 1570 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 8370 1420 60  0001 C CNN
F 3 "" H 8370 1420 60  0000 C CNN
	1    8370 1420
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5CB5F9AD
P 7990 1500
AR Path="/5CB364CC/5CB5F9AD" Ref="R?"  Part="1" 
AR Path="/5A0A7E5F/5CB5F9AD" Ref="R?"  Part="1" 
AR Path="/5A0BC776/5CB5F9AD" Ref="R?"  Part="1" 
AR Path="/5E939D51/5CB5F9AD" Ref="R611"  Part="1" 
F 0 "R611" V 7890 1500 50  0000 C CNN
F 1 "1" V 7990 1500 40  0000 C CNN
F 2 "Resistors_SMD:R_0612" H 7990 1500 50  0001 C CNN
F 3 "" H 7990 1500 50  0001 C CNN
F 4 "0612" V 8090 1500 50  0000 C CNN "display_footprint"
F 5 "1%" V 8190 1500 50  0000 C CNN "Tolerance"
F 6 "1W" V 8290 1500 50  0000 C CNN "Wattage"
F 7 "RHM1220CT-ND" H 7990 1500 50  0001 C CNN "Digi-Key PN"
	1    7990 1500
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:R_Custom R613
U 1 1 5CB8700E
P 9310 2760
F 0 "R613" H 9380 2890 50  0000 L CNN
F 1 "11.5k" V 9310 2760 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9310 2760 50  0001 C CNN
F 3 "" H 9310 2760 50  0001 C CNN
F 4 "0603" H 9380 2810 50  0000 L CNN "display_footprint"
F 5 "1%" H 9380 2720 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 9380 2630 50  0000 L CNN "Wattage"
F 7 "311-11.5KHRCT-ND" H 9310 2760 50  0001 C CNN "Digi-Key PN"
	1    9310 2760
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:L_Custom L601
U 1 1 5F2DB166
P 4670 1500
F 0 "L601" V 4620 1500 50  0000 C CNN
F 1 "10uH" V 4745 1500 50  0000 C CNN
F 2 "Inductors_SMD:L_Vishay_IHLP-2525" H 4670 1500 50  0001 C CNN
F 3 "" H 4670 1500 50  0001 C CNN
F 4 "IHLP2525" V 4820 1500 50  0000 C CNN "display_footprint"
F 5 "3A" V 4920 1500 50  0000 C CNN "Ampacity"
F 6 "20%" V 5020 1500 50  0000 C CNN "Tolerance"
F 7 "541-1013-1-ND" H 4670 1500 50  0001 C CNN "Digi-Key PN"
	1    4670 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2080 1420 2080 1500
Connection ~ 2080 1500
Wire Wire Line
	6960 1500 7750 1500
$Comp
L Custom_Library:R_Custom R603
U 1 1 5F2EDEDE
P 2050 7100
F 0 "R603" H 2120 7230 50  0000 L CNN
F 1 "1.87k" V 2050 7100 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2050 7100 50  0001 C CNN
F 3 "" H 2050 7100 50  0001 C CNN
F 4 "0603" H 2120 7150 50  0000 L CNN "display_footprint"
F 5 "1%" H 2120 7060 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2120 6970 50  0000 L CNN "Wattage"
F 7 "311-1.87KHRCT-ND" H 2050 7100 50  0001 C CNN "Digi-Key PN"
	1    2050 7100
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R602
U 1 1 5F2EE7FF
P 2050 6600
F 0 "R602" H 2120 6730 50  0000 L CNN
F 1 "383" V 2050 6600 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2050 6600 50  0001 C CNN
F 3 "" H 2050 6600 50  0001 C CNN
F 4 "0603" H 2120 6650 50  0000 L CNN "display_footprint"
F 5 "1%" H 2120 6560 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2120 6470 50  0000 L CNN "Wattage"
F 7 "311-383HRCT-ND" H 2050 6600 50  0001 C CNN "Digi-Key PN"
	1    2050 6600
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R601
U 1 1 5F2EEE70
P 2050 6100
F 0 "R601" H 2120 6230 50  0000 L CNN
F 1 "100k" V 2050 6100 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2050 6100 50  0001 C CNN
F 3 "" H 2050 6100 50  0001 C CNN
F 4 "0603" H 2120 6150 50  0000 L CNN "display_footprint"
F 5 "1%" H 2120 6060 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2120 5970 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT100KCT-ND" H 2050 6100 50  0001 C CNN "Digi-Key PN"
	1    2050 6100
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:LT3757 U602
U 1 1 5A0BD080
P 3960 2890
F 0 "U602" H 4460 1840 50  0000 C CNN
F 1 "LT3757" H 3960 2890 50  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-10-1EP_3x3mm_Pitch0.5mm" H 3960 3590 60  0001 C CNN
F 3 "" H 3960 3590 60  0001 C CNN
F 4 "LT3757EDD#PBF-ND" H -1690 -80 50  0001 C CNN "Digi-Key PN"
	1    3960 2890
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C610
U 1 1 5F2E7454
P 6960 1810
F 0 "C610" H 6985 1910 50  0000 L CNN
F 1 "10uF" H 6985 1710 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6998 1660 50  0001 C CNN
F 3 "" H 6985 1910 50  0001 C CNN
F 4 "0805" H 6810 1910 50  0000 R CNN "display_footprint"
F 5 "50V" H 6810 1810 50  0000 R CNN "Voltage"
F 6 "X5R" H 6810 1710 50  0000 R CNN "Dielectric"
F 7 "490-18664-1-ND" H 7385 2310 60  0001 C CNN "Digi-Key PN"
	1    6960 1810
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:FDC5612 Q601
U 1 1 5F30CB26
P 5340 2340
F 0 "Q601" H 5540 2390 50  0000 L CNN
F 1 "FDC5612" H 5540 2290 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 5540 2440 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/FDC5612-D.PDF" H 5340 2340 50  0001 C CNN
F 4 "FDC5612CT-ND" H 5340 2340 50  0001 C CNN "Digi-Key PN"
	1    5340 2340
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3155DF
P 4950 2340
AR Path="/5EAE2D66/5F3155DF" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5F3155DF" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F3155DF" Ref="R?"  Part="1" 
AR Path="/5E939D51/5F3155DF" Ref="R608"  Part="1" 
F 0 "R608" V 4850 2340 50  0000 C CNN
F 1 "10" V 4950 2340 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4950 2340 50  0001 C CNN
F 3 "" H 4950 2340 50  0001 C CNN
F 4 "YAG2321CT-ND" H 5250 2740 60  0001 C CNN "Digi-Key PN"
F 5 "0603" V 5050 2340 50  0000 C CNN "display_footprint"
F 6 "1%" V 5150 2340 50  0000 C CNN "Tolerance"
F 7 "1/10W" V 5250 2340 50  0000 C CNN "Wattage"
	1    4950 2340
	0    1    1    0   
$EndComp
Wire Wire Line
	5140 2340 5100 2340
Wire Wire Line
	4800 2340 4760 2340
$Comp
L Custom_Library:+20V #PWR0621
U 1 1 5F31C1D1
P 8750 1420
F 0 "#PWR0621" H 8750 1270 50  0001 C CNN
F 1 "+20V" H 8750 1560 50  0000 C CNN
F 2 "" H 8750 1420 50  0001 C CNN
F 3 "" H 8750 1420 50  0001 C CNN
	1    8750 1420
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+20V #PWR0601
U 1 1 5F31C768
P 2050 5950
F 0 "#PWR0601" H 2050 5800 50  0001 C CNN
F 1 "+20V" H 2050 6090 50  0000 C CNN
F 2 "" H 2050 5950 50  0001 C CNN
F 3 "" H 2050 5950 50  0001 C CNN
	1    2050 5950
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C607
U 1 1 5F31FA8E
P 4210 4480
F 0 "C607" H 4235 4580 50  0000 L CNN
F 1 "10uF" H 4235 4380 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4248 4330 50  0001 C CNN
F 3 "" H 4235 4580 50  0001 C CNN
F 4 "0805" H 4060 4580 50  0000 R CNN "display_footprint"
F 5 "50V" H 4060 4480 50  0000 R CNN "Voltage"
F 6 "X5R" H 4060 4380 50  0000 R CNN "Dielectric"
F 7 "490-18664-1-ND" H 4635 4980 60  0001 C CNN "Digi-Key PN"
	1    4210 4480
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0617
U 1 1 5F53B335
P 3910 7200
F 0 "#PWR0617" H 3910 7050 50  0001 C CNN
F 1 "+3.3V" H 3910 7340 50  0000 C CNN
F 2 "" H 3910 7200 50  0001 C CNN
F 3 "" H 3910 7200 50  0001 C CNN
	1    3910 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0618
U 1 1 5F53B7AC
P 3910 7500
F 0 "#PWR0618" H 3910 7250 50  0001 C CNN
F 1 "GND" H 3910 7350 50  0000 C CNN
F 2 "" H 3910 7500 50  0001 C CNN
F 3 "" H 3910 7500 50  0001 C CNN
	1    3910 7500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
