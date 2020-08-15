EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 15 25
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
L Custom_Library:DS1683 U1501
U 1 1 5B5039F7
P 4840 4100
F 0 "U1501" H 4840 3750 60  0000 C CNN
F 1 "DS1683" H 4840 4450 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4740 4400 60  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1683.pdf" H 4740 4400 60  0001 C CNN
F 4 "DS1683S+-ND" H 4940 3850 60  0001 C CNN "Digi-Key PN"
	1    4840 4100
	1    0    0    -1  
$EndComp
NoConn ~ 4440 3900
$Comp
L power:GND #PWR01505
U 1 1 5B50444E
P 4360 4380
F 0 "#PWR01505" H 4360 4130 50  0001 C CNN
F 1 "GND" H 4360 4230 50  0000 C CNN
F 2 "" H 4360 4380 50  0001 C CNN
F 3 "" H 4360 4380 50  0001 C CNN
	1    4360 4380
	1    0    0    -1  
$EndComp
Wire Wire Line
	4360 4380 4360 4300
Wire Wire Line
	4360 4300 4440 4300
Wire Wire Line
	5320 3900 5240 3900
$Comp
L Custom_Library:C_Custom C1504
U 1 1 5B507AC7
P 4830 3120
F 0 "C1504" H 4855 3220 50  0000 L CNN
F 1 "0.1uF" H 4855 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4868 2970 50  0001 C CNN
F 3 "" H 4855 3220 50  0001 C CNN
F 4 "0603" H 4680 3220 50  0000 R CNN "display_footprint"
F 5 "50V" H 4680 3120 50  0000 R CNN "Voltage"
F 6 "X7R" H 4680 3020 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 4830 3120 50  0001 C CNN "Digi-Key PN"
	1    4830 3120
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01507
U 1 1 5B507BED
P 4830 3270
F 0 "#PWR01507" H 4830 3020 50  0001 C CNN
F 1 "GND" H 4830 3120 50  0000 C CNN
F 2 "" H 4830 3270 50  0001 C CNN
F 3 "" H 4830 3270 50  0001 C CNN
	1    4830 3270
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC1501
U 1 1 5E383387
P 5040 5100
F 0 "DOC1501" H 5040 5350 60  0001 C CNN
F 1 "0x6B" H 4590 5100 60  0000 L CNN
F 2 "" H 5040 5450 60  0001 C CNN
F 3 "" H 5040 5450 60  0001 C CNN
	1    5040 5100
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E2AFB8F
P 4180 3120
AR Path="/5C1D5CD8/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5C26E09A/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5D739492/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5E28CFDF/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5E36CE18/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5E3C80C8/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5E3C97B4/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5E2A7EE3/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5E07B870/5E2AFB8F" Ref="C?"  Part="1" 
AR Path="/5E93A1E8/5E2AFB8F" Ref="C1503"  Part="1" 
F 0 "C1503" H 4205 3220 50  0000 L CNN
F 1 "10uF" H 4205 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4218 2970 50  0001 C CNN
F 3 "" H 4205 3220 50  0001 C CNN
F 4 "490-10474-1-ND" H 4605 3620 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 4030 3220 50  0000 R CNN "display_footprint"
F 6 "10V" H 4030 3120 50  0000 R CNN "Voltage"
F 7 "X5R" H 4030 3020 50  0000 R CNN "Dielectric"
	1    4180 3120
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E2AFBB1
P 3530 3120
AR Path="/5C1D5CD8/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5C26E09A/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5D739492/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5E28CFDF/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5E36CE18/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5E3C80C8/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5E3C97B4/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5E2A7EE3/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5E07B870/5E2AFBB1" Ref="C?"  Part="1" 
AR Path="/5E93A1E8/5E2AFBB1" Ref="C1502"  Part="1" 
F 0 "C1502" H 3555 3220 50  0000 L CNN
F 1 "10uF" H 3555 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3568 2970 50  0001 C CNN
F 3 "" H 3555 3220 50  0001 C CNN
F 4 "490-10474-1-ND" H 3955 3620 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 3380 3220 50  0000 R CNN "display_footprint"
F 6 "10V" H 3380 3120 50  0000 R CNN "Voltage"
F 7 "X5R" H 3380 3020 50  0000 R CNN "Dielectric"
	1    3530 3120
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E2B068F
P 2880 3120
AR Path="/5C1D5CD8/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5C26E09A/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5D739492/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5E28CFDF/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5E36CE18/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5E3C80C8/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5E3C97B4/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5E2A7EE3/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5E07B870/5E2B068F" Ref="C?"  Part="1" 
AR Path="/5E93A1E8/5E2B068F" Ref="C1501"  Part="1" 
F 0 "C1501" H 2905 3220 50  0000 L CNN
F 1 "10uF" H 2905 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2918 2970 50  0001 C CNN
F 3 "" H 2905 3220 50  0001 C CNN
F 4 "490-10474-1-ND" H 3305 3620 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 2730 3220 50  0000 R CNN "display_footprint"
F 6 "10V" H 2730 3120 50  0000 R CNN "Voltage"
F 7 "X5R" H 2730 3020 50  0000 R CNN "Dielectric"
	1    2880 3120
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01504
U 1 1 5E2B2965
P 4180 3270
F 0 "#PWR01504" H 4180 3020 50  0001 C CNN
F 1 "GND" H 4180 3120 50  0000 C CNN
F 2 "" H 4180 3270 50  0001 C CNN
F 3 "" H 4180 3270 50  0001 C CNN
	1    4180 3270
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01503
U 1 1 5E2B2CA6
P 3530 3270
F 0 "#PWR01503" H 3530 3020 50  0001 C CNN
F 1 "GND" H 3530 3120 50  0000 C CNN
F 2 "" H 3530 3270 50  0001 C CNN
F 3 "" H 3530 3270 50  0001 C CNN
	1    3530 3270
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01502
U 1 1 5E2B305D
P 2880 3270
F 0 "#PWR01502" H 2880 3020 50  0001 C CNN
F 1 "GND" H 2880 3120 50  0000 C CNN
F 2 "" H 2880 3270 50  0001 C CNN
F 3 "" H 2880 3270 50  0001 C CNN
	1    2880 3270
	1    0    0    -1  
