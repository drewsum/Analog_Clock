EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 18 25
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
L Custom_Library:DAC8551 U1803
U 1 1 5F461788
P 4700 3580
F 0 "U1803" H 4300 3230 50  0000 L CNN
F 1 "DAC8551" H 5050 3830 50  0000 L CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 4700 3580 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/dac8551.pdf" H 4700 2880 50  0001 C CNN
F 4 "296-38925-1-ND" H 4700 3580 50  0001 C CNN "Digi-Key PN"
	1    4700 3580
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01817
U 1 1 5F46178A
P 4700 4060
F 0 "#PWR01817" H 4700 3810 50  0001 C CNN
F 1 "GND" H 4700 3910 50  0000 C CNN
F 2 "" H 4700 4060 50  0001 C CNN
F 3 "" H 4700 4060 50  0001 C CNN
	1    4700 4060
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4060 4700 4020
Wire Wire Line
	4700 4020 4650 4020
Wire Wire Line
	4650 4020 4650 3980
Wire Wire Line
	4700 4020 4750 4020
Wire Wire Line
	4750 4020 4750 3980
Connection ~ 4700 4020
Text GLabel 2180 3580 0    50   Input ~ 0
DAC_SPI_MOSI
Text GLabel 2180 3680 0    50   Input ~ 0
DAC_SPI_SCLK
Text GLabel 2180 3480 0    40   Input ~ 0
~DAC_SPI_SYNC_0
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F46178B
P 2330 3680
AR Path="/5E939CFF/5F46178B" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F46178B" Ref="R1803"  Part="1" 
F 0 "R1803" V 2290 3570 50  0000 R CNN
F 1 "10" V 2330 3680 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2330 3680 50  0001 C CNN
F 3 "" H 2330 3680 50  0001 C CNN
F 4 "0603" V 2430 3680 50  0001 C CNN "display_footprint"
F 5 "1%" V 2530 3680 50  0001 C CNN "Tolerance"
F 6 "1/10W" V 2630 3680 50  0001 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 2330 3680 50  0001 C CNN "Digi-Key PN"
	1    2330 3680
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F46178E
P 2330 3580
AR Path="/5E939CFF/5F46178E" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F46178E" Ref="R1802"  Part="1" 
F 0 "R1802" V 2290 3470 50  0000 R CNN
F 1 "10" V 2330 3580 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2330 3580 50  0001 C CNN
F 3 "" H 2330 3580 50  0001 C CNN
F 4 "0603" V 2430 3580 50  0001 C CNN "display_footprint"
F 5 "1%" V 2530 3580 50  0001 C CNN "Tolerance"
F 6 "1/10W" V 2630 3580 50  0001 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 2330 3580 50  0001 C CNN "Digi-Key PN"
	1    2330 3580
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E9BC555
P 2330 3480
AR Path="/5E939CFF/5E9BC555" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5E9BC555" Ref="R1801"  Part="1" 
F 0 "R1801" V 2290 3370 50  0000 R CNN
F 1 "10" V 2330 3480 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2330 3480 50  0001 C CNN
F 3 "" H 2330 3480 50  0001 C CNN
F 4 "0603" V 2430 3480 50  0001 C CNN "display_footprint"
F 5 "1%" V 2530 3480 50  0001 C CNN "Tolerance"
F 6 "1/10W" V 2630 3480 50  0001 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 2330 3480 50  0001 C CNN "Digi-Key PN"
	1    2330 3480
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E9C2902
P 2830 3250
AR Path="/5BB27BA3/5E9C2902" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5E9C2902" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5E9C2902" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5E9C2902" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5E9C2902" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E9C2902" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5E9C2902" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5E9C2902" Ref="R?"  Part="1" 
AR Path="/5E939D31/5E9C2902" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5E9C2902" Ref="R1804"  Part="1" 
F 0 "R1804" H 2750 3250 50  0000 R CNN
F 1 "10k" V 2830 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2830 3250 50  0001 C CNN
F 3 "" H 2830 3250 50  0001 C CNN
F 4 "0603" H 2930 3330 50  0000 L CNN "display_footprint"
F 5 "1%" H 2930 3250 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2940 3170 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 3130 3650 60  0001 C CNN "Digi-Key PN"
	1    2830 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E9C2908
P 2830 3100
AR Path="/5CB7718D/5E9C2908" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E9C2908" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E9C2908" Ref="#PWR?"  Part="1" 
AR Path="/5E939D31/5E9C2908" Ref="#PWR?"  Part="1" 
AR Path="/5E98CF45/5E9C2908" Ref="#PWR01809"  Part="1" 
F 0 "#PWR01809" H 2830 2950 50  0001 C CNN
F 1 "+3.3V" H 2830 3240 50  0000 C CNN
F 2 "" H 2830 3100 50  0001 C CNN
F 3 "" H 2830 3100 50  0001 C CNN
	1    2830 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2830 3400 2830 3480
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F461796
P 3570 3910
AR Path="/5BB27BA3/5F461796" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F461796" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F461796" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F461796" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F461796" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F461796" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F461796" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F461796" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F461796" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F461796" Ref="R1807"  Part="1" 
F 0 "R1807" H 3490 3910 50  0000 R CNN
F 1 "10k" V 3570 3910 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3570 3910 50  0001 C CNN
F 3 "" H 3570 3910 50  0001 C CNN
F 4 "0603" H 3670 3990 50  0000 L CNN "display_footprint"
F 5 "1%" H 3670 3910 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3680 3830 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 3870 4310 60  0001 C CNN "Digi-Key PN"
	1    3570 3910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01814
