EESchema Schematic File Version 2
LIBS:GNSS_Firehose
LIBS:GNSS_Firehose-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 10
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
L R R1
U 1 1 58CC02D7
P 3450 3300
F 0 "R1" V 3400 3450 50  0000 C CNN
F 1 "86.6" V 3500 3500 50  0000 C CNN
F 2 "footprints:0402" V 3380 3300 50  0001 C CNN
F 3 "" H 3450 3300 50  0000 C CNN
	1    3450 3300
	0    1    1    0   
$EndComp
$Comp
L L L2
U 1 1 58CC045C
P 1400 3300
F 0 "L2" V 1350 3150 50  0000 C CNN
F 1 "6 nH" V 1450 3100 50  0000 C CNN
F 2 "footprints:0402" H 1400 3300 50  0001 C CNN
F 3 "" H 1400 3300 50  0000 C CNN
	1    1400 3300
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 58CC051B
P 3700 3050
F 0 "R3" H 3750 2800 50  0000 C CNN
F 1 "43.2" H 3750 2900 50  0000 C CNN
F 2 "footprints:0402" V 3630 3050 50  0001 C CNN
F 3 "" H 3700 3050 50  0000 C CNN
	1    3700 3050
	-1   0    0    1   
$EndComp
$Comp
L R R126
U 1 1 58CC0AA3
P 1000 2350
F 0 "R126" V 1050 2550 50  0000 C CNN
F 1 "0" V 950 2550 50  0000 C CNN
F 2 "footprints:0603" H 1000 2350 50  0001 C CNN
F 3 "" H 1000 2350 50  0001 C CNN
	1    1000 2350
	0    -1   -1   0   
$EndComp
$Comp
L L L3
U 1 1 58CC0BCC
P 3050 2700
F 0 "L3" V 3000 2600 50  0000 C CNN
F 1 "47 nH" V 3100 2550 50  0000 C CNN
F 2 "footprints:0402" H 3050 2700 50  0001 C CNN
F 3 "" H 3050 2700 50  0000 C CNN
	1    3050 2700
	0    1    1    0   
$EndComp
$Comp
L SMA J1
U 1 1 58CC3489
P 700 3050
F 0 "J1" H 650 2600 50  0000 C CNN
F 1 "SMA" H 650 2500 50  0000 C CNN
F 2 "footprints:SMA_END_LAUNCH" H 700 3050 50  0001 C CNN
F 3 "" H 700 3050 50  0001 C CNN
	1    700  3050
	1    0    0    -1  
$EndComp
$Comp
L MAX2112 U1
U 1 1 58CC4EA9
P 5400 2750
F 0 "U1" H 5750 900 50  0000 C CNN
F 1 "MAX2112" H 5850 800 50  0000 C CNN
F 2 "footprints:QFN28_EP" H 5400 2750 50  0001 C CNN
F 3 "" H 5400 2750 50  0001 C CNN
	1    5400 2750
	1    0    0    -1  
$EndComp
$Comp
L MAX19505 U2
U 1 1 58CC4F6A
P 9050 2400
F 0 "U2" H 9400 -100 50  0000 C CNN
F 1 "MAX19505" H 9550 -200 50  0000 C CNN
F 2 "footprints:QFN48_EP" H 9000 2550 50  0001 C CNN
F 3 "" H 9000 2550 50  0001 C CNN
	1    9050 2400
	1    0    0    -1  
$EndComp
$Comp
L C C27
U 1 1 58CC5C5B
P 1550 3050
F 0 "C27" H 1650 3300 50  0000 C CNN
F 1 "100 pF" H 1650 3200 50  0000 C CNN
F 2 "footprints:0402" H 1550 3050 50  0001 C CNN
F 3 "" H 1550 3050 50  0001 C CNN
	1    1550 3050
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 58CC5CB6
P 1250 3050
F 0 "C6" H 1250 3300 50  0000 C CNN
F 1 "100 pF" H 1250 3200 50  0000 C CNN
F 2 "footprints:0402" H 1250 3050 50  0001 C CNN
F 3 "" H 1250 3050 50  0001 C CNN
	1    1250 3050
	1    0    0    -1  
$EndComp
$Comp
L L L12
U 1 1 58CC5DE9
P 1000 2750
F 0 "L12" V 900 2600 50  0000 C CNN
F 1 "47 nH" V 1000 2550 50  0000 C CNN
F 2 "footprints:0402" H 1000 2750 50  0001 C CNN
F 3 "" H 1000 2750 50  0000 C CNN
	1    1000 2750
	0    1    1    0   
$EndComp
$Comp
L MIC2090-1YM5 U20
U 1 1 58CC5EEF
P 1750 1350
F 0 "U20" H 2100 1700 50  0000 C CNN
F 1 "MIC2090-1YM5" H 2300 1600 50  0000 C CNN
F 2 "footprints:SOT-23-5" H 1750 1350 50  0001 C CNN
F 3 "" H 1750 1350 50  0001 C CNN
	1    1750 1350
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 58CC60A3
P 3250 3050
F 0 "C8" H 3300 3300 50  0000 C CNN
F 1 "100 pF" H 3300 3200 50  0000 C CNN
F 2 "footprints:0402" H 3250 3050 50  0001 C CNN
F 3 "" H 3250 3050 50  0001 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 58CC6131
P 4000 3050
F 0 "C9" H 4000 3300 50  0000 C CNN
F 1 "100 pF" H 4050 3200 50  0000 C CNN
F 2 "footprints:0402" H 4000 3050 50  0001 C CNN
F 3 "" H 4000 3050 50  0001 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 58CCB8E4
P 1400 3500
F 0 "#PWR01" H 1600 3400 50  0001 C CNN
F 1 "GND" H 1600 3300 50  0001 C CNN
F 2 "" H 1400 3500 50  0001 C CNN
F 3 "" H 1400 3500 50  0001 C CNN
	1    1400 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58CCBA24
