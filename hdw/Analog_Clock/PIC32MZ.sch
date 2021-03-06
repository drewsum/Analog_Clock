EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 10 25
Title "Analog Clock"
Date "2020-08-15"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5420 1050 5420 1090
Connection ~ 5420 1090
Wire Wire Line
	5420 1090 5420 1130
Wire Wire Line
	5420 1090 5320 1090
Wire Wire Line
	5220 1130 5220 1090
Wire Wire Line
	5320 1130 5320 1090
Connection ~ 5320 1090
Wire Wire Line
	5320 1090 5220 1090
Wire Wire Line
	5520 1130 5520 1090
Connection ~ 5520 1090
Wire Wire Line
	5520 1090 5420 1090
Wire Wire Line
	5620 1130 5620 1090
Wire Wire Line
	5620 1090 5520 1090
$Comp
L power:GND #PWR01005
U 1 1 5CB03EF2
P 5420 6410
F 0 "#PWR01005" H 5420 6160 50  0001 C CNN
F 1 "GND" H 5420 6260 50  0000 C CNN
F 2 "" H 5420 6410 50  0001 C CNN
F 3 "" H 5420 6410 50  0001 C CNN
	1    5420 6410
	1    0    0    -1  
$EndComp
Wire Wire Line
	5420 6410 5420 6370
Wire Wire Line
	5420 6370 5370 6370
Wire Wire Line
	5420 6370 5470 6370
Connection ~ 5420 6370
Wire Wire Line
	5170 6330 5170 6370
Wire Wire Line
	5270 6330 5270 6370
Connection ~ 5270 6370
Wire Wire Line
	5270 6370 5170 6370
Wire Wire Line
	5370 6330 5370 6370
Connection ~ 5370 6370
Wire Wire Line
	5370 6370 5270 6370
Wire Wire Line
	5470 6330 5470 6370
Connection ~ 5470 6370
Wire Wire Line
	5470 6370 5570 6370
Wire Wire Line
	5570 6330 5570 6370
Connection ~ 5570 6370
Wire Wire Line
	5570 6370 5670 6370
Wire Wire Line
	5670 6330 5670 6370
Wire Wire Line
	4770 6330 4770 6410
Wire Wire Line
	4770 1050 4770 1130
Text GLabel 3320 6080 0    40   Input ~ 0
~PIC32MZ_MCLR
$Comp
L power:GND #PWR01001
U 1 1 5CB14B21
P 3210 5660
F 0 "#PWR01001" H 3210 5410 50  0001 C CNN
F 1 "GND" H 3210 5510 50  0000 C CNN
F 2 "" H 3210 5660 50  0001 C CNN
F 3 "" H 3210 5660 50  0001 C CNN
	1    3210 5660
	1    0    0    -1  
$EndComp
Wire Wire Line
	3210 5660 3210 5580
Wire Wire Line
	3210 5580 3320 5580
Text GLabel 3320 3580 0    50   Input ~ 0
PIC32MZ_POSC_EC
Text GLabel 3320 2380 0    50   BiDi ~ 0
PIC32MZ_ICSPDAT
Text GLabel 3320 2280 0    50   Input ~ 0
PIC32MZ_ICSPCLK
Text GLabel 3320 3880 0    50   Output ~ 0
PIC32MZ_POSC_EC_Enable
Text GLabel 3320 4480 0    50   Input ~ 0
USB_UART_RX
Text GLabel 3320 4580 0    50   Output ~ 0
USB_UART_TX
$Comp
L power:+3.3V #PWR01004
U 1 1 5E6E7B25
P 5420 1050
F 0 "#PWR01004" H 5420 900 50  0001 C CNN
F 1 "+3.3V" H 5420 1190 50  0000 C CNN
F 2 "" H 5420 1050 50  0001 C CNN
F 3 "" H 5420 1050 50  0001 C CNN
	1    5420 1050
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3VA_MZ #PWR01002
U 1 1 5EB1FED1
P 4770 1050
F 0 "#PWR01002" H 4770 900 50  0001 C CNN
F 1 "+3.3VA_MZ" H 4770 1190 50  0000 C CNN
F 2 "" H 4770 1050 50  0001 C CNN
F 3 "" H 4770 1050 50  0001 C CNN
	1    4770 1050
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:GNDA_MZ #PWR01003
U 1 1 5EB20397
P 4770 6410
F 0 "#PWR01003" H 4770 6160 50  0001 C CNN
F 1 "GNDA_MZ" H 4770 6260 50  0000 C CNN
F 2 "" H 4770 6410 50  0001 C CNN
F 3 "" H 4770 6410 50  0001 C CNN
	1    4770 6410
	1    0    0    -1  