U 1 1 5F461797
P 3570 4060
F 0 "#PWR01814" H 3570 3810 50  0001 C CNN
F 1 "GND" H 3570 3910 50  0000 C CNN
F 2 "" H 3570 4060 50  0001 C CNN
F 3 "" H 3570 4060 50  0001 C CNN
	1    3570 4060
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E9C3C10
P 2830 3910
AR Path="/5BB27BA3/5E9C3C10" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5E9C3C10" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5E9C3C10" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5E9C3C10" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5E9C3C10" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E9C3C10" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5E9C3C10" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5E9C3C10" Ref="R?"  Part="1" 
AR Path="/5E939D31/5E9C3C10" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5E9C3C10" Ref="R1805"  Part="1" 
F 0 "R1805" H 2750 3910 50  0000 R CNN
F 1 "10k" V 2830 3910 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2830 3910 50  0001 C CNN
F 3 "" H 2830 3910 50  0001 C CNN
F 4 "0603" H 2930 3990 50  0000 L CNN "display_footprint"
F 5 "1%" H 2930 3910 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2940 3830 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 3130 4310 60  0001 C CNN "Digi-Key PN"
	1    2830 3910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01810
U 1 1 5E9C3C1A
P 2830 4060
F 0 "#PWR01810" H 2830 3810 50  0001 C CNN
F 1 "GND" H 2830 3910 50  0000 C CNN
F 2 "" H 2830 4060 50  0001 C CNN
F 3 "" H 2830 4060 50  0001 C CNN
	1    2830 4060
	1    0    0    -1  
$EndComp
Wire Wire Line
	2830 3760 2830 3580
Wire Wire Line
	3570 3760 3570 3680
Wire Wire Line
	5300 3730 5670 3730
Wire Wire Line
	5670 3730 5670 3580
Wire Wire Line
	5670 3580 5300 3580
$Comp
L Reference_Voltage:LT1790-2.048 U1802
U 1 1 5F46179E
P 2830 1850
F 0 "U1802" H 2990 2010 50  0000 L CNN
F 1 "LT1790-2.048" H 2990 2100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6" H 2830 1450 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1790fc.pdf" H 2680 2100 50  0001 C CNN
F 4 "LT1790BIS6-2.048#TRMPBFCT-ND" H 2830 1850 50  0001 C CNN "Digi-Key PN"
	1    2830 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01808
U 1 1 5F4617A0
P 2830 2150
F 0 "#PWR01808" H 2830 1900 50  0001 C CNN
F 1 "GND" H 2830 2000 50  0000 C CNN
F 2 "" H 2830 2150 50  0001 C CNN
F 3 "" H 2830 2150 50  0001 C CNN
	1    2830 2150
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F4617A1
P 4220 2080
AR Path="/5E939F76/5F4617A1" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5F4617A1" Ref="C1805"  Part="1" 
F 0 "C1805" H 4245 2180 50  0000 L CNN
F 1 "47pF" H 4245 1980 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4258 1930 50  0001 C CNN
F 3 "" H 4245 2180 50  0001 C CNN
F 4 "0603" H 4070 2180 50  0000 R CNN "display_footprint"
F 5 "50V" H 4070 2080 50  0000 R CNN "Voltage"
F 6 "NP0" H 4070 1980 50  0000 R CNN "Dielectric"
F 7 "399-7918-1-ND" H 4645 2580 60  0001 C CNN "Digi-Key PN"
	1    4220 2080
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E9DD1E1
P 3570 2080
AR Path="/5A0BC776/5E9DD1E1" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5E9DD1E1" Ref="C?"  Part="1" 
AR Path="/5E93CC4E/5E9DD1E1" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5E9DD1E1" Ref="C1803"  Part="1" 
F 0 "C1803" H 3595 2180 50  0000 L CNN
F 1 "4.7uF" H 3595 1980 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3608 1930 50  0001 C CNN
F 3 "" H 3595 2180 50  0001 C CNN
F 4 "0805" H 3420 2180 50  0000 R CNN "display_footprint"
F 5 "16V" H 3420 2080 50  0000 R CNN "Voltage"
F 6 "X7R" H 3420 1980 50  0000 R CNN "Dielectric"
F 7 "1276-2970-1-ND" H -2330 -2480 50  0001 C CNN "Digi-Key PN"
	1    3570 2080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01812
U 1 1 5E9DF3CE
P 3570 2230
F 0 "#PWR01812" H 3570 1980 50  0001 C CNN
F 1 "GND" H 3570 2080 50  0000 C CNN
F 2 "" H 3570 2230 50  0001 C CNN
F 3 "" H 3570 2230 50  0001 C CNN
	1    3570 2230
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01815
U 1 1 5E9DF7F1
P 4220 2230
F 0 "#PWR01815" H 4220 1980 50  0001 C CNN
F 1 "GND" H 4220 2080 50  0000 C CNN
F 2 "" H 4220 2230 50  0001 C CNN
F 3 "" H 4220 2230 50  0001 C CNN
	1    4220 2230
	1    0    0    -1  
$EndComp
Wire Wire Line
	4220 1930 4220 1850
Wire Wire Line
	3570 1930 3570 1850
Connection ~ 3570 1850
Wire Wire Line
	3570 1850 3030 1850
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F4617AA
P 2350 1700
AR Path="/5BAAE16C/5F4617AA" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5F4617AA" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5F4617AA" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5F4617AA" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5F4617AA" Ref="C?"  Part="1" 
AR Path="/5C1D5C9E/5F4617AA" Ref="C?"  Part="1" 
AR Path="/5CB6F1ED/5F4617AA" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5F4617AA" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5F4617AA" Ref="C1801"  Part="1" 
F 0 "C1801" H 2375 1800 50  0000 L CNN
F 1 "0.1uF" H 2375 1600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2388 1550 50  0001 C CNN
F 3 "" H 2375 1800 50  0001 C CNN
F 4 "0603" H 2200 1800 50  0000 R CNN "display_footprint"
F 5 "50V" H 2200 1700 50  0000 R CNN "Voltage"
F 6 "X7R" H 2200 1600 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 2775 2200 60  0001 C CNN "Digi-Key PN"
	1    2350 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01804
U 1 1 5F4617AC
P 2350 1850
F 0 "#PWR01804" H 2350 1600 50  0001 C CNN
F 1 "GND" H 2350 1700 50  0000 C CNN
F 2 "" H 2350 1850 50  0001 C CNN
F 3 "" H 2350 1850 50  0001 C CNN
	1    2350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2830 1550 2830 1470
Wire Wire Line
	2830 1470 2350 1470
Wire Wire Line
	2350 1470 2350 1550