P 700 3300
F 0 "#PWR02" H 900 3200 50  0001 C CNN
F 1 "GND" H 900 3100 50  0001 C CNN
F 2 "" H 700 3300 50  0001 C CNN
F 3 "" H 700 3300 50  0001 C CNN
	1    700  3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58CCC43E
P 1900 2000
F 0 "#PWR03" H 2100 1900 50  0001 C CNN
F 1 "GND" H 2100 1800 50  0001 C CNN
F 2 "" H 1900 2000 50  0001 C CNN
F 3 "" H 1900 2000 50  0001 C CNN
	1    1900 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58CCC479
P 2200 3650
F 0 "#PWR04" H 2400 3550 50  0001 C CNN
F 1 "GND" H 2400 3450 50  0001 C CNN
F 2 "" H 2200 3650 50  0001 C CNN
F 3 "" H 2200 3650 50  0001 C CNN
	1    2200 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58CCC4B4
P 3450 3500
F 0 "#PWR05" H 3650 3400 50  0001 C CNN
F 1 "GND" H 3650 3300 50  0001 C CNN
F 2 "" H 3450 3500 50  0001 C CNN
F 3 "" H 3450 3500 50  0001 C CNN
	1    3450 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58CCC4EF
P 5100 4750
F 0 "#PWR06" H 5300 4650 50  0001 C CNN
F 1 "GND" H 5300 4550 50  0001 C CNN
F 2 "" H 5100 4750 50  0001 C CNN
F 3 "" H 5100 4750 50  0001 C CNN
	1    5100 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 58CCC5A0
P 8700 5050
F 0 "#PWR07" H 8900 4950 50  0001 C CNN
F 1 "GND" H 8900 4850 50  0001 C CNN
F 2 "" H 8700 5050 50  0001 C CNN
F 3 "" H 8700 5050 50  0001 C CNN
	1    8700 5050
	1    0    0    -1  
$EndComp
NoConn ~ 1200 1650
Text Label 600  1350 0    50   ~ 0
ch1_vcc_lna
$Comp
L R R2
U 1 1 58CCD078
P 2300 2450
F 0 "R2" V 2250 2250 50  0000 C CNN
F 1 "5.1k" V 2350 2250 50  0000 C CNN
F 2 "footprints:0402" V 2230 2450 50  0001 C CNN
F 3 "" H 2300 2450 50  0000 C CNN
	1    2300 2450
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 58CCD0F6
P 3200 2450
F 0 "C7" H 3500 2450 50  0000 C CNN
F 1 "100 pF" H 3600 2350 50  0000 C CNN
F 2 "footprints:0402" H 3200 2450 50  0001 C CNN
F 3 "" H 3200 2450 50  0001 C CNN
	1    3200 2450
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 58CCD16B
P 3200 2300
F 0 "C5" H 3500 2400 50  0000 C CNN
F 1 "10 nF" H 3550 2300 50  0000 C CNN
F 2 "footprints:0402" H 3200 2300 50  0001 C CNN
F 3 "" H 3200 2300 50  0001 C CNN
	1    3200 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 58CCD64A
P 3350 2500
F 0 "#PWR08" H 3550 2400 50  0001 C CNN
F 1 "GND" H 3550 2300 50  0001 C CNN
F 2 "" H 3350 2500 50  0001 C CNN
F 3 "" H 3350 2500 50  0001 C CNN
	1    3350 2500
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 58CCE719
P 5400 1650
F 0 "C10" H 5400 1900 50  0000 C CNN
F 1 "47 nF" H 5400 1800 50  0000 C CNN
F 2 "footprints:0402" H 5400 1650 50  0001 C CNN
F 3 "" H 5400 1650 50  0001 C CNN
	1    5400 1650
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58CCE77E
P 5900 1650
F 0 "C1" H 5900 1900 50  0000 C CNN
F 1 "47 nF" H 5900 1800 50  0000 C CNN
F 2 "footprints:0402" H 5900 1650 50  0001 C CNN
F 3 "" H 5900 1650 50  0001 C CNN
	1    5900 1650
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 58CCE7F0
P 6650 2450
F 0 "C11" H 6500 2500 50  0000 C CNN
F 1 "47 nF" H 6850 2500 50  0000 C CNN
F 2 "footprints:0402" H 6650 2450 50  0001 C CNN
F 3 "" H 6650 2450 50  0001 C CNN
	1    6650 2450
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 58CCE85D
P 6650 2600
F 0 "C12" H 6500 2650 50  0000 C CNN
F 1 "47 nF" H 6850 2650 50  0000 C CNN
F 2 "footprints:0402" H 6650 2600 50  0001 C CNN
F 3 "" H 6650 2600 50  0001 C CNN
	1    6650 2600
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 58CCE8CD
P 6650 2850
F 0 "C13" H 6500 2900 50  0000 C CNN
F 1 "47 nF" H 6850 2900 50  0000 C CNN
F 2 "footprints:0402" H 6650 2850 50  0001 C CNN
F 3 "" H 6650 2850 50  0001 C CNN
	1    6650 2850
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 58CCE942
P 6650 3000
F 0 "C14" H 6500 3050 50  0000 C CNN
F 1 "47 nF" H 6850 3050 50  0000 C CNN
F 2 "footprints:0402" H 6650 3000 50  0001 C CNN
F 3 "" H 6650 3000 50  0001 C CNN
	1    6650 3000
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 58CCE9B2
P 4750 4750
F 0 "C19" V 4700 4550 50  0000 C CNN
F 1 "0.1 uF" V 4800 4500 50  0000 C CNN
F 2 "footprints:0402" H 4750 4750 50  0001 C CNN
F 3 "" H 4750 4750 50  0001 C CNN
	1    4750 4750
	0    1    1    0   
