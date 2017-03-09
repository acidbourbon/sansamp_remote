EESchema Schematic File Version 2  date Sat 12 Oct 2013 12:59:00 AM CEST
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:micha_custom
LIBS:project-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "11 oct 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 7100 3600 0    60   ~ 0
pc5
Text Label 7100 3500 0    60   ~ 0
pc4
Text Label 7100 3400 0    60   ~ 0
pc3
Text Label 7100 3300 0    60   ~ 0
pc2
Text Label 7100 3200 0    60   ~ 0
pc1
Text Label 7100 3100 0    60   ~ 0
pc0
Text Label 7100 4700 0    60   ~ 0
pd7
Text Label 7100 4600 0    60   ~ 0
pd6
Text Label 7100 4500 0    60   ~ 0
pd5
Text Label 7100 4400 0    60   ~ 0
pd4
Text Label 7100 4300 0    60   ~ 0
pd3
Text Label 7100 4200 0    60   ~ 0
pd2
Text Label 7100 4100 0    60   ~ 0
pd1_tx
Text Label 7100 4000 0    60   ~ 0
pd0_rx
$Comp
L CONN_6 P1
U 1 1 525872D9
P 8050 3350
F 0 "P1" V 8000 3350 60  0000 C CNN
F 1 "CONN_6" V 8100 3350 60  0000 C CNN
	1    8050 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P5
U 1 1 52586D9F
P 8400 6000
F 0 "P5" V 8350 6000 60  0000 C CNN
F 1 "CONN_6" V 8450 6000 60  0000 C CNN
	1    8400 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 1500 2500 1700
Wire Wire Line
	2500 1500 2650 1500
Wire Wire Line
	2650 1300 2100 1300
Wire Wire Line
	2650 2200 2100 2200
Wire Wire Line
	6850 3600 7700 3600
Wire Wire Line
	7700 3500 6850 3500
Wire Wire Line
	7700 3100 6850 3100
Wire Wire Line
	7700 3300 6850 3300
Wire Wire Line
	6850 3400 7700 3400
Wire Wire Line
	6850 3200 7700 3200
Wire Wire Line
	6850 4100 7700 4100
Wire Wire Line
	6850 4300 7700 4300
Wire Wire Line
	7700 4200 6850 4200
Wire Wire Line
	7700 4000 6850 4000
Wire Wire Line
	7700 4400 6850 4400
Wire Wire Line
	7700 4600 6850 4600
Wire Wire Line
	4500 4500 4350 4500
Wire Wire Line
	4350 4500 4350 4300
Wire Wire Line
	3950 4050 3950 3800
Wire Wire Line
	3950 3800 4950 3800
Connection ~ 8500 1300
Wire Wire Line
	9250 1500 8800 1500
Wire Wire Line
	8800 1500 8800 1700
Wire Wire Line
	8800 1700 8500 1700
Wire Wire Line
	4950 3400 4450 3400
Wire Wire Line
	4750 4050 4750 4000
Wire Wire Line
	4750 4000 4950 4000
Wire Wire Line
	6850 4700 7700 4700
Wire Wire Line
	6850 4500 7700 4500
Wire Wire Line
	2100 2600 2450 2600
Wire Wire Line
	2450 2600 2450 2400
Wire Wire Line
	2450 2400 2650 2400
Wire Wire Line
	9250 1300 8500 1300
Wire Wire Line
	2500 1700 2100 1700
Text Label 3850 1300 0    60   ~ 0
vin
Text Label 3850 1400 0    60   ~ 0
gnd
Text Label 3850 1500 0    60   ~ 0
gnd
Text Label 2650 1500 2    60   ~ 0
gnd
Text Label 2650 1400 2    60   ~ 0
gnd
Text Label 2450 1300 0    60   ~ 0
vcc
$Comp
L C C5
U 1 1 5182A7DB
P 2100 1500
F 0 "C5" H 2150 1600 50  0000 L CNN
F 1 "10u" H 2150 1400 50  0000 L CNN
	1    2100 1500
	1    0    0    -1  
$EndComp
$Comp
L 78L05_SO8 U3
U 1 1 5182A7BC
P 3250 1450
F 0 "U3" H 3000 1850 60  0000 C CNN
F 1 "78L05_SO8" H 3100 1750 60  0000 C CNN
	1    3250 1450
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 50C3823D
P 2100 2400
F 0 "C3" H 2150 2500 50  0000 L CNN
F 1 "10u" H 2150 2300 50  0000 L CNN
	1    2100 2400
	1    0    0    -1  