$Comp
L power:+3.3V #PWR01803
U 1 1 5F4617AE
P 2350 1390
F 0 "#PWR01803" H 2350 1240 50  0001 C CNN
F 1 "+3.3V" H 2350 1530 50  0000 C CNN
F 2 "" H 2350 1390 50  0001 C CNN
F 3 "" H 2350 1390 50  0001 C CNN
	1    2350 1390
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1390 2350 1470
Connection ~ 2350 1470
Wire Wire Line
	2830 3480 4200 3480
Wire Wire Line
	2830 3580 4200 3580
Wire Wire Line
	3570 3680 4200 3680
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F4617AF
P 3570 2910
AR Path="/5A0BC776/5F4617AF" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5F4617AF" Ref="C?"  Part="1" 
AR Path="/5E93CC4E/5F4617AF" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5F4617AF" Ref="C1804"  Part="1" 
F 0 "C1804" H 3595 3010 50  0000 L CNN
F 1 "4.7uF" H 3595 2810 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3608 2760 50  0001 C CNN
F 3 "" H 3595 3010 50  0001 C CNN
F 4 "0805" H 3420 3010 50  0000 R CNN "display_footprint"
F 5 "16V" H 3420 2910 50  0000 R CNN "Voltage"
F 6 "X7R" H 3420 2810 50  0000 R CNN "Dielectric"
F 7 "1276-2970-1-ND" H -2330 -1650 50  0001 C CNN "Digi-Key PN"
	1    3570 2910
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F4617B2
P 4220 2910
AR Path="/5BAAE16C/5F4617B2" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5F4617B2" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5F4617B2" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5F4617B2" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5F4617B2" Ref="C?"  Part="1" 
AR Path="/5C1D5C9E/5F4617B2" Ref="C?"  Part="1" 
AR Path="/5CB6F1ED/5F4617B2" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5F4617B2" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5F4617B2" Ref="C1806"  Part="1" 
F 0 "C1806" H 4245 3010 50  0000 L CNN
F 1 "0.1uF" H 4245 2810 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4258 2760 50  0001 C CNN
F 3 "" H 4245 3010 50  0001 C CNN
F 4 "0603" H 4070 3010 50  0000 R CNN "display_footprint"
F 5 "50V" H 4070 2910 50  0000 R CNN "Voltage"
F 6 "X7R" H 4070 2810 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 4645 3410 60  0001 C CNN "Digi-Key PN"
	1    4220 2910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01813
U 1 1 5F4617B3
P 3570 3060
F 0 "#PWR01813" H 3570 2810 50  0001 C CNN
F 1 "GND" H 3570 2910 50  0000 C CNN
F 2 "" H 3570 3060 50  0001 C CNN
F 3 "" H 3570 3060 50  0001 C CNN
	1    3570 3060
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01816
U 1 1 5F4617B5
P 4220 3060
F 0 "#PWR01816" H 4220 2810 50  0001 C CNN
F 1 "GND" H 4220 2910 50  0000 C CNN
F 2 "" H 4220 3060 50  0001 C CNN
F 3 "" H 4220 3060 50  0001 C CNN
	1    4220 3060
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3180 4600 2680
Wire Wire Line
	4600 2680 4220 2680
Wire Wire Line
	3570 2680 3570 2760
Wire Wire Line
	4220 2760 4220 2680
Connection ~ 4220 2680
Wire Wire Line
	4220 2680 3570 2680
$Comp
L Device:Ferrite_Bead L?
U 1 1 5F4617B7
P 2830 2680
AR Path="/5CAD2D97/5F4617B7" Ref="L?"  Part="1" 
AR Path="/5CB25152/5F4617B7" Ref="L?"  Part="1" 
AR Path="/5E697934/5F4617B7" Ref="L?"  Part="1" 
AR Path="/5E939EC2/5F4617B7" Ref="L?"  Part="1" 
AR Path="/5E98CF45/5F4617B7" Ref="L1801"  Part="1" 
F 0 "L1801" V 2680 2705 50  0000 C CNN
F 1 "600R 0.5A" V 2980 2680 50  0000 C CNN
F 2 "Inductors_SMD:L_0603" V 2760 2680 50  0001 C CNN
F 3 "~" H 2830 2680 50  0001 C CNN
F 4 "732-1593-1-ND" H -6700 -1080 50  0001 C CNN "Digi-Key PN"
	1    2830 2680
	0    1    -1   0   
$EndComp
Wire Wire Line
	3570 2680 2980 2680
Connection ~ 3570 2680
$Comp
L power:+3.3V #PWR01805
U 1 1 5F4617B9
P 2350 2600
F 0 "#PWR01805" H 2350 2450 50  0001 C CNN
F 1 "+3.3V" H 2350 2740 50  0000 C CNN
F 2 "" H 2350 2600 50  0001 C CNN
F 3 "" H 2350 2600 50  0001 C CNN
	1    2350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2600 2350 2680
Wire Wire Line
	2350 2680 2680 2680
Wire Wire Line
	2830 3480 2480 3480
Connection ~ 2830 3480
Wire Wire Line
	2480 3580 2830 3580
Connection ~ 2830 3580
Wire Wire Line
	2480 3680 3570 3680
Connection ~ 3570 3680
Wire Wire Line
	3570 1850 4220 1850
Wire Wire Line
	4220 1850 4800 1850
Wire Wire Line
	4800 1850 4800 3180
Connection ~ 4220 1850
$Comp
L power:GND #PWR01825
U 1 1 5F4617BC
P 6380 2250
F 0 "#PWR01825" H 6380 2000 50  0001 C CNN
F 1 "GND" H 6380 2100 50  0000 C CNN
F 2 "" H 6380 2250 50  0001 C CNN
F 3 "" H 6380 2250 50  0001 C CNN
	1    6380 2250
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+20V #PWR01824
U 1 1 5F4617BE
P 6380 1650
F 0 "#PWR01824" H 6380 1500 50  0001 C CNN
F 1 "+20V" H 6380 1790 50  0000 C CNN
F 2 "" H 6380 1650 50  0001 C CNN
F 3 "" H 6380 1650 50  0001 C CNN
	1    6380 1650
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R1811
U 1 1 5EA3C120
P 6910 2630
F 0 "R1811" V 6810 2630 50  0000 C CNN
F 1 "9.09k" V 6910 2630 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6910 2630 50  0001 C CNN
F 3 "" H 6910 2630 50  0001 C CNN
F 4 "0603" V 7010 2630 50  0000 C CNN "display_footprint"
F 5 "0.1%" V 7110 2630 50  0000 C CNN "Tolerance"
F 6 "1/10W" V 7210 2630 50  0000 C CNN "Wattage"
F 7 "YAG1755CT-ND" H 7210 3030 60  0001 C CNN "Digi-Key PN"
	1    6910 2630
	0    1    -1   0   