$EndComp
NoConn ~ 3320 5480
NoConn ~ 3320 5680
NoConn ~ 3320 5780
Text GLabel 3320 3680 0    50   Output ~ 0
PIC32MZ_REFCLK1
Text GLabel 9630 2880 2    50   Output ~ 0
I2C_SCL
Text GLabel 9630 2780 2    50   BiDi ~ 0
I2C_SDA
Wire Wire Line
	7520 2780 8740 2780
Wire Wire Line
	7520 2880 9330 2880
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EB7DAD1
P 9330 2550
AR Path="/5BB27BA3/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5E0F9110/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5E9E0EA5/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5E9E0E87/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5EAE4A89/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5EAE2F23/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5E939ED2/5EB7DAD1" Ref="R1002"  Part="1" 
F 0 "R1002" H 9250 2550 50  0000 R CNN
F 1 "10k" V 9330 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9330 2550 50  0001 C CNN
F 3 "" H 9330 2550 50  0001 C CNN
F 4 "0603" H 9430 2630 50  0000 L CNN "display_footprint"
F 5 "1%" H 9430 2550 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 9440 2470 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 9330 2550 50  0001 C CNN "Digi-Key PN"
	1    9330 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01007
U 1 1 5EB7DAD7
P 9330 2400
F 0 "#PWR01007" H 9330 2250 50  0001 C CNN
F 1 "+3.3V" H 9330 2540 50  0000 C CNN
F 2 "" H 9330 2400 50  0001 C CNN
F 3 "" H 9330 2400 50  0001 C CNN
	1    9330 2400
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EB7DEAB
P 8740 2550
AR Path="/5BB27BA3/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5E0F9110/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5E9E0EA5/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5E9E0E87/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5EAE4A89/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5EAE2F23/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5E939ED2/5EB7DEAB" Ref="R1001"  Part="1" 
F 0 "R1001" H 8660 2550 50  0000 R CNN
F 1 "10k" V 8740 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 8740 2550 50  0001 C CNN
F 3 "" H 8740 2550 50  0001 C CNN
F 4 "0603" H 8840 2630 50  0000 L CNN "display_footprint"
F 5 "1%" H 8840 2550 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 8850 2470 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 8740 2550 50  0001 C CNN "Digi-Key PN"
	1    8740 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01006
U 1 1 5EB7DEB5
P 8740 2400
F 0 "#PWR01006" H 8740 2250 50  0001 C CNN
F 1 "+3.3V" H 8740 2540 50  0000 C CNN
F 2 "" H 8740 2400 50  0001 C CNN
F 3 "" H 8740 2400 50  0001 C CNN
	1    8740 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8740 2700 8740 2780
Connection ~ 8740 2780
Wire Wire Line
	8740 2780 9630 2780
Wire Wire Line
	9330 2700 9330 2880
Connection ~ 9330 2880
Wire Wire Line
	9330 2880 9630 2880
Text GLabel 3320 3780 0    50   Input ~ 0
PIC32MZ_SOSC
$Comp
L Custom_Library:PIC32MZ0512EFE064T-I_PT U1001
U 1 1 5F3A240D
P 5420 3730
F 0 "U1001" H 7220 1230 50  0000 R CNN
F 1 "PIC32MZ0512EFE064T-I_PT" H 5420 3730 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 5420 3730 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/60001320E.pdf" H 5420 3730 50  0001 C CNN
F 4 "PIC32MZ0512EFE064T-I/PTCT-ND" H 5420 3730 50  0001 C CNN "Digi-Key PN"
	1    5420 3730
	1    0    0    -1  