$EndComp
$Comp
L test_point TP13
U 1 1 58CCEA4C
P 6250 4300
F 0 "TP13" H 6400 4200 50  0000 C CNN
F 1 "test_point" H 6250 4150 50  0001 C CNN
F 2 "footprints:TP_SMT" H 6250 4300 50  0001 C CNN
F 3 "" H 6250 4300 50  0001 C CNN
	1    6250 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 58CCEBB6
P 6150 3550
F 0 "#PWR09" H 6350 3450 50  0001 C CNN
F 1 "GND" H 6350 3350 50  0001 C CNN
F 2 "" H 6150 3550 50  0001 C CNN
F 3 "" H 6150 3550 50  0001 C CNN
	1    6150 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58CCEC6F
P 4750 4950
F 0 "#PWR010" H 4950 4850 50  0001 C CNN
F 1 "GND" H 4950 4750 50  0001 C CNN
F 2 "" H 4750 4950 50  0001 C CNN
F 3 "" H 4750 4950 50  0001 C CNN
	1    4750 4950
	1    0    0    -1  
$EndComp
Text Label 6200 3700 0    50   ~ 0
ch1_gc1_lpf
Text Label 6200 3900 0    50   ~ 0
ch1_vtune
Text Label 6200 4000 0    50   ~ 0
ch1_cpout
Text Label 6200 4200 0    50   ~ 0
ch1_xtal
$Comp
L C C29
U 1 1 58CCF2B1
P 7550 2650
F 0 "C29" H 7850 2650 50  0000 C CNN
F 1 "0.1 uF" H 7450 2750 50  0000 C CNN
F 2 "footprints:0402" H 7550 2650 50  0001 C CNN
F 3 "" H 7550 2650 50  0001 C CNN
	1    7550 2650
	-1   0    0    1   
$EndComp
$Comp
L C C30
U 1 1 58CCF37C
P 7550 3050
F 0 "C30" H 7850 3050 50  0000 C CNN
F 1 "0.1 uF" H 7450 3150 50  0000 C CNN
F 2 "footprints:0402" H 7550 3050 50  0001 C CNN
F 3 "" H 7550 3050 50  0001 C CNN
	1    7550 3050
	-1   0    0    1   
$EndComp
$Comp
L C C28
U 1 1 58CCF3FA
P 7550 3250
F 0 "C28" H 7850 3300 50  0000 C CNN
F 1 "0.1 uF" H 7450 3350 50  0000 C CNN
F 2 "footprints:0402" H 7550 3250 50  0001 C CNN
F 3 "" H 7550 3250 50  0001 C CNN
	1    7550 3250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 58CCF4F3
P 7400 3300
F 0 "#PWR011" H 7600 3200 50  0001 C CNN
F 1 "GND" H 7600 3100 50  0001 C CNN
F 2 "" H 7400 3300 50  0001 C CNN
F 3 "" H 7400 3300 50  0001 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 58CCF5B6
P 7400 3100
F 0 "#PWR012" H 7600 3000 50  0001 C CNN
F 1 "GND" H 7600 2900 50  0001 C CNN
F 2 "" H 7400 3100 50  0001 C CNN
F 3 "" H 7400 3100 50  0001 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 58CCF618
P 7400 2700
F 0 "#PWR013" H 7600 2600 50  0001 C CNN
F 1 "GND" H 7600 2500 50  0001 C CNN
F 2 "" H 7400 2700 50  0001 C CNN
F 3 "" H 7400 2700 50  0001 C CNN
	1    7400 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 58CD033B
P 7850 3500
F 0 "#PWR014" H 8050 3400 50  0001 C CNN
F 1 "GND" H 8050 3300 50  0001 C CNN
F 2 "" H 7850 3500 50  0001 C CNN
F 3 "" H 7850 3500 50  0001 C CNN
	1    7850 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 58CD0FE4
P 7850 4300
F 0 "#PWR015" H 8050 4200 50  0001 C CNN
F 1 "GND" H 8050 4100 50  0001 C CNN
F 2 "" H 7850 4300 50  0001 C CNN
F 3 "" H 7850 4300 50  0001 C CNN
	1    7850 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 58CD1046
P 7850 4500
F 0 "#PWR016" H 8050 4400 50  0001 C CNN
F 1 "GND" H 8050 4300 50  0001 C CNN
F 2 "" H 7850 4500 50  0001 C CNN
F 3 "" H 7850 4500 50  0001 C CNN
	1    7850 4500
	1    0    0    -1  