$EndComp
Wire Wire Line
	7060 2630 7140 2630
Wire Wire Line
	7140 2630 7140 1950
Wire Wire Line
	7140 1950 6780 1950
Wire Wire Line
	6760 2630 6100 2630
Wire Wire Line
	6100 2630 6100 2050
Wire Wire Line
	6100 2050 6180 2050
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EA420BE
P 6100 3210
AR Path="/5BB27BA3/5EA420BE" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5EA420BE" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5EA420BE" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5EA420BE" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5EA420BE" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5EA420BE" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5EA420BE" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5EA420BE" Ref="R?"  Part="1" 
AR Path="/5E939D31/5EA420BE" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5EA420BE" Ref="R1809"  Part="1" 
F 0 "R1809" H 6020 3210 50  0000 R CNN
F 1 "1.01k" V 6100 3210 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6100 3210 50  0001 C CNN
F 3 "" H 6100 3210 50  0001 C CNN
F 4 "0603" H 6200 3290 50  0000 L CNN "display_footprint"
F 5 "0.1%" H 6200 3210 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 6210 3130 50  0000 L CNN "Wattage"
F 7 "YAG4489CT-ND" H 6100 3210 50  0001 C CNN "Digi-Key PN"
	1    6100 3210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01821
U 1 1 5EA4414F
P 6100 3360
F 0 "#PWR01821" H 6100 3110 50  0001 C CNN
F 1 "GND" H 6100 3210 50  0000 C CNN
F 2 "" H 6100 3360 50  0001 C CNN
F 3 "" H 6100 3360 50  0001 C CNN
	1    6100 3360
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3060 6100 2920
Connection ~ 6100 2630
$Comp
L Amplifier_Operational:OPA2197xDGK U1804
U 1 1 5F4617C6
P 6480 1950
F 0 "U1804" H 6480 2310 50  0000 L CNN
F 1 "OPA2197xDGK" H 6480 2150 50  0000 L CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 6480 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa2197.pdf" H 6480 1950 50  0001 C CNN
F 4 "296-44774-1-ND" H 6480 1950 50  0001 C CNN "Digi-Key PN"
	1    6480 1950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2197xDGK U1804
U 3 1 5F4617C7
P 6480 1950
F 0 "U1804" H 6480 2230 50  0000 L CNN
F 1 "OPA2197xDGK" H 6480 2150 50  0000 L CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 6480 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa2197.pdf" H 6480 1950 50  0001 C CNN
F 4 "296-44774-1-ND" H 6480 1950 50  0001 C CNN "Digi-Key PN"
	3    6480 1950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA2197xDGK U1804
U 2 1 5F4617C9
P 6480 4510
F 0 "U1804" H 6480 4710 50  0000 L CNN
F 1 "OPA2197xDGK" H 6480 4310 50  0000 L CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 6480 4510 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa2197.pdf" H 6480 4510 50  0001 C CNN
F 4 "296-44774-1-ND" H 6480 4510 50  0001 C CNN "Digi-Key PN"
	2    6480 4510
	1    0    0    -1  
$EndComp
Wire Wire Line
	6180 4610 6100 4610
Wire Wire Line
	6100 4610 6100 4890
Wire Wire Line
	6100 4890 7140 4890
Wire Wire Line
	7140 4890 7140 4510
Wire Wire Line
	7140 4510 6780 4510
$Comp
L Custom_Library:C_Custom C?
U 1 1 5EA54E47
P 6910 2920
AR Path="/5BAAE16C/5EA54E47" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5EA54E47" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5EA54E47" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5EA54E47" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5EA54E47" Ref="C?"  Part="1" 
AR Path="/5C1D5C9E/5EA54E47" Ref="C?"  Part="1" 
AR Path="/5CB6F1ED/5EA54E47" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5EA54E47" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5EA54E47" Ref="C1811"  Part="1" 
F 0 "C1811" V 6310 2920 50  0000 C CNN
F 1 "0.1uF" V 6400 2920 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 6948 2770 50  0001 C CNN
F 3 "" H 6935 3020 50  0001 C CNN
F 4 "0603" V 6500 2920 50  0000 C CNN "display_footprint"
F 5 "50V" V 6600 2920 50  0000 C CNN "Voltage"
F 6 "X7R" V 6700 2920 50  0000 C CNN "Dielectric"
F 7 "399-7845-1-ND" H 7335 3420 60  0001 C CNN "Digi-Key PN"
	1    6910 2920
	0    1    -1   0   
$EndComp
Wire Wire Line
	7060 2920 7140 2920
Wire Wire Line
	7140 2920 7140 2630
Connection ~ 7140 2630
Wire Wire Line
	6760 2920 6100 2920
Connection ~ 6100 2920
Wire Wire Line
	6100 2920 6100 2630
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F4617CE
P 7370 4510
AR Path="/5E939EAF/5F4617CE" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F4617CE" Ref="R1812"  Part="1" 
F 0 "R1812" V 7270 4510 50  0000 C CNN
F 1 "1k" V 7370 4510 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7370 4510 50  0001 C CNN
F 3 "" H 7370 4510 50  0001 C CNN
F 4 "0603" V 7470 4510 50  0000 C CNN "display_footprint"
F 5 "1%" V 7570 4510 50  0000 C CNN "Tolerance"
F 6 "1/10W" V 7670 4510 50  0000 C CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 7670 4910 60  0001 C CNN "Digi-Key PN"
	1    7370 4510
	0    1    1    0   
$EndComp
Wire Wire Line
	7520 4510 7930 4510
