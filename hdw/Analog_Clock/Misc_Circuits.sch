EESchema Schematic File Version 4
LIBS:Analog_Clock-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 24 24
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7400 5190 2    50   UnSpc ~ 0
Telemetry_Hardstrap
Text Notes 2080 1880 0    100  ~ 20
Add alarm?
$Comp
L power:GND #PWR?
U 1 1 5F3DE5C6
P 8430 2330
AR Path="/5B3E071A/5F3DE5C6" Ref="#PWR?"  Part="1" 
AR Path="/5E0652BA/5F3DE5C6" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5F3DE5C6" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5F3DE5C6" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5F3DE5C6" Ref="#PWR?"  Part="1" 
AR Path="/5E939D24/5F3DE5C6" Ref="#PWR?"  Part="1" 
AR Path="/5E939D42/5F3DE5C6" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5F3DE5C6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8430 2080 50  0001 C CNN
F 1 "GND" H 8430 2180 50  0000 C CNN
F 2 "" H 8430 2330 50  0001 C CNN
F 3 "" H 8430 2330 50  0001 C CNN
	1    8430 2330
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8430 2330 8430 2290
Wire Wire Line
	8430 2290 8430 2250
Wire Wire Line
	8430 2290 8330 2290
Wire Wire Line
	8330 2290 8330 2250
Connection ~ 8430 2290
$Comp
L power:+3.3V #PWR?
U 1 1 5F3DE5D1
P 8430 1250
AR Path="/5E0652BA/5F3DE5D1" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5F3DE5D1" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5F3DE5D1" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5F3DE5D1" Ref="#PWR?"  Part="1" 
AR Path="/5E939D24/5F3DE5D1" Ref="#PWR?"  Part="1" 
AR Path="/5E939D42/5F3DE5D1" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5F3DE5D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8430 1100 50  0001 C CNN
F 1 "+3.3V" H 8430 1390 50  0000 C CNN
F 2 "" H 8430 1250 50  0001 C CNN
F 3 "" H 8430 1250 50  0001 C CNN
	1    8430 1250
	-1   0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:MCP9804_DFN U?
U 1 1 5F3DE5D9
P 8430 1750
AR Path="/5B3E071A/5F3DE5D9" Ref="U?"  Part="1" 
AR Path="/5E0652BA/5F3DE5D9" Ref="U?"  Part="1" 
AR Path="/5E0A0E29/5F3DE5D9" Ref="U?"  Part="1" 
AR Path="/5E052856/5F3DE5D9" Ref="U?"  Part="1" 
AR Path="/5EAE2D84/5F3DE5D9" Ref="U?"  Part="1" 
AR Path="/5E939D24/5F3DE5D9" Ref="U?"  Part="1" 
AR Path="/5E939D42/5F3DE5D9" Ref="U?"  Part="1" 
AR Path="/5F360CB6/5F3DE5D9" Ref="U?"  Part="1" 
F 0 "U?" H 8180 2200 50  0000 C CNN
F 1 "MCP9804" H 8830 2200 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.5mm" H 7330 1250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 8180 2200 50  0001 C CNN
F 4 "MCP9804T-E/MCCT-ND" H 8430 1750 50  0001 C CNN "Digi-Key PN"
F 5 "Telemetry" H 8830 2280 50  0000 C CNN "Configuration"
	1    8430 1750
	-1   0    0    -1  
$EndComp
Text GLabel 8830 1550 2    50   Input ~ 0
I2C_SCL
Text GLabel 8830 1450 2    50   BiDi ~ 0
I2C_SDA
NoConn ~ 8030 1750
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F3DE5E6
P 8430 2900
AR Path="/5B3E071A/5F3DE5E6" Ref="C?"  Part="1" 
AR Path="/5E0652BA/5F3DE5E6" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/5F3DE5E6" Ref="C?"  Part="1" 
AR Path="/5E052856/5F3DE5E6" Ref="C?"  Part="1" 
AR Path="/5EAE2D84/5F3DE5E6" Ref="C?"  Part="1" 
AR Path="/5E939D24/5F3DE5E6" Ref="C?"  Part="1" 
AR Path="/5E939D42/5F3DE5E6" Ref="C?"  Part="1" 
AR Path="/5F360CB6/5F3DE5E6" Ref="C?"  Part="1" 
F 0 "C?" H 8455 3000 50  0000 L CNN
F 1 "0.1uF" H 8455 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8468 2750 50  0001 C CNN
F 3 "" H 8455 3000 50  0001 C CNN
F 4 "" H 8280 3000 50  0000 R CNN "display_footprint"
F 5 "50V" H 8280 2900 50  0000 R CNN "Voltage"
F 6 "X7R" H 8280 2800 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 4520 -3980 50  0001 C CNN "Digi-Key PN"
	1    8430 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F3DE5EC