$EndComp
NoConn ~ 9650 3300
NoConn ~ 9650 3500
NoConn ~ 9650 3700
NoConn ~ 9650 3800
NoConn ~ 9650 3900
NoConn ~ 9650 4000
NoConn ~ 9650 4100
NoConn ~ 9650 4200
NoConn ~ 9650 4300
NoConn ~ 9650 4400
NoConn ~ 9650 4600
Text Label 3900 2000 0    50   ~ 0
ch1_vcc
Text Label 2400 2300 0    50   ~ 0
ch1_vcc_lna
$Comp
L L FB14
U 1 1 58CD2C03
P 1450 5750
F 0 "FB14" H 1400 5650 50  0000 C CNN
F 1 "240" H 1400 5550 50  0000 C CNN
F 2 "footprints:0603" H 1450 5750 50  0001 C CNN
F 3 "" H 1450 5750 50  0000 C CNN
	1    1450 5750
	1    0    0    -1  
$EndComp
$Comp
L C C242
U 1 1 58CD2CCB
P 1700 5900
F 0 "C242" V 2000 5900 50  0000 C CNN
F 1 "1000 pF" V 2100 5850 50  0000 C CNN
F 2 "footprints:0402" H 1700 5900 50  0001 C CNN
F 3 "" H 1700 5900 50  0001 C CNN
	1    1700 5900
	0    1    1    0   
$EndComp
$Comp
L C C243
U 1 1 58CD2D9C
P 1850 5900
F 0 "C243" V 2150 6100 50  0000 C CNN
F 1 "1000 pF" V 2250 6150 50  0000 C CNN
F 2 "footprints:0402" H 1850 5900 50  0001 C CNN
F 3 "" H 1850 5900 50  0001 C CNN
	1    1850 5900
	0    1    1    0   
$EndComp
$Comp
L C C15
U 1 1 58CD2E0E
P 3550 5900
F 0 "C15" V 3550 5750 50  0000 C CNN
F 1 "2.2 nF" V 3650 5700 50  0000 C CNN
F 2 "footprints:0402" H 3550 5900 50  0001 C CNN
F 3 "" H 3550 5900 50  0001 C CNN
	1    3550 5900
	0    1    1    0   
$EndComp
$Comp
L C C16
U 1 1 58CD2EE7
P 3750 6200
F 0 "C16" V 3750 6350 50  0000 C CNN
F 1 "33 nF" V 3850 6400 50  0000 C CNN
F 2 "footprints:0402" H 3750 6200 50  0001 C CNN
F 3 "" H 3750 6200 50  0001 C CNN
	1    3750 6200
	0    1    1    0   
$EndComp
$Comp
L C C17
U 1 1 58CD2F77
P 4300 5900
F 0 "C17" V 4250 6050 50  0000 C CNN
F 1 "100 pF" V 4350 6100 50  0000 C CNN
F 2 "footprints:0402" H 4300 5900 50  0001 C CNN
F 3 "" H 4300 5900 50  0001 C CNN
	1    4300 5900
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 58CD300A
P 3750 5900
F 0 "R5" V 3750 6050 50  0000 C CNN
F 1 "390" V 3850 6050 50  0000 C CNN
F 2 "footprints:0402" V 3680 5900 50  0001 C CNN
F 3 "" H 3750 5900 50  0000 C CNN
	1    3750 5900
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 58CD30E4
P 4050 5750
F 0 "R4" H 4050 5500 50  0000 C CNN
F 1 "820" H 4050 5600 50  0000 C CNN
F 2 "footprints:0402" V 3980 5750 50  0001 C CNN
F 3 "" H 4050 5750 50  0000 C CNN
	1    4050 5750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR017
U 1 1 58CD3173
P 2000 6100
F 0 "#PWR017" H 2200 6000 50  0001 C CNN
F 1 "GND" H 2200 5900 50  0001 C CNN
F 2 "" H 2000 6100 50  0001 C CNN
F 3 "" H 2000 6100 50  0001 C CNN
	1    2000 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 58CD31ED
P 3750 6400
F 0 "#PWR018" H 3950 6300 50  0001 C CNN
F 1 "GND" H 3950 6200 50  0001 C CNN
F 2 "" H 3750 6400 50  0001 C CNN
F 3 "" H 3750 6400 50  0001 C CNN
	1    3750 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 58CD3267
P 4300 6100
F 0 "#PWR019" H 4500 6000 50  0001 C CNN
F 1 "GND" H 4500 5900 50  0001 C CNN
F 2 "" H 4300 6100 50  0001 C CNN
F 3 "" H 4300 6100 50  0001 C CNN
	1    4300 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 58CD32E1
P 3550 6100
F 0 "#PWR020" H 3750 6000 50  0001 C CNN
F 1 "GND" H 3750 5900 50  0001 C CNN
F 2 "" H 3550 6100 50  0001 C CNN
F 3 "" H 3550 6100 50  0001 C CNN
	1    3550 6100
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58CD335B
P 6350 5750
F 0 "R6" H 6500 5900 50  0000 C CNN
F 1 "10k" H 6300 5900 50  0000 C CNN
F 2 "footprints:0402" V 6280 5750 50  0001 C CNN
F 3 "" H 6350 5750 50  0000 C CNN
	1    6350 5750
	-1   0    0    1   
$EndComp
$Comp
L C C18
U 1 1 58CD3417
P 6650 5900
F 0 "C18" V 6650 6050 50  0000 C CNN
F 1 "0.1 uF" V 6750 6100 50  0000 C CNN
F 2 "footprints:0402" H 6650 5900 50  0001 C CNN
F 3 "" H 6650 5900 50  0001 C CNN
	1    6650 5900
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 58CD3547
P 8250 5900
F 0 "R7" V 8250 6050 50  0000 C CNN
F 1 "80" V 8350 6050 50  0000 C CNN
F 2 "footprints:0402" V 8180 5900 50  0001 C CNN
F 3 "" H 8250 5900 50  0000 C CNN
	1    8250 5900
	0    1    1    0   