Wire Wire Line
	7930 4510 7930 4590
Wire Wire Line
	7220 4510 7140 4510
Connection ~ 7140 4510
$Comp
L power:GND #PWR01826
U 1 1 5EA637A7
P 7930 4890
F 0 "#PWR01826" H 7930 4640 50  0001 C CNN
F 1 "GND" H 7930 4740 50  0000 C CNN
F 2 "" H 7930 4890 50  0001 C CNN
F 3 "" H 7930 4890 50  0001 C CNN
	1    7930 4890
	1    0    0    -1  
$EndComp
$Comp
L Device:Voltmeter_DC MES1801
U 1 1 5EA64BB1
P 8400 2230
F 0 "MES1801" H 8270 2270 50  0000 R CNN
F 1 "Voltmeter_DC" H 8270 2200 50  0000 R CNN
F 2 "" V 8400 2330 50  0001 C CNN
F 3 "~" V 8400 2330 50  0001 C CNN
	1    8400 2230
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01827
U 1 1 5F4617D4
P 8400 2430
F 0 "#PWR01827" H 8400 2180 50  0001 C CNN
F 1 "GND" H 8400 2280 50  0000 C CNN
F 2 "" H 8400 2430 50  0001 C CNN
F 3 "" H 8400 2430 50  0001 C CNN
	1    8400 2430
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2030 8400 1950
Wire Wire Line
	8400 1950 7140 1950
Connection ~ 7140 1950
Wire Wire Line
	5670 3580 5670 1850
Wire Wire Line
	5670 1850 6180 1850
Connection ~ 5670 3580
$Comp
L power:GND #PWR01828
U 1 1 5F4617D5
P 8400 4890
F 0 "#PWR01828" H 8400 4640 50  0001 C CNN
F 1 "GND" H 8400 4740 50  0000 C CNN
F 2 "" H 8400 4890 50  0001 C CNN
F 3 "" H 8400 4890 50  0001 C CNN
	1    8400 4890
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4590 8400 4510
Wire Wire Line
	8400 4510 7930 4510
Connection ~ 7930 4510
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F4617D8
P 5670 4740
AR Path="/5BB27BA3/5F4617D8" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F4617D8" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F4617D8" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F4617D8" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F4617D8" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F4617D8" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F4617D8" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F4617D8" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F4617D8" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F4617D8" Ref="R1808"  Part="1" 
F 0 "R1808" H 5590 4740 50  0000 R CNN
F 1 "1.01k" V 5670 4740 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5670 4740 50  0001 C CNN
F 3 "" H 5670 4740 50  0001 C CNN
F 4 "0603" H 5770 4820 50  0000 L CNN "display_footprint"
F 5 "0.1%" H 5770 4740 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5780 4660 50  0000 L CNN "Wattage"
F 7 "YAG4489CT-ND" H 5670 4740 50  0001 C CNN "Digi-Key PN"
	1    5670 4740
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01820
U 1 1 5F4617DA
P 5670 4890
F 0 "#PWR01820" H 5670 4640 50  0001 C CNN
F 1 "GND" H 5670 4740 50  0000 C CNN
F 2 "" H 5670 4890 50  0001 C CNN
F 3 "" H 5670 4890 50  0001 C CNN
	1    5670 4890
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R1810
U 1 1 5F4617DC
P 6530 4020
F 0 "R1810" V 6430 4020 50  0000 C CNN
F 1 "9.09k" V 6530 4020 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6530 4020 50  0001 C CNN
F 3 "" H 6530 4020 50  0001 C CNN
F 4 "0603" V 6630 4020 50  0000 C CNN "display_footprint"
F 5 "0.1%" V 6730 4020 50  0000 C CNN "Tolerance"
F 6 "1/10W" V 6830 4020 50  0000 C CNN "Wattage"
F 7 "YAG1755CT-ND" H 6830 4420 60  0001 C CNN "Digi-Key PN"
	1    6530 4020
	0    1    -1   0   
$EndComp
Wire Wire Line
	6680 4020 7140 4020
Wire Wire Line
	7140 4020 7140 2920
Connection ~ 7140 2920
Wire Wire Line
	6380 4020 5670 4020
Wire Wire Line
	5670 4020 5670 4410
Wire Wire Line
	6180 4410 5670 4410
Connection ~ 5670 4410
Wire Wire Line
	5670 4410 5670 4590
Text Notes 5630 1720 0    50   ~ 0
Gain = 10 V/V
Text Notes 6930 4280 0    50   ~ 0
Gain = 0.1 V/V
Text GLabel 8480 4510 2    50   Output ~ 0
VDAC_0_ADC
Wire Wire Line
	8480 4510 8400 4510
Connection ~ 8400 4510
$Comp
L Diode:DZ2S033X0L D1803
U 1 1 5F4617DE
P 8400 4740
F 0 "D1803" V 8340 4850 50  0000 L CNN
F 1 "BZX384-B3V3,115" V 8440 4850 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323" H 8400 4565 50  0001 C CNN
F 3 "https://industrial.panasonic.com/content/data/SC/ds/ds4/DZ2S03300L_E.pdf" H 8400 4740 50  0001 C CNN
F 4 "1727-3654-1-ND" H 8400 4740 50  0001 C CNN "Digi-Key PN"
	1    8400 4740
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01823
U 1 1 5EABCBA0
P 6380 1220
F 0 "#PWR01823" H 6380 970 50  0001 C CNN
F 1 "GND" H 6380 1070 50  0000 C CNN
F 2 "" H 6380 1220 50  0000 C CNN
F 3 "" H 6380 1220 50  0000 C CNN
	1    6380 1220
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1808
U 1 1 5EABCBAA
P 6060 990
F 0 "C1808" H 6085 1090 50  0000 L CNN
F 1 "0.1uF" H 6085 890 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6098 840 50  0001 C CNN
F 3 "" H 6085 1090 50  0001 C CNN
F 4 "0603" H 5910 1090 50  0000 R CNN "display_footprint"
F 5 "50V" H 5910 990 50  0000 R CNN "Voltage"
F 6 "X7R" H 5910 890 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 2150 -5890 50  0001 C CNN "Digi-Key PN"
	1    6060 990 
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1810
U 1 1 5F4617E3
P 6700 990
F 0 "C1810" H 6725 1090 50  0000 L CNN
F 1 "1nF" H 6725 890 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6738 840 50  0001 C CNN
F 3 "" H 6725 1090 50  0001 C CNN
F 4 "0603" H 6550 1090 50  0001 R CNN "display_footprint"
F 5 "50V" H 6550 990 50  0001 R CNN "Voltage"
F 6 "X7R" H 6550 890 50  0001 R CNN "Dielectric"
F 7 "399-1083-1-ND" H 2150 -5890 50  0001 C CNN "Digi-Key PN"
	1    6700 990 
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C1809
U 1 1 5F4617E5
P 6380 990
F 0 "C1809" H 6405 1090 50  0000 L CNN
F 1 "10nF" H 6405 890 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6418 840 50  0001 C CNN
F 3 "" H 6405 1090 50  0001 C CNN
F 4 "0603" H 6230 1090 50  0001 R CNN "display_footprint"
F 5 "50V" H 6230 990 50  0001 R CNN "Voltage"
F 6 "X7R" H 6230 890 50  0001 R CNN "Dielectric"
F 7 "399-7842-1-ND" H 2150 -5890 50  0001 C CNN "Digi-Key PN"
	1    6380 990 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6060 800  6060 840 