$EndComp
Text Notes 10300 2870 2    50   ~ 0
I2C5
Text Notes 1500 4530 0    50   ~ 0
PPSI: UART1RX
Text Notes 1500 3730 0    50   ~ 0
PPSO: REFCLK1
Text GLabel 3320 2680 0    50   Output ~ 0
DAC_SPI_MOSI
Text GLabel 3320 3080 0    50   Output ~ 0
DAC_SPI_SCLK
Text GLabel 3320 2780 0    40   Output ~ 0
~DAC_SPI_SYNC_0
Text GLabel 3320 2880 0    40   Output ~ 0
~DAC_SPI_SYNC_1
Text GLabel 3320 2980 0    40   Output ~ 0
~DAC_SPI_SYNC_2
Text Notes 1500 2730 0    50   ~ 0
PPSO: SDO3
Text GLabel 3320 1680 0    50   Input ~ 0
VDAC_0_ADC
Text GLabel 3320 1880 0    50   Input ~ 0
VDAC_1_ADC
Text GLabel 3320 2080 0    50   Input ~ 0
VDAC_2_ADC
Text Notes 1500 2370 0    50   ~ 0
ICSP2
Text GLabel 7520 2580 2    50   Output ~ 0
Meter_LED_Enable
Text GLabel 3320 2480 0    50   Input ~ 0
Cap_Touch_Power
Text GLabel 3320 2580 0    50   Input ~ 0
Cap_Touch_Function
Text GLabel 3320 4780 0    50   Output ~ 0
POS20_RUN
Text GLabel 3320 4680 0    50   Input ~ 0
POS20_PGOOD
Text GLabel 3320 5080 0    50   Input ~ 0
POS12_PGOOD
Text GLabel 3320 4880 0    50   Input ~ 0
POS3P3_PGOOD
Text GLabel 3320 4980 0    50   Input ~ 0
POS5_USB_PGOOD
Text GLabel 7520 3280 2    50   Output ~ 0
Heartbeat_LED
Text GLabel 7520 3580 2    50   Output ~ 0
Error_LED
Text GLabel 7520 3380 2    50   Output ~ 0
Reset_LED
Text GLabel 3320 1780 0    50   Input ~ 0
DAC0_VREF
Text GLabel 3320 1980 0    50   Input ~ 0
DAC1_VREF
Text GLabel 3320 2180 0    50   Input ~ 0
DAC2_VREF
Text GLabel 7520 2480 2    50   Input ~ 0
Telemetry_Hardstrap
Text GLabel 3320 3180 0    50   Input ~ 0
VBAT_ADC
Text Notes 1500 2520 0    50   ~ 0
PPSI: INT2
Text Notes 1500 2630 0    50   ~ 0
PPSI: INT3
Text Notes 1500 4630 0    50   ~ 0
PPSO: UART1TX
Text Notes 10300 3330 2    50   ~ 0
PPSO: OC5
Text GLabel 7520 3480 2    50   Output ~ 0
CPU_Trap_LED
Text GLabel 3320 4380 0    50   Input ~ 0
VBAT_PGOOD
Text GLabel 7520 1480 2    50   Output ~ 0
Function_Date_LED
Text GLabel 7520 1380 2    50   Output ~ 0
Function_Time_LED
Text GLabel 7520 1580 2    50   Output ~ 0
Function_Weekday_LED
Text GLabel 7520 1680 2    50   Output ~ 0
Alarm_Arm_LED
NoConn ~ 7520 1980
NoConn ~ 7520 2080
Text GLabel 7520 1780 2    50   Output ~ 0
POS3P3_PGL_SHDN
Text GLabel 7520 1880 2    50   Output ~ 0
Buzzer_Enable
NoConn ~ 3320 4280
$EndSCHEMATC