$EndComp
$Comp
L C C37
U 1 1 58CD362F
P 8550 5750
F 0 "C37" H 8450 5900 50  0000 C CNN
F 1 "0.1 uF" H 8700 5900 50  0000 C CNN
F 2 "footprints:0402" H 8550 5750 50  0001 C CNN
F 3 "" H 8550 5750 50  0001 C CNN
	1    8550 5750
	1    0    0    -1  
$EndComp
$Comp
L R R79
U 1 1 58CD372D
P 4950 7050
F 0 "R79" H 5100 6900 50  0000 C CNN
F 1 "10k" H 4900 6900 50  0000 C CNN
F 2 "footprints:0402" V 4880 7050 50  0001 C CNN
F 3 "" H 4950 7050 50  0000 C CNN
	1    4950 7050
	-1   0    0    1   
$EndComp
$Comp
L R R80
U 1 1 58CD3827
P 4950 7400
F 0 "R80" H 5100 7300 50  0000 C CNN
F 1 "10k" H 4900 7300 50  0000 C CNN
F 2 "footprints:0402" V 4880 7400 50  0001 C CNN
F 3 "" H 4950 7400 50  0000 C CNN
	1    4950 7400
	-1   0    0    1   
$EndComp
$Comp
L L FB11
U 1 1 58CD38BC
P 1850 7000
F 0 "FB11" H 1800 6900 50  0000 C CNN
F 1 "240" H 1800 6800 50  0000 C CNN
F 2 "footprints:0603" H 1850 7000 50  0001 C CNN
F 3 "" H 1850 7000 50  0000 C CNN
	1    1850 7000
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 58CD3990
P 2100 7150
F 0 "C20" V 2350 7150 50  0000 C CNN
F 1 "1000 pF" V 2450 7150 50  0000 C CNN
F 2 "footprints:0402" H 2100 7150 50  0001 C CNN
F 3 "" H 2100 7150 50  0001 C CNN
	1    2100 7150
	0    1    1    0   
$EndComp
$Comp
L C C21
U 1 1 58CD3A5B
P 2300 7150
F 0 "C21" V 2550 7150 50  0000 C CNN
F 1 "1000 pF" V 2750 7150 50  0000 C CNN
F 2 "footprints:0402" H 2300 7150 50  0001 C CNN
F 3 "" H 2300 7150 50  0001 C CNN
	1    2300 7150
	0    1    1    0   
$EndComp
$Comp
L C C22
U 1 1 58CD3AF7
P 2500 7150
F 0 "C22" V 2750 7150 50  0000 C CNN
F 1 "1000 pF" V 2850 7150 50  0000 C CNN
F 2 "footprints:0402" H 2500 7150 50  0001 C CNN
F 3 "" H 2500 7150 50  0001 C CNN
	1    2500 7150
	0    1    1    0   
$EndComp
$Comp
L C C23
U 1 1 58CD3B9E
P 2700 7150
F 0 "C23" V 2950 7150 50  0000 C CNN
F 1 "1000 pF" V 3150 7150 50  0000 C CNN
F 2 "footprints:0402" H 2700 7150 50  0001 C CNN
F 3 "" H 2700 7150 50  0001 C CNN
	1    2700 7150
	0    1    1    0   
$EndComp
$Comp
L C C24
U 1 1 58CD3C44
P 2900 7150
F 0 "C24" V 3150 7150 50  0000 C CNN
F 1 "1000 pF" V 3250 7150 50  0000 C CNN
F 2 "footprints:0402" H 2900 7150 50  0001 C CNN
F 3 "" H 2900 7150 50  0001 C CNN
	1    2900 7150
	0    1    1    0   
$EndComp
$Comp
L C C25
U 1 1 58CD3CE9
P 3100 7150
F 0 "C25" V 3350 7150 50  0000 C CNN
F 1 "1000 pF" V 3550 7150 50  0000 C CNN
F 2 "footprints:0402" H 3100 7150 50  0001 C CNN
F 3 "" H 3100 7150 50  0001 C CNN
	1    3100 7150
	0    1    1    0   
$EndComp
$Comp
L C C26
U 1 1 58CD3D91
P 3300 7150
F 0 "C26" V 3550 7150 50  0000 C CNN
F 1 "1000 pF" V 3650 7150 50  0000 C CNN
F 2 "footprints:0402" H 3300 7150 50  0001 C CNN
F 3 "" H 3300 7150 50  0001 C CNN
	1    3300 7150
	0    1    1    0   
$EndComp
$Comp
L C C31
U 1 1 58CD4042
P 8100 6650
F 0 "C31" V 8350 6650 50  0000 C CNN
F 1 "0.1 uF" V 8450 6650 50  0000 C CNN
F 2 "footprints:0402" H 8100 6650 50  0001 C CNN
F 3 "" H 8100 6650 50  0001 C CNN
	1    8100 6650
	0    1    1    0   
$EndComp
$Comp
L C C32
U 1 1 58CD4208
P 8250 6650
F 0 "C32" V 8500 6650 50  0000 C CNN
F 1 "0.1 uF" V 8700 6650 50  0000 C CNN
F 2 "footprints:0402" H 8250 6650 50  0001 C CNN
F 3 "" H 8250 6650 50  0001 C CNN
	1    8250 6650
	0    1    1    0   