Connection ~ 6380 800 
Wire Wire Line
	6700 800  6700 840 
Wire Wire Line
	6060 800  6380 800 
Wire Wire Line
	6380 760  6380 800 
Wire Wire Line
	6060 1180 6060 1140
Connection ~ 6380 1180
Wire Wire Line
	6700 1180 6700 1140
Wire Wire Line
	6060 1180 6380 1180
Wire Wire Line
	6380 1140 6380 1180
Wire Wire Line
	6380 800  6700 800 
Wire Wire Line
	6380 800  6380 840 
Wire Wire Line
	6380 1180 6700 1180
Wire Wire Line
	6380 1180 6380 1220
$Comp
L Custom_Library:+20V #PWR01822
U 1 1 5F4617E8
P 6380 760
F 0 "#PWR01822" H 6380 610 50  0001 C CNN
F 1 "+20V" H 6380 900 50  0000 C CNN
F 2 "" H 6380 760 50  0001 C CNN
F 3 "" H 6380 760 50  0001 C CNN
	1    6380 760 
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F4617EA
P 5090 4740
AR Path="/5BAAE16C/5F4617EA" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5F4617EA" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5F4617EA" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5F4617EA" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5F4617EA" Ref="C?"  Part="1" 
AR Path="/5C1D5C9E/5F4617EA" Ref="C?"  Part="1" 
AR Path="/5CB6F1ED/5F4617EA" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5F4617EA" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5F4617EA" Ref="C1807"  Part="1" 
F 0 "C1807" H 5115 4840 50  0000 L CNN
F 1 "0.1uF" H 5115 4640 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5128 4590 50  0001 C CNN
F 3 "" H 5115 4840 50  0001 C CNN
F 4 "0603" H 4940 4840 50  0000 R CNN "display_footprint"
F 5 "50V" H 4940 4740 50  0000 R CNN "Voltage"
F 6 "X7R" H 4940 4640 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 5515 5240 60  0001 C CNN "Digi-Key PN"
	1    5090 4740
	1    0    0    -1  
$EndComp
Wire Wire Line
	5670 4410 5090 4410
Wire Wire Line
	5090 4410 5090 4590
