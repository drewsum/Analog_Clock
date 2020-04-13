EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 14 20
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5110 5120 5110 5080
Wire Wire Line
	5110 5080 5110 5040
Wire Wire Line
	5110 5080 5010 5080
Wire Wire Line
	5010 5080 5010 5040
Connection ~ 5110 5080
$Comp
L Sensor_Temperature:MCP9804_DFN U?
U 1 1 5E2AA99E
P 5110 4540
AR Path="/5B3E071A/5E2AA99E" Ref="U?"  Part="1" 
AR Path="/5E0652BA/5E2AA99E" Ref="U?"  Part="1" 
AR Path="/5E0A0E29/5E2AA99E" Ref="U?"  Part="1" 
AR Path="/5E052856/5E2AA99E" Ref="U?"  Part="1" 
AR Path="/5E939F86/5E2AA99E" Ref="U?"  Part="1" 
F 0 "U?" H 4860 4990 50  0000 C CNN
F 1 "MCP9804" H 5510 4990 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.5mm" H 4010 4040 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 4860 4990 50  0001 C CNN
F 4 "MCP9804T-E/MCCT-ND" H 5110 4540 50  0001 C CNN "Digi-Key PN"
	1    5110 4540
	-1   0    0    -1  
$EndComp
Text GLabel 5510 4340 2    50   Input ~ 0
I2C_SCL
Text GLabel 5510 4240 2    50   BiDi ~ 0
I2C_SDA
NoConn ~ 4710 4540
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E2AA9A2
P 5110 5690
AR Path="/5B3E071A/5E2AA9A2" Ref="C?"  Part="1" 
AR Path="/5E0652BA/5E2AA9A2" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/5E2AA9A2" Ref="C?"  Part="1" 
AR Path="/5E052856/5E2AA9A2" Ref="C?"  Part="1" 
AR Path="/5E939F86/5E2AA9A2" Ref="C?"  Part="1" 
F 0 "C?" H 5135 5790 50  0000 L CNN
F 1 "0.1uF" H 5135 5590 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5148 5540 50  0001 C CNN
F 3 "" H 5135 5790 50  0001 C CNN
F 4 "0402" H 4960 5790 50  0000 R CNN "display_footprint"
F 5 "50V" H 4960 5690 50  0000 R CNN "Voltage"
F 6 "X7R" H 4960 5590 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 1200 -1190 50  0001 C CNN "Digi-Key PN"
	1    5110 5690
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC?
U 1 1 5E0CB7BC
P 6010 5560
AR Path="/5E0652BA/5E0CB7BC" Ref="DOC?"  Part="1" 
AR Path="/5E0A0E29/5E0CB7BC" Ref="DOC?"  Part="1" 
AR Path="/5E052856/5E0CB7BC" Ref="DOC?"  Part="1" 
AR Path="/5E939F86/5E0CB7BC" Ref="DOC?"  Part="1" 
F 0 "DOC?" H 6010 5810 60  0001 C CNN
F 1 "ljasdflkjafds" H 5560 5560 60  0000 L CNN
F 2 "" H 6010 5910 60  0001 C CNN
F 3 "" H 6010 5910 60  0001 C CNN
	1    6010 5560
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E200B17
P 5110 3070
AR Path="/5B3E071A/5E200B17" Ref="C?"  Part="1" 
AR Path="/5E0652BA/5E200B17" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/5E200B17" Ref="C?"  Part="1" 
AR Path="/5E052856/5E200B17" Ref="C?"  Part="1" 
AR Path="/5E939F86/5E200B17" Ref="C?"  Part="1" 
F 0 "C?" H 5135 3170 50  0000 L CNN
F 1 "0.1uF" H 5135 2970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5148 2920 50  0001 C CNN
F 3 "" H 5135 3170 50  0001 C CNN
F 4 "0402" H 4960 3170 50  0000 R CNN "display_footprint"
F 5 "50V" H 4960 3070 50  0000 R CNN "Voltage"
F 6 "X7R" H 4960 2970 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 1200 -3810 50  0001 C CNN "Digi-Key PN"
	1    5110 3070
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC?
U 1 1 5E200B2A
P 6010 2940
AR Path="/5E0652BA/5E200B2A" Ref="DOC?"  Part="1" 
AR Path="/5E0A0E29/5E200B2A" Ref="DOC?"  Part="1" 
AR Path="/5E052856/5E200B2A" Ref="DOC?"  Part="1" 
AR Path="/5E939F86/5E200B2A" Ref="DOC?"  Part="1" 
F 0 "DOC?" H 6010 3190 60  0001 C CNN
F 1 "aljhdslkfjasdf" H 5560 2940 60  0000 L CNN
F 2 "" H 6010 3290 60  0001 C CNN
F 3 "" H 6010 3290 60  0001 C CNN
	1    6010 2940
	1    0    0    -1  
$EndComp
Wire Wire Line
	4230 2320 4230 2240
Wire Wire Line
	4230 1940 4230 1860
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E200B36
P 4230 2090
AR Path="/5B3E071A/5E200B36" Ref="C?"  Part="1" 
AR Path="/5E0652BA/5E200B36" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/5E200B36" Ref="C?"  Part="1" 
AR Path="/5E052856/5E200B36" Ref="C?"  Part="1" 
AR Path="/5E939F86/5E200B36" Ref="C?"  Part="1" 
F 0 "C?" H 4255 2190 50  0000 L CNN
F 1 "0.1uF" H 4255 1990 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4268 1940 50  0001 C CNN
F 3 "" H 4255 2190 50  0001 C CNN
F 4 "0402" H 4080 2190 50  0000 R CNN "display_footprint"
F 5 "50V" H 4080 2090 50  0000 R CNN "Voltage"
F 6 "X7R" H 4080 1990 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 320 -4790 50  0001 C CNN "Digi-Key PN"
	1    4230 2090
	1    0    0    -1  
$EndComp
Wire Wire Line
	3790 2320 4230 2320
Wire Wire Line
	3790 1860 4230 1860
$Comp
L Analog_ADC:INA219BxDCN U?
U 1 1 5E200B53
P 5110 2100
F 0 "U?" H 4860 2450 50  0000 C CNN
F 1 "INA219BxDCN" H 5360 2450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-8" H 5760 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 5460 2000 50  0001 C CNN
F 4 "296-46420-1-ND" H 5110 2100 50  0001 C CNN "Digi-Key PN"
	1    5110 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4710 2000 4540 2000
Wire Wire Line
	4540 2000 4540 1860
Wire Wire Line
	4540 1860 4230 1860
Connection ~ 4230 1860
Wire Wire Line
	4710 2200 4540 2200
Wire Wire Line
	4540 2200 4540 2320
Wire Wire Line
	4540 2320 4230 2320
Connection ~ 4230 2320
Text GLabel 5510 2000 2    50   Input ~ 0
I2C_SCL
Text GLabel 5510 1900 2    50   BiDi ~ 0
I2C_SDA
Text GLabel 3790 2320 0    50   UnSpc ~ 0
POS5_USB_SNS-
Text GLabel 3790 1860 0    50   UnSpc ~ 0
POS5_USB_SNS+
$EndSCHEMATC
