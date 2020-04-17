EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 12 20
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
L Timer_RTC:DS3231MZ U?
U 1 1 5E217505
P 5400 2620
F 0 "U?" H 5100 2970 50  0000 R CNN
F 1 "DS3231MZ" H 5850 2970 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5400 2120 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231M.pdf" H 5400 2020 50  0001 C CNN
F 4 "DS3231MZ+-ND" H 5400 2620 50  0001 C CNN "Digi-Key PN"
	1    5400 2620
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E217898
P 5400 3020
F 0 "#PWR?" H 5400 2770 50  0001 C CNN
F 1 "GND" H 5400 2870 50  0000 C CNN
F 2 "" H 5400 3020 50  0001 C CNN
F 3 "" H 5400 3020 50  0001 C CNN
	1    5400 3020
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E217DBC
P 5400 2220
F 0 "#PWR?" H 5400 2070 50  0001 C CNN
F 1 "+3.3V" H 5480 2360 50  0000 C CNN
F 2 "" H 5400 2220 50  0001 C CNN
F 3 "" H 5400 2220 50  0001 C CNN
	1    5400 2220
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:VBAT #PWR?
U 1 1 5E2180E2
P 5300 2220
F 0 "#PWR?" H 5300 2070 50  0001 C CNN
F 1 "VBAT" H 5220 2360 50  0000 C CNN
F 2 "" H 5300 2220 50  0001 C CNN
F 3 "" H 5300 2220 50  0001 C CNN
	1    5300 2220
	1    0    0    -1  
$EndComp
NoConn ~ 5900 2420
NoConn ~ 5900 2720
NoConn ~ 4900 2820
Text GLabel 4900 2520 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 4900 2420 0    50   Input ~ 0
I2C_SCL
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E21E9AC
P 5820 3810
F 0 "C?" H 5845 3910 50  0000 L CNN
F 1 "0.1uF" H 5845 3710 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5858 3660 50  0001 C CNN
F 3 "" H 5845 3910 50  0001 C CNN
F 4 "0402" H 5670 3910 50  0000 R CNN "display_footprint"
F 5 "50V" H 5670 3810 50  0000 R CNN "Voltage"
F 6 "X7R" H 5670 3710 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 5820 3810 50  0001 C CNN "Digi-Key PN"
	1    5820 3810
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E21E9B2
P 5820 3660
F 0 "#PWR?" H 5820 3510 50  0001 C CNN
F 1 "+3.3V" H 5820 3800 50  0000 C CNN
F 2 "" H 5820 3660 50  0000 C CNN
F 3 "" H 5820 3660 50  0000 C CNN
	1    5820 3660
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E21E9B8
P 5820 3960
F 0 "#PWR?" H 5820 3710 50  0001 C CNN
F 1 "GND" H 5820 3810 50  0000 C CNN
F 2 "" H 5820 3960 50  0001 C CNN
F 3 "" H 5820 3960 50  0001 C CNN
	1    5820 3960
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E220EDC
P 5090 3810
F 0 "C?" H 5115 3910 50  0000 L CNN
F 1 "0.1uF" H 5115 3710 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5128 3660 50  0001 C CNN
F 3 "" H 5115 3910 50  0001 C CNN
F 4 "0402" H 4940 3910 50  0000 R CNN "display_footprint"
F 5 "50V" H 4940 3810 50  0000 R CNN "Voltage"
F 6 "X7R" H 4940 3710 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 5090 3810 50  0001 C CNN "Digi-Key PN"
	1    5090 3810
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E220EE8
P 5090 3960
F 0 "#PWR?" H 5090 3710 50  0001 C CNN
F 1 "GND" H 5090 3810 50  0000 C CNN
F 2 "" H 5090 3960 50  0001 C CNN
F 3 "" H 5090 3960 50  0001 C CNN
	1    5090 3960
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:VBAT #PWR?
U 1 1 5E220F81
P 5090 3660
F 0 "#PWR?" H 5090 3510 50  0001 C CNN
F 1 "VBAT" H 5090 3810 50  0000 C CNN
F 2 "" H 5090 3660 50  0001 C CNN
F 3 "" H 5090 3660 50  0001 C CNN
	1    5090 3660
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC?
U 1 1 5E990E17
P 7160 3170
F 0 "DOC?" H 7160 3420 60  0001 C CNN
F 1 "I2C_Address" H 6710 3170 60  0000 L CNN
F 2 "" H 7160 3520 60  0001 C CNN
F 3 "" H 7160 3520 60  0001 C CNN
	1    7160 3170
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5EA04714
P 1840 5380
F 0 "BT?" H 1940 5480 50  0000 L CNN
F 1 "CR2032" H 1940 5380 50  0000 L CNN
F 2 "" V 1840 5440 50  0001 C CNN
F 3 "~" V 1840 5440 50  0001 C CNN
F 4 "P189-ND" H 1840 5380 50  0001 C CNN "Digi-Key PN"
	1    1840 5380
	1    0    0    -1  
$EndComp
NoConn ~ 1840 5480
NoConn ~ 1840 5180
$Comp
L Device:Battery_Cell BT?
U 1 1 5EA086C4
P 2580 5380
F 0 "BT?" H 2680 5480 50  0000 L CNN
F 1 "CR2032_Holder" H 2680 5380 50  0000 L CNN
F 2 "Battery_Holders:Keystone_1058_1x2032-CoinCell" V 2580 5440 50  0001 C CNN
F 3 "~" V 2580 5440 50  0001 C CNN
F 4 "36-1058-ND" H 2580 5380 50  0001 C CNN "Digi-Key PN"
	1    2580 5380
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EA0966C
P 2580 5480
F 0 "#PWR?" H 2580 5230 50  0001 C CNN
F 1 "GND" H 2580 5330 50  0000 C CNN
F 2 "" H 2580 5480 50  0001 C CNN
F 3 "" H 2580 5480 50  0001 C CNN
	1    2580 5480
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:VBAT #PWR?
U 1 1 5EA09B4F
P 2580 5180
F 0 "#PWR?" H 2580 5030 50  0001 C CNN
F 1 "VBAT" H 2580 5330 50  0000 C CNN
F 2 "" H 2580 5180 50  0001 C CNN
F 3 "" H 2580 5180 50  0001 C CNN
	1    2580 5180
	1    0    0    -1  
$EndComp
$Comp
L Comparator:MIC845N U?
U 1 1 5EA0D285
P 6230 5620
F 0 "U?" H 6380 5820 50  0000 C CNN
F 1 "MIC845N" H 6530 5420 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 6230 5620 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/mic845.pdf" H 6380 5820 50  0001 C CNN
	1    6230 5620
	1    0    0    -1  
$EndComp
Text Notes 5780 5640 0    50   ~ 0
REPLACE WITH SOMETHING SIMILAR
$EndSCHEMATC