$Comp
L power:GND #PWR01818
U 1 1 5F4617EB
P 5090 4890
F 0 "#PWR01818" H 5090 4640 50  0001 C CNN
F 1 "GND" H 5090 4740 50  0000 C CNN
F 2 "" H 5090 4890 50  0001 C CNN
F 3 "" H 5090 4890 50  0001 C CNN
	1    5090 4890
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Standoff MK1803
U 1 1 5F4617EE
P 9340 1950
F 0 "MK1803" H 9340 2100 50  0000 C CNN
F 1 "#4-40 Standoff" H 9340 2200 50  0000 C CNN
F 2 "" H 9340 2300 50  0001 C CNN
F 3 "" H 9340 2300 50  0001 C CNN
F 4 "1772-1052-ND" H 9340 1950 50  0001 C CNN "Digi-Key PN"
	1    9340 1950
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Standoff MK1809
U 1 1 5F4617F0
P 9740 1950
F 0 "MK1809" H 9740 2100 50  0000 C CNN
F 1 "#4-40 Standoff" H 9740 2200 50  0000 C CNN
F 2 "" H 9740 2300 50  0001 C CNN
F 3 "" H 9740 2300 50  0001 C CNN
F 4 "1772-1052-ND" H 9740 1950 50  0001 C CNN "Digi-Key PN"
	1    9740 1950
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Standoff MK1804
U 1 1 5F4617F1
P 9340 2500
F 0 "MK1804" H 9340 2650 50  0000 C CNN
F 1 "#4-40 Standoff" H 9340 2750 50  0000 C CNN
F 2 "" H 9340 2850 50  0001 C CNN
F 3 "" H 9340 2850 50  0001 C CNN
F 4 "1772-1052-ND" H 9340 2500 50  0001 C CNN "Digi-Key PN"
	1    9340 2500
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Standoff MK1810
U 1 1 5F4617F4
P 9740 2500
F 0 "MK1810" H 9740 2650 50  0000 C CNN
F 1 "#4-40 Standoff" H 9740 2750 50  0000 C CNN
F 2 "" H 9740 2850 50  0001 C CNN
F 3 "" H 9740 2850 50  0001 C CNN
F 4 "1772-1052-ND" H 9740 2500 50  0001 C CNN "Digi-Key PN"
	1    9740 2500
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Screw MK1802
U 1 1 5F4617F6
P 9340 1430
F 0 "MK1802" H 9340 1530 50  0000 C CNN
F 1 "#4-40 Screw" H 9340 1630 50  0000 C CNN
F 2 "" H 9340 1680 50  0001 C CNN
F 3 "" H 9340 1680 50  0001 C CNN
F 4 "36-9900-ND" H 9340 1430 50  0001 C CNN "Digi-Key PN"
	1    9340 1430
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Screw MK1808
U 1 1 5F4617F8
P 9740 1430
F 0 "MK1808" H 9740 1530 50  0000 C CNN
F 1 "#4-40 Screw" H 9740 1630 50  0000 C CNN
F 2 "" H 9740 1680 50  0001 C CNN
F 3 "" H 9740 1680 50  0001 C CNN
F 4 "36-9900-ND" H 9740 1430 50  0001 C CNN "Digi-Key PN"
	1    9740 1430
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Screw MK1801
U 1 1 5F4617FA
P 9340 930
F 0 "MK1801" H 9340 1030 50  0000 C CNN
F 1 "#4-40 Screw" H 9340 1130 50  0000 C CNN
F 2 "" H 9340 1180 50  0001 C CNN
F 3 "" H 9340 1180 50  0001 C CNN
F 4 "36-9900-ND" H 9340 930 50  0001 C CNN "Digi-Key PN"
	1    9340 930 
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Screw MK1807
U 1 1 5F4617FC
P 9740 930
F 0 "MK1807" H 9740 1030 50  0000 C CNN
F 1 "#4-40 Screw" H 9740 1130 50  0000 C CNN
F 2 "" H 9740 1180 50  0001 C CNN
F 3 "" H 9740 1180 50  0001 C CNN
F 4 "36-9900-ND" H 9740 930 50  0001 C CNN "Digi-Key PN"
	1    9740 930 
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Screw MK1806
U 1 1 5F4617FE
P 9340 3550
F 0 "MK1806" H 9340 3650 50  0000 C CNN
F 1 "#4-40 Screw" H 9340 3750 50  0000 C CNN
F 2 "" H 9340 3800 50  0001 C CNN
F 3 "" H 9340 3800 50  0001 C CNN
F 4 "36-9900-ND" H 9340 3550 50  0001 C CNN "Digi-Key PN"
	1    9340 3550
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Screw MK1812
U 1 1 5F4617FF
P 9740 3550
F 0 "MK1812" H 9740 3650 50  0000 C CNN
F 1 "#4-40 Screw" H 9740 3750 50  0000 C CNN
F 2 "" H 9740 3800 50  0001 C CNN
F 3 "" H 9740 3800 50  0001 C CNN
F 4 "36-9900-ND" H 9740 3550 50  0001 C CNN "Digi-Key PN"
	1    9740 3550
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Screw MK1805
U 1 1 5F461801
P 9340 3050
F 0 "MK1805" H 9340 3150 50  0000 C CNN
F 1 "#4-40 Screw" H 9340 3250 50  0000 C CNN
F 2 "" H 9340 3300 50  0001 C CNN
F 3 "" H 9340 3300 50  0001 C CNN
F 4 "36-9900-ND" H 9340 3050 50  0001 C CNN "Digi-Key PN"
	1    9340 3050
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:Screw MK1811
U 1 1 5F461804
P 9740 3050
F 0 "MK1811" H 9740 3150 50  0000 C CNN
F 1 "#4-40 Screw" H 9740 3250 50  0000 C CNN
F 2 "" H 9740 3300 50  0001 C CNN
F 3 "" H 9740 3300 50  0001 C CNN
F 4 "36-9900-ND" H 9740 3050 50  0001 C CNN "Digi-Key PN"
	1    9740 3050
	1    0    0    -1  
$EndComp
$Comp
L LED:ASMB-MTB0-0A3A2 D1802
U 1 1 5F2A061C
P 5330 6370
F 0 "D1802" V 5420 5970 50  0000 R CNN
F 1 "ASMB-MTB0-0A3A2" V 5320 5970 50  0000 R CNN
F 2 "LED_SMD:LED_Avago_PLCC4_3.2x2.8mm_CW" H 5330 6870 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-4186EN" H 5330 5920 50  0001 C CNN
F 4 "516-3279-1-ND" H 5330 6370 50  0001 C CNN "Digi-Key PN"
	1    5330 6370
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01819
U 1 1 5F461805
P 5330 6170
F 0 "#PWR01819" H 5330 6020 50  0001 C CNN
F 1 "+3.3V" H 5330 6310 50  0000 C CNN
F 2 "" H 5330 6170 50  0001 C CNN
F 3 "" H 5330 6170 50  0001 C CNN
	1    5330 6170
	1    0    0    -1  
$EndComp
Text GLabel 5130 6570 3    50   UnSpc ~ 0
METER0_LED_R
Text GLabel 5330 6570 3    50   UnSpc ~ 0
METER0_LED_G
Text GLabel 5530 6570 3    50   UnSpc ~ 0
METER0_LED_B
Text GLabel 4880 1850 2    50   Output ~ 0
DAC0_VREF
Wire Wire Line
	4880 1850 4800 1850
Connection ~ 4800 1850
$Comp
L Custom_Library:TP_Pad TP?
U 1 1 5F3A0BD8
P 4800 1770
AR Path="/5E939CFF/5F3A0BD8" Ref="TP?"  Part="1" 
AR Path="/5E98CF45/5F3A0BD8" Ref="TP1801"  Part="1" 
F 0 "TP1801" H 4800 1920 50  0000 C CNN
F 1 "TP_Pad" H 4800 1920 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 4800 1770 60  0001 C CNN
F 3 "" H 4800 1770 60  0000 C CNN
	1    4800 1770
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1770 4800 1850
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F46180C
P 7930 4740
AR Path="/5BAAE16C/5F46180C" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5F46180C" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5F46180C" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5F46180C" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5F46180C" Ref="C?"  Part="1" 
AR Path="/5C1D5C9E/5F46180C" Ref="C?"  Part="1" 
AR Path="/5CB6F1ED/5F46180C" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5F46180C" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5F46180C" Ref="C1812"  Part="1" 
F 0 "C1812" H 7955 4840 50  0000 L CNN
F 1 "0.1uF" H 7955 4640 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7968 4590 50  0001 C CNN
F 3 "" H 7955 4840 50  0001 C CNN
F 4 "0603" H 7780 4840 50  0000 R CNN "display_footprint"
F 5 "50V" H 7780 4740 50  0000 R CNN "Voltage"
F 6 "X7R" H 7780 4640 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 8355 5240 60  0001 C CNN "Digi-Key PN"
	1    7930 4740
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G07_Power U?
U 1 1 5F429AE6
P 2320 6450
AR Path="/5E939F76/5F429AE6" Ref="U?"  Part="1" 
AR Path="/5E98CF45/5F429AE6" Ref="U1801"  Part="1" 
F 0 "U1801" H 2420 6550 50  0000 L CNN
F 1 "74LVC1G07" H 2420 6350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 2320 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2320 6450 50  0001 C CNN
F 4 "296-8486-1-ND" H 2320 6450 50  0001 C CNN "Digi-Key PN"
	1    2320 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F46180F