P 8430 2750
AR Path="/5E0652BA/5F3DE5EC" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5F3DE5EC" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5F3DE5EC" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5F3DE5EC" Ref="#PWR?"  Part="1" 
AR Path="/5E939D24/5F3DE5EC" Ref="#PWR?"  Part="1" 
AR Path="/5E939D42/5F3DE5EC" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5F3DE5EC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8430 2600 50  0001 C CNN
F 1 "+3.3V" H 8430 2890 50  0000 C CNN
F 2 "" H 8430 2750 50  0001 C CNN
F 3 "" H 8430 2750 50  0001 C CNN
	1    8430 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F3DE5F2
P 8430 3050
AR Path="/5E0652BA/5F3DE5F2" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5F3DE5F2" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5F3DE5F2" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5F3DE5F2" Ref="#PWR?"  Part="1" 
AR Path="/5E939D24/5F3DE5F2" Ref="#PWR?"  Part="1" 
AR Path="/5E939D42/5F3DE5F2" Ref="#PWR?"  Part="1" 
AR Path="/5F360CB6/5F3DE5F2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8430 2800 50  0001 C CNN
F 1 "GND" H 8430 2900 50  0000 C CNN
F 2 "" H 8430 3050 50  0001 C CNN
F 3 "" H 8430 3050 50  0001 C CNN
	1    8430 3050
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC?
U 1 1 5F3DE5F8
P 9330 2770
AR Path="/5E0652BA/5F3DE5F8" Ref="DOC?"  Part="1" 
AR Path="/5E0A0E29/5F3DE5F8" Ref="DOC?"  Part="1" 
AR Path="/5E052856/5F3DE5F8" Ref="DOC?"  Part="1" 
AR Path="/5EAE2D84/5F3DE5F8" Ref="DOC?"  Part="1" 
AR Path="/5E939D24/5F3DE5F8" Ref="DOC?"  Part="1" 
AR Path="/5E939D42/5F3DE5F8" Ref="DOC?"  Part="1" 
AR Path="/5F360CB6/5F3DE5F8" Ref="DOC?"  Part="1" 
F 0 "DOC?" H 9330 3020 60  0001 C CNN
F 1 "FIX ME" H 8880 2770 60  0000 L CNN
F 2 "" H 9330 3120 60  0001 C CNN
F 3 "" H 9330 3120 60  0001 C CNN
	1    9330 2770
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F4008B7
P 7320 4960
AR Path="/5BB27BA3/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F4008B7" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5F4008B7" Ref="R?"  Part="1" 
F 0 "R?" H 7240 4960 50  0000 R CNN
F 1 "10k" V 7320 4960 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7320 4960 50  0001 C CNN
F 3 "" H 7320 4960 50  0001 C CNN
F 4 "0402" H 7420 5040 50  0000 L CNN "display_footprint"
F 5 "1%" H 7420 4960 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7430 4880 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 7620 5360 60  0001 C CNN "Digi-Key PN"
	1    7320 4960
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F400940
P 7320 4810
F 0 "#PWR?" H 7320 4660 50  0001 C CNN
F 1 "+3.3V" H 7320 4950 50  0000 C CNN
F 2 "" H 7320 4810 50  0001 C CNN
F 3 "" H 7320 4810 50  0001 C CNN
	1    7320 4810
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F406010
P 7320 5420
AR Path="/5BB27BA3/5F406010" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F406010" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F406010" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F406010" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F406010" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F406010" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F406010" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F406010" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F406010" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F406010" Ref="R?"  Part="1" 
AR Path="/5F360CB6/5F406010" Ref="R?"  Part="1" 
F 0 "R?" H 7240 5420 50  0000 R CNN
F 1 "10" V 7320 5420 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7320 5420 50  0001 C CNN
F 3 "" H 7320 5420 50  0001 C CNN
F 4 "0402" H 7420 5500 50  0000 L CNN "display_footprint"
F 5 "1%" H 7420 5420 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7430 5340 50  0000 L CNN "Wattage"
F 7 "Telemetry" H 7060 5330 50  0000 C CNN "Configuration"
	1    7320 5420
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 5190 7320 5190
Wire Wire Line
	7320 5190 7320 5110
Wire Wire Line
	7320 5190 7320 5270
Connection ~ 7320 5190
$Comp
L power:GND #PWR?
U 1 1 5F406B63
P 7320 5570
F 0 "#PWR?" H 7320 5320 50  0001 C CNN
F 1 "GND" H 7320 5420 50  0000 C CNN
F 2 "" H 7320 5570 50  0001 C CNN
F 3 "" H 7320 5570 50  0001 C CNN
	1    7320 5570
	1    0    0    -1  
$EndComp
Text Notes 8320 5240 0    50   ~ 0
High for no telemetry installed,\nLow for telemetry sensors installed
$EndSCHEMATC