$EndComp
$Comp
L C C33
U 1 1 58CD42B9
P 8400 6650
F 0 "C33" V 8650 6650 50  0000 C CNN
F 1 "0.1 uF" V 8750 6650 50  0000 C CNN
F 2 "footprints:0402" H 8400 6650 50  0001 C CNN
F 3 "" H 8400 6650 50  0001 C CNN
	1    8400 6650
	0    1    1    0   
$EndComp
$Comp
L C C34
U 1 1 58CD436F
P 8550 6650
F 0 "C34" V 8800 6650 50  0000 C CNN
F 1 "0.1 uF" V 9000 6650 50  0000 C CNN
F 2 "footprints:0402" H 8550 6650 50  0001 C CNN
F 3 "" H 8550 6650 50  0001 C CNN
	1    8550 6650
	0    1    1    0   
$EndComp
$Comp
L C C35
U 1 1 58CD442E
P 9600 6650
F 0 "C35" V 9850 6650 50  0000 C CNN
F 1 "0.1 uF" V 9950 6650 50  0000 C CNN
F 2 "footprints:0402" H 9600 6650 50  0001 C CNN
F 3 "" H 9600 6650 50  0001 C CNN
	1    9600 6650
	0    1    1    0   
$EndComp
$Comp
L C C36
U 1 1 58CD450A
P 9750 6650
F 0 "C36" V 10000 6650 50  0000 C CNN
F 1 "0.1 uF" V 10200 6650 50  0000 C CNN
F 2 "footprints:0402" H 9750 6650 50  0001 C CNN
F 3 "" H 9750 6650 50  0001 C CNN
	1    9750 6650
	0    1    1    0   
$EndComp
Text Label 1900 5750 0    50   ~ 0
ch1_vcc_lna
Text Label 3000 5750 0    50   ~ 0
ch1_cpout
Text Label 4350 5750 0    50   ~ 0
ch1_vtune
$Comp
L GND #PWR021
U 1 1 58CD60D0
P 3450 7350
F 0 "#PWR021" H 3650 7250 50  0001 C CNN
F 1 "GND" H 3650 7150 50  0001 C CNN
F 2 "" H 3450 7350 50  0001 C CNN
F 3 "" H 3450 7350 50  0001 C CNN
	1    3450 7350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 58CD6BF8
P 8700 6850
F 0 "#PWR022" H 8900 6750 50  0001 C CNN
F 1 "GND" H 8900 6650 50  0001 C CNN
F 2 "" H 8700 6850 50  0001 C CNN
F 3 "" H 8700 6850 50  0001 C CNN
	1    8700 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 58CD6CAE
P 9900 6850
F 0 "#PWR023" H 10100 6750 50  0001 C CNN
F 1 "GND" H 10100 6650 50  0001 C CNN
F 2 "" H 9900 6850 50  0001 C CNN
F 3 "" H 9900 6850 50  0001 C CNN
	1    9900 6850
	1    0    0    -1  
$EndComp
Text Notes 700  4650 0    100  ~ 20
antenna power\nbias tee
Text Notes 2300 4500 0    100  ~ 20
LNA
Text Notes 5100 5050 0    100  ~ 20
downconverter
Text Notes 7900 5050 0    100  ~ 20
ADC
Text Notes 4250 6500 0    100  ~ 20
loop filter
Text Label 3450 7000 0    50   ~ 0
ch1_vcc
Wire Wire Line
	1000 2900 1000 3050
Connection ~ 1000 3050
Wire Wire Line
	1000 2600 1000 2500
Wire Wire Line
	1000 2150 2350 2150
Wire Wire Line
	2350 2150 2350 1350
Wire Wire Line
	1400 3050 1400 3150
Wire Wire Line
	3400 3050 3550 3050
Wire Wire Line
	3450 3150 3450 3050
Connection ~ 3450 3050
Wire Wire Line
	1200 1350 1200 1550
Connection ~ 1200 1350
Wire Wire Line
	850  3050 1100 3050
Wire Wire Line
	600  1350 1200 1350
Wire Wire Line
	3100 3050 3000 3050
Wire Wire Line
	4950 4600 5250 4600
Connection ~ 5050 4600
Connection ~ 5150 4600
Wire Wire Line
	5100 4700 5100 4600
Connection ~ 5100 4600
Wire Wire Line
	3850 2000 5050 2000
Connection ~ 4950 2000
Connection ~ 4850 2000
Connection ~ 4750 2000
Connection ~ 4650 2000
Connection ~ 4550 2000
Connection ~ 4450 2000
Wire Wire Line
	6250 4300 6050 4300
Wire Wire Line
	6050 3500 6150 3500
Wire Wire Line
	6050 3700 6750 3700
Wire Wire Line
	6050 3900 6750 3900
Wire Wire Line
	6050 4000 6750 4000
Wire Wire Line
	6050 4200 6750 4200
Wire Wire Line
	7050 2550 7850 2550
Wire Wire Line
	7050 2950 7850 2950
Wire Wire Line
	7850 2650 7700 2650
Wire Wire Line
	7700 3050 7850 3050
Wire Wire Line
	7700 3250 7850 3250
Wire Wire Line
	6050 2700 6250 2700
Wire Wire Line
	6250 2700 6250 2450
Wire Wire Line
	6250 2450 6500 2450