P 2320 6550
AR Path="/5E939F76/5F46180F" Ref="#PWR?"  Part="1" 
AR Path="/5E98CF45/5F46180F" Ref="#PWR01802"  Part="1" 
F 0 "#PWR01802" H 2320 6300 50  0001 C CNN
F 1 "GND" H 2320 6400 50  0000 C CNN
F 2 "" H 2320 6550 50  0001 C CNN
F 3 "" H 2320 6550 50  0001 C CNN
	1    2320 6550
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F461811
P 2390 7170
AR Path="/5E939F76/5F461811" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5F461811" Ref="C1802"  Part="1" 
F 0 "C1802" H 2415 7270 50  0000 L CNN
F 1 "0.1uF" H 2415 7070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2428 7020 50  0001 C CNN
F 3 "" H 2415 7270 50  0001 C CNN
F 4 "0603" H 2240 7270 50  0000 R CNN "display_footprint"
F 5 "50V" H 2240 7170 50  0000 R CNN "Voltage"
F 6 "X7R" H 2240 7070 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 2815 7670 60  0001 C CNN "Digi-Key PN"
	1    2390 7170
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F429B19
P 2390 7320
AR Path="/5E939F76/5F429B19" Ref="#PWR?"  Part="1" 
AR Path="/5E98CF45/5F429B19" Ref="#PWR01807"  Part="1" 
F 0 "#PWR01807" H 2390 7070 50  0001 C CNN
F 1 "GND" H 2390 7170 50  0000 C CNN
F 2 "" H 2390 7320 50  0001 C CNN
F 3 "" H 2390 7320 50  0001 C CNN
	1    2390 7320
	1    0    0    -1  
$EndComp
Text GLabel 2020 6450 0    40   Input ~ 0
~DAC_SPI_SYNC_0
$Comp
L power:+3.3V #PWR01806
U 1 1 5F432DDD
P 2390 7020
F 0 "#PWR01806" H 2390 6870 50  0001 C CNN
F 1 "+3.3V" H 2390 7160 50  0000 C CNN
F 2 "" H 2390 7020 50  0001 C CNN
F 3 "" H 2390 7020 50  0001 C CNN
	1    2390 7020
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01801
U 1 1 5F4336A3
P 2320 6350
F 0 "#PWR01801" H 2320 6200 50  0001 C CNN
F 1 "+3.3V" H 2320 6490 50  0000 C CNN
F 2 "" H 2320 6350 50  0001 C CNN
F 3 "" H 2320 6350 50  0001 C CNN
	1    2320 6350
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F46181A
P 2890 5880
AR Path="/5BAAE1F3/5F46181A" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5F46181A" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5F46181A" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5F46181A" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5F46181A" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5F46181A" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5F46181A" Ref="R?"  Part="1" 
AR Path="/5CB7A8C3/5F46181A" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/5F46181A" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F46181A" Ref="R1806"  Part="1" 
F 0 "R1806" H 2830 5880 50  0000 R CNN
F 1 "1k" V 2890 5880 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2890 5880 50  0001 C CNN
F 3 "" H 2890 5880 50  0001 C CNN
F 4 "0603" H 2960 5960 50  0000 L CNN "display_footprint"
F 5 "1%" H 2960 5880 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2960 5810 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 3190 6280 60  0001 C CNN "Digi-Key PN"
	1    2890 5880
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2890 6450 2890 6330
Wire Wire Line
	2570 6450 2890 6450
$Comp
L Device:LED D?
U 1 1 5F46181C
P 2890 6180
AR Path="/5BB844FD/5F46181C" Ref="D?"  Part="1" 
AR Path="/5BF346B3/5F46181C" Ref="D?"  Part="1" 
AR Path="/5BAAE1F3/5F46181C" Ref="D?"  Part="1" 
AR Path="/5CAD2D97/5F46181C" Ref="D?"  Part="1" 
AR Path="/5CB7A8BC/5F46181C" Ref="D?"  Part="1" 
AR Path="/5CB7A8C3/5F46181C" Ref="D?"  Part="1" 
AR Path="/5E93CC4E/5F46181C" Ref="D?"  Part="1" 
AR Path="/5E98CF45/5F46181C" Ref="D1801"  Part="1" 
F 0 "D1801" V 2929 6063 50  0000 R CNN
F 1 "Green" V 2838 6063 50  0000 R CNN
F 2 "LEDs:LED_0603" H 2890 6180 50  0001 C CNN
F 3 "~" H 2890 6180 50  0001 C CNN
F 4 "754-1121-1-ND" H -2270 -140 50  0001 C CNN "Digi-Key PN"
	1    2890 6180
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01811
U 1 1 5F46181E
P 2890 5730
F 0 "#PWR01811" H 2890 5580 50  0001 C CNN
F 1 "+3.3V" H 2890 5870 50  0000 C CNN
F 2 "" H 2890 5730 50  0001 C CNN
F 3 "" H 2890 5730 50  0001 C CNN
	1    2890 5730
	1    0    0    -1  
$EndComp
Text Notes 8160 2840 0    50   ~ 0
15V Full Scale
$Comp
L power:PWR_FLAG #FLG01801
U 1 1 5F4BFF8E
P 4600 2600
F 0 "#FLG01801" H 4600 2675 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 2750 50  0000 C CNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "~" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2600 4600 2680
Connection ~ 4600 2680
$EndSCHEMATC