$EndComp
Text Label 6300 2800 0    60   ~ 0
gnd
$Comp
L C C4
U 1 1 50C3822B
P 6100 2800
F 0 "C4" H 6150 2900 50  0000 L CNN
F 1 "100n" H 6150 2700 50  0000 L CNN
	1    6100 2800
	0    -1   -1   0   
$EndComp
Text Label 8650 6350 3    60   ~ 0
gnd
Text Label 8550 6350 3    60   ~ 0
mosi
Text Label 8150 6350 3    60   ~ 0
vcc
Text Label 8350 6350 3    60   ~ 0
rst
Text Label 8250 6350 3    60   ~ 0
sck
Text Label 8450 6350 3    60   ~ 0
miso
Text Label 5800 5700 3    60   ~ 0
gnd
Text Label 5900 5700 3    60   ~ 0
gnd
$Comp
L CONN_8 P2
U 1 1 50C37D87
P 8050 4350
F 0 "P2" V 8000 4350 60  0000 C CNN
F 1 "CONN_8" V 8100 4350 60  0000 C CNN
	1    8050 4350
	1    0    0    -1  
$EndComp
Text Label 4950 3100 2    60   ~ 0
rst
Text Label 4500 4500 0    60   ~ 0
gnd
$Comp
L CERAMIC_FILTER F1
U 1 1 50C37D07
P 4350 4100
F 0 "F1" H 4400 4250 50  0000 C CNN
F 1 "CERAMIC_FILTER" H 4400 4000 40  0000 L CNN
	1    4350 4100
	1    0    0    -1  
$EndComp
Text Label 4050 3400 2    60   ~ 0
gnd
$Comp
L C C1
U 1 1 50C37C76
P 4250 3400
F 0 "C1" H 4300 3500 50  0000 L CNN
F 1 "100n" H 4300 3300 50  0000 L CNN
	1    4250 3400
	0    -1   -1   0   
$EndComp
Text Label 4950 3300 2    60   ~ 0
gnd
Text Label 4950 3500 2    60   ~ 0
vcc
Text Label 8850 1500 0    60   ~ 0
gnd
Text Label 8800 1300 0    60   ~ 0
vin
$Comp
L C C2
U 1 1 50C37C06
P 8500 1500
F 0 "C2" H 8550 1600 50  0000 L CNN
F 1 "10u" H 8550 1400 50  0000 L CNN
	1    8500 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 50C37BDC
P 9600 1400
F 0 "P6" V 9550 1400 40  0000 C CNN
F 1 "CONN_2" V 9650 1400 40  0000 C CNN
	1    9600 1400
	1    0    0    -1  
$EndComp
Text Label 3850 2200 0    60   ~ 0
vcc
Text Label 3850 2400 0    60   ~ 0
gnd
Text Label 3850 2300 0    60   ~ 0
gnd
Text Label 2650 2400 2    60   ~ 0
gnd
Text Label 2650 2300 2    60   ~ 0
gnd
Text Label 2650 2200 2    60   ~ 0
vcc33
$Comp
L 78L33_SO8 U1
U 1 1 50C373DD
P 3250 2350
F 0 "U1" H 3000 2750 60  0000 C CNN
F 1 "78L33_SO8" H 3100 2650 60  0000 C CNN
	1    3250 2350
	1    0    0    -1  
$EndComp
Text Label 6850 5100 0    60   ~ 0
csn
Text Label 6850 5000 0    60   ~ 0
ce
Text Label 6850 4900 0    60   ~ 0
irq
Text Label 6850 5200 0    60   ~ 0
mosi
Text Label 6850 5300 0    60   ~ 0
miso
Text Label 6850 5400 0    60   ~ 0
sck
Text Label 8800 5400 2    60   ~ 0
irq
Text Label 8800 5300 2    60   ~ 0
miso
Text Label 8800 5200 2    60   ~ 0
mosi
Text Label 8800 5100 2    60   ~ 0
sck
Text Label 8800 5000 2    60   ~ 0
csn
Text Label 8800 4900 2    60   ~ 0
ce
Text Label 8800 4700 2    60   ~ 0
gnd
Text Label 8800 4800 2    60   ~ 0
vcc33
Text Label 5900 2800 1    60   ~ 0
vcc
Text Label 5800 2800 1    60   ~ 0
vcc
$Comp
L RFM70 U2
U 1 1 50C370A2
P 9400 5050
F 0 "U2" H 9550 5000 60  0000 C CNN
F 1 "RFM70" H 9600 5150 60  0000 C CNN
	1    9400 5050
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA8-AI IC1
U 1 1 50C3705D
P 5850 4100
F 0 "IC1" H 5150 5250 50  0000 L BNN
F 1 "ATMEGA8-AI" H 6100 2600 50  0000 L BNN
F 2 "TQFP32" H 6375 2525 50  0001 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