Wire Wire Line
	6050 2600 6500 2600
Wire Wire Line
	6050 3000 6250 3000
Wire Wire Line
	6250 3000 6250 2850
Wire Wire Line
	6250 2850 6500 2850
Wire Wire Line
	6050 2900 6350 2900
Wire Wire Line
	6350 2900 6350 3000
Wire Wire Line
	6350 3000 6500 3000
Connection ~ 8450 1800
Connection ~ 8550 1800
Connection ~ 8650 1800
Connection ~ 8850 1800
Connection ~ 8950 1800
Wire Wire Line
	8600 4900 8800 4900
Connection ~ 8700 4900
Wire Wire Line
	8700 4900 8700 5000
Wire Wire Line
	6800 2600 7050 2600
Wire Wire Line
	6800 3000 7050 3000
Wire Wire Line
	7850 2450 6800 2450
Wire Wire Line
	6800 2850 7850 2850
Wire Wire Line
	5350 2000 5350 1900
Wire Wire Line
	5350 1900 5250 1900
Wire Wire Line
	5250 1900 5250 1650
Wire Wire Line
	5550 1650 5550 1900
Wire Wire Line
	5550 1900 5450 1900
Wire Wire Line
	5450 1900 5450 2000
Wire Wire Line
	5650 2000 5650 1900
Wire Wire Line
	5650 1900 5750 1900
Wire Wire Line
	5750 1900 5750 1650
Wire Wire Line
	5750 2000 6050 2000
Wire Wire Line
	6050 2000 6050 1650
Wire Wire Line
	1700 6050 2000 6050
Connection ~ 1850 6050
Wire Wire Line
	1600 5750 2450 5750
Connection ~ 1700 5750
Wire Wire Line
	3000 5750 3900 5750
Connection ~ 3550 5750
Connection ~ 3750 5750
Wire Wire Line
	4200 5750 4800 5750
Connection ~ 4300 5750
Wire Wire Line
	2000 7000 3800 7000
Connection ~ 2100 7000
Connection ~ 2300 7000
Connection ~ 2500 7000
Connection ~ 3300 7000
Connection ~ 2700 7000
Connection ~ 2900 7000
Wire Wire Line
	2100 7300 3450 7300
Connection ~ 2300 7300
Connection ~ 2500 7300
Connection ~ 2700 7300
Connection ~ 2900 7300
Connection ~ 3100 7300
Connection ~ 8100 6500
Connection ~ 8250 6500
Connection ~ 8400 6500
Wire Wire Line
	8100 6800 8700 6800
Connection ~ 8250 6800
Connection ~ 8400 6800
Connection ~ 8550 6800
Connection ~ 9600 6500
Wire Wire Line
	9600 6800 9900 6800
Connection ~ 9750 6800
Connection ~ 1850 5750
Connection ~ 3100 7000
Connection ~ 8250 5750
Wire Wire Line
	8700 5750 9150 5750
Wire Wire Line
	6500 5750 7200 5750
Connection ~ 6650 5750
Text Label 6750 5750 0    50   ~ 0
ch1_gc1_lpf
Text Label 8750 5750 0    50   ~ 0
ch1_xtal
$Comp
L GND #PWR024
U 1 1 58CE2E65
P 6650 6100
F 0 "#PWR024" H 6850 6000 50  0001 C CNN
F 1 "GND" H 6850 5900 50  0001 C CNN
F 2 "" H 6650 6100 50  0001 C CNN
F 3 "" H 6650 6100 50  0001 C CNN
	1    6650 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 58CE2F1B
P 8250 6100
F 0 "#PWR025" H 8450 6000 50  0001 C CNN
F 1 "GND" H 8450 5900 50  0001 C CNN
F 2 "" H 8250 6100 50  0001 C CNN
F 3 "" H 8250 6100 50  0001 C CNN
	1    8250 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2600 7050 2550
Wire Wire Line
	7050 3000 7050 2950
Wire Wire Line
	1000 2200 1000 2150
Wire Wire Line
	3350 2450 3350 2300
Wire Wire Line
	3050 2300 3050 2550
Connection ~ 3050 2450
Wire Wire Line
	3050 2300 2300 2300
$Comp
L MGA-68563 U3
U 1 1 58CC3879
P 2400 3050
F 0 "U3" H 2550 2750 50  0000 C CNN
F 1 "MGA-68563" H 2700 2650 50  0000 C CNN
F 2 "footprints:SOT-363" H 2400 3050 50  0001 C CNN
F 3 "" H 2400 3050 50  0001 C CNN
	1    2400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3600 2300 3600
Wire Wire Line
	2200 3600 2200 3550
Wire Wire Line
	2300 3600 2300 3500
Connection ~ 2200 3600
Connection ~ 3300 7300
Wire Wire Line
	3050 2850 3050 3050
Connection ~ 3050 3050
Text Notes 8400 800  0    150  ~ 30
RF channel 1
Wire Wire Line
	1700 7000 1450 7000
$Comp
L VCC_3.3V #PWR026
U 1 1 58DC45C6
P 1450 7000
F 0 "#PWR026" H 1630 6770 50  0001 C CNN
F 1 "VCC_3.3V" H 1580 6870 50  0001 C CNN
F 2 "" H 1450 7000 50  0001 C CNN
F 3 "" H 1450 7000 50  0001 C CNN
	1    1450 7000
	1    0    0    -1  