$EndComp
Wire Wire Line
	5320 2890 4830 2890
Wire Wire Line
	2880 2890 2880 2970
Wire Wire Line
	5320 2890 5320 3900
Wire Wire Line
	3530 2970 3530 2890
Connection ~ 3530 2890
Wire Wire Line
	3530 2890 2880 2890
Wire Wire Line
	4180 2970 4180 2890
Connection ~ 4180 2890
Wire Wire Line
	4180 2890 3530 2890
Wire Wire Line
	4830 2970 4830 2890
Connection ~ 4830 2890
Wire Wire Line
	4830 2890 4180 2890
Wire Wire Line
	2880 2810 2880 2890
Connection ~ 2880 2890
Text GLabel 5240 4200 2    50   Input ~ 0
I2C_SCL
Text GLabel 5240 4300 2    50   BiDi ~ 0
I2C_SDA
$Comp
L power:+3.3V #PWR01506
U 1 1 5E36CA22
P 4440 4100
F 0 "#PWR01506" H 4440 3950 50  0001 C CNN
F 1 "+3.3V" V 4440 4240 50  0000 L CNN
F 2 "" H 4440 4100 50  0001 C CNN
F 3 "" H 4440 4100 50  0001 C CNN
	1    4440 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01501
U 1 1 5E36D120
P 2880 2510
F 0 "#PWR01501" H 2880 2360 50  0001 C CNN
F 1 "+3.3V" H 2880 2650 50  0000 C CNN
F 2 "" H 2880 2510 50  0001 C CNN
F 3 "" H 2880 2510 50  0001 C CNN
	1    2880 2510
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01501
U 1 1 5E4BADF7
P 5320 2810
F 0 "#FLG01501" H 5320 2885 50  0001 C CNN
F 1 "PWR_FLAG" H 5320 2960 50  0000 C CNN
F 2 "" H 5320 2810 50  0001 C CNN
F 3 "~" H 5320 2810 50  0001 C CNN
	1    5320 2810
	1    0    0    -1  
$EndComp
Wire Wire Line
	5320 2810 5320 2890
Connection ~ 5320 2890
$Comp
L Diode:BAT48JFILM D?
U 1 1 5F32DF32
P 2880 2660
AR Path="/5E939D31/5F32DF32" Ref="D?"  Part="1" 
AR Path="/5E93A1E8/5F32DF32" Ref="D1501"  Part="1" 
F 0 "D1501" V 2950 2540 50  0000 R CNN
F 1 "BAT48JFILM" V 2850 2540 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" H 2880 2485 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/bat48.pdf" H 2880 2660 50  0001 C CNN
F 4 "497-5711-1-ND" H 2880 2660 50  0001 C CNN "Digi-Key PN"
	1    2880 2660
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