$EndComp
$Comp
L VCC_3.3V #PWR027
U 1 1 58DC56BE
P 1050 5750
F 0 "#PWR027" H 1230 5520 50  0001 C CNN
F 1 "VCC_3.3V" H 1180 5620 50  0001 C CNN
F 2 "" H 1050 5750 50  0001 C CNN
F 3 "" H 1050 5750 50  0001 C CNN
	1    1050 5750
	1    0    0    -1  
$EndComp
$Comp
L VCC_3.3V #PWR028
U 1 1 58DC5774
P 5350 7050
F 0 "#PWR028" H 5530 6820 50  0001 C CNN
F 1 "VCC_3.3V" H 5480 6920 50  0001 C CNN
F 2 "" H 5350 7050 50  0001 C CNN
F 3 "" H 5350 7050 50  0001 C CNN
	1    5350 7050
	1    0    0    -1  
$EndComp
$Comp
L VCC_3.3V #PWR029
U 1 1 58DC582A
P 5350 7400
F 0 "#PWR029" H 5530 7170 50  0001 C CNN
F 1 "VCC_3.3V" H 5480 7270 50  0001 C CNN
F 2 "" H 5350 7400 50  0001 C CNN
F 3 "" H 5350 7400 50  0001 C CNN
	1    5350 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5750 1300 5750
Wire Wire Line
	5100 7050 5350 7050
Wire Wire Line
	5100 7400 5350 7400
$Comp
L VCC_3.3V #PWR030
U 1 1 58DC5FC2
P 7750 6500
F 0 "#PWR030" H 7930 6270 50  0001 C CNN
F 1 "VCC_3.3V" H 7880 6370 50  0001 C CNN
F 2 "" H 7750 6500 50  0001 C CNN
F 3 "" H 7750 6500 50  0001 C CNN
	1    7750 6500
	1    0    0    -1  
$EndComp
$Comp
L VCC_3.3V #PWR031
U 1 1 58DC6078
P 9250 6500
F 0 "#PWR031" H 9430 6270 50  0001 C CNN
F 1 "VCC_3.3V" H 9380 6370 50  0001 C CNN
F 2 "" H 9250 6500 50  0001 C CNN
F 3 "" H 9250 6500 50  0001 C CNN
	1    9250 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 6500 8550 6500
Wire Wire Line
	9250 6500 9750 6500
Text GLabel 8000 5750 0    50   Input ~ 0
CH1_REF+
Text GLabel 5900 5750 0    50   Input ~ 0
CH1_GC1_FPGA_LPF
Text GLabel 4450 7050 0    50   Input ~ 0
CH1_SDA
Text GLabel 4450 7400 0    50   Input ~ 0
CH1_SCL
Wire Wire Line
	8000 5750 8400 5750
Wire Wire Line
	5900 5750 6200 5750
Wire Wire Line
	4450 7050 4800 7050
Wire Wire Line
	4450 7400 4800 7400
$Comp
L VCC_3.3V #PWR032
U 1 1 58DCAD61
P 9300 1800
F 0 "#PWR032" H 9480 1570 50  0001 C CNN
F 1 "VCC_3.3V" H 9430 1670 50  0001 C CNN
F 2 "" H 9300 1800 50  0001 C CNN
F 3 "" H 9300 1800 50  0001 C CNN
	1    9300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1800 9300 1800
Text GLabel 6250 3300 2    50   Input ~ 0
CH1_SDA
Text GLabel 6250 3400 2    50   Input ~ 0
CH1_SCL
Text GLabel 7550 3650 0    50   Input ~ 0
CH1_CLK+
Text GLabel 7550 3750 0    50   Input ~ 0
CH1_CLK-
Text GLabel 7450 3950 0    50   Input ~ 0
CH1_CS
Text GLabel 7550 4050 0    50   Input ~ 0
CH1_SCLK
Text GLabel 7550 4150 0    50   Input ~ 0
CH1_SDIN
Wire Wire Line
	6250 3300 6050 3300
Wire Wire Line
	6250 3400 6050 3400
Wire Wire Line
	7550 3650 7850 3650
Wire Wire Line
	7550 3750 7850 3750
Wire Wire Line
	7450 3950 7850 3950
Wire Wire Line
	7550 4050 7850 4050
Wire Wire Line
	7550 4150 7850 4150
Text GLabel 9950 2200 2    50   Input ~ 0
CH1_CLK
Text GLabel 10000 2400 2    50   Input ~ 0
CH1_D0
Text GLabel 10000 2500 2    50   Input ~ 0
CH1_D1
Text GLabel 10000 2600 2    50   Input ~ 0
CH1_D2
Text GLabel 10000 2700 2    50   Input ~ 0
CH1_D3
Text GLabel 10000 2800 2    50   Input ~ 0
CH1_D4
Text GLabel 10000 2900 2    50   Input ~ 0
CH1_D5
Text GLabel 10000 3100 2    50   Input ~ 0
CH1_D7
Text GLabel 10000 3000 2    50   Input ~ 0
CH1_D6
Wire Wire Line
	9950 2200 9650 2200
Wire Wire Line
	9650 2400 10000 2400
Wire Wire Line
	10000 2500 9650 2500
Wire Wire Line
	9650 2600 10000 2600
Wire Wire Line
	10000 2700 9650 2700
Wire Wire Line
	9650 2800 10000 2800
Wire Wire Line
	10000 2900 9650 2900
Wire Wire Line
	9650 3000 10000 3000
Wire Wire Line
	10000 3100 9650 3100
$EndSCHEMATC
