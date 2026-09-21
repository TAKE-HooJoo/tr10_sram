v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 150 -410 170 -410 {lab=A0}
N 150 -430 170 -430 {lab=WLE}
N 470 -430 490 -430 {lab=VDD}
N 470 -410 490 -410 {lab=VSS}
N 470 -390 490 -390 {lab=WL0}
N 470 -370 490 -370 {lab=WL1}
N 630 -480 650 -480 {lab=WL0}
N 630 -340 650 -340 {lab=WL1}
N 950 -480 970 -480 {lab=BL0}
N 950 -440 970 -440 {lab=VDD}
N 950 -460 970 -460 {lab=BL1}
N 950 -420 970 -420 {lab=BLB1}
N 950 -380 970 -380 {lab=BLB0}
N 1100 -450 1120 -450 {lab=PCB}
N 1100 -430 1120 -430 {lab=EQEN}
N 670 -240 690 -240 {lab=DIN0}
N 670 -220 690 -220 {lab=DIN1}
N 670 -200 690 -200 {lab=WE}
N 670 -180 690 -180 {lab=WEB}
N 950 -400 970 -400 {lab=VSS}
N 990 -240 1010 -240 {lab=VDD}
N 990 -220 1010 -220 {lab=BL0}
N 990 -200 1010 -200 {lab=BLB0}
N 990 -180 1010 -180 {lab=VSS}
N 990 -160 1010 -160 {lab=BL1}
N 990 -140 1010 -140 {lab=BLB1}
N 1160 -210 1180 -210 {lab=BLB0}
N 1160 -190 1180 -190 {lab=BLB1}
N 1420 -450 1440 -450 {lab=VDD}
N 1420 -430 1440 -430 {lab=VSS}
N 1420 -410 1440 -410 {lab=BL0}
N 1420 -390 1440 -390 {lab=BLB0}
N 1420 -370 1440 -370 {lab=BL1}
N 1420 -350 1440 -350 {lab=BLB1}
N 1480 -210 1500 -210 {lab=VDD}
N 1480 -190 1500 -190 {lab=VSS}
N 1480 -170 1500 -170 {lab=DOUT0}
N 1480 -150 1500 -150 {lab=DOUT1}
N 360 -650 380 -650 {lab=VDD}
N 360 -630 380 -630 {lab=VSS}
N 540 -650 560 -650 {lab=WLE}
N 540 -630 560 -630 {lab=A0}
N 700 -650 720 -650 {lab=WE}
N 860 -650 880 -650 {lab=DIN0}
N 860 -630 880 -630 {lab=DIN1}
N 1030 -650 1050 -650 {lab=PCB}
N 1200 -650 1220 -650 {lab=DOUT0}
N 1200 -630 1220 -630 {lab=DOUT1}
N 240 -200 240 -170 {lab=WEB}
N 240 -110 240 -60 {lab=VSS}
N 240 -140 260 -140 {lab=VSS}
N 260 -140 260 -100 {lab=VSS}
N 240 -100 260 -100 {lab=VSS}
N 240 -300 240 -260 {lab=VDD}
N 180 -230 200 -230 {lab=WE}
N 180 -230 180 -140 {lab=WE}
N 180 -140 200 -140 {lab=WE}
N 240 -190 300 -190 {lab=WEB}
N 140 -190 180 -190 {lab=WE}
N 240 -230 260 -230 {lab=VDD}
N 260 -270 260 -230 {lab=VDD}
N 240 -270 260 -270 {lab=VDD}
N 500 -200 500 -170 {lab=EQEN}
N 500 -110 500 -60 {lab=VSS}
N 500 -140 520 -140 {lab=VSS}
N 520 -140 520 -100 {lab=VSS}
N 500 -100 520 -100 {lab=VSS}
N 500 -300 500 -260 {lab=VDD}
N 440 -230 460 -230 {lab=PCB}
N 440 -230 440 -140 {lab=PCB}
N 440 -140 460 -140 {lab=PCB}
N 500 -190 560 -190 {lab=EQEN}
N 400 -190 440 -190 {lab=PCB}
N 500 -230 520 -230 {lab=VDD}
N 520 -270 520 -230 {lab=VDD}
N 500 -270 520 -270 {lab=VDD}
N 630 -460 650 -460 {lab=WL0}
N 630 -440 650 -440 {lab=WL0}
N 630 -420 650 -420 {lab=WL0}
N 630 -400 650 -400 {lab=WL0}
N 630 -380 650 -380 {lab=WL0}
N 630 -360 650 -360 {lab=WL0}
C {decoder.sym} 320 -400 0 0 {name=x2}
C {write_driver.sym} 840 -190 0 0 {name=x3}
C {precharge.sym} 1270 -400 0 0 {name=x4}
C {read_buffer.sym} 1330 -180 0 0 {name=x5}
C {devices/iopin.sym} 360 -650 0 1 {name=p1 lab=VDD}
C {devices/ipin.sym} 540 -650 0 0 {name=p2 lab=WLE}
C {devices/opin.sym} 1220 -650 0 0 {name=p3 lab=DOUT0}
C {devices/lab_pin.sym} 150 -430 0 0 {name=p5 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 150 -410 0 0 {name=p6 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 490 -430 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 -410 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 490 -390 0 1 {name=p8 sig_type=std_logic lab=WL0}
C {devices/lab_pin.sym} 490 -370 0 1 {name=p9 sig_type=std_logic lab=WL1}
C {devices/lab_pin.sym} 630 -480 0 0 {name=p10 sig_type=std_logic lab=WL0}
C {devices/lab_pin.sym} 630 -340 0 0 {name=p11 sig_type=std_logic lab=WL1}
C {devices/lab_pin.sym} 970 -480 0 1 {name=p12 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 970 -440 0 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 970 -460 0 1 {name=p14 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 970 -420 0 1 {name=p15 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 970 -380 0 1 {name=p16 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1100 -450 0 0 {name=p17 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 1100 -430 0 0 {name=p18 sig_type=std_logic lab=EQEN}
C {devices/lab_pin.sym} 670 -240 0 0 {name=p19 sig_type=std_logic lab=DIN0}
C {devices/lab_pin.sym} 670 -220 0 0 {name=p20 sig_type=std_logic lab=DIN1}
C {devices/lab_pin.sym} 670 -200 0 0 {name=p21 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 670 -180 0 0 {name=p22 sig_type=std_logic lab=WEB
}
C {devices/lab_pin.sym} 970 -400 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1010 -240 0 1 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1010 -220 0 1 {name=p25 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 1010 -200 0 1 {name=p26 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1010 -180 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1010 -160 0 1 {name=p28 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 1010 -140 0 1 {name=p29 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 1160 -210 0 0 {name=p30 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1160 -190 0 0 {name=p31 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 1440 -450 0 1 {name=p32 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1440 -430 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1440 -410 0 1 {name=p34 sig_type=std_logic lab=BL0}
C {devices/lab_pin.sym} 1440 -390 0 1 {name=p35 sig_type=std_logic lab=BLB0}
C {devices/lab_pin.sym} 1440 -370 0 1 {name=p36 sig_type=std_logic lab=BL1}
C {devices/lab_pin.sym} 1440 -350 0 1 {name=p37 sig_type=std_logic lab=BLB1}
C {devices/lab_pin.sym} 1500 -210 0 1 {name=p38 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1500 -190 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1500 -170 0 1 {name=p40 sig_type=std_logic lab=DOUT0}
C {devices/lab_pin.sym} 1500 -150 0 1 {name=p41 sig_type=std_logic lab=DOUT1}
C {devices/lab_pin.sym} 380 -650 0 1 {name=p42 sig_type=std_logic lab=VDD}
C {devices/iopin.sym} 360 -630 0 1 {name=p43 lab=VSS}
C {devices/lab_pin.sym} 380 -630 0 1 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 560 -650 0 1 {name=p45 sig_type=std_logic lab=WLE}
C {devices/ipin.sym} 540 -630 0 0 {name=p46 lab=A0}
C {devices/lab_pin.sym} 560 -630 0 1 {name=p47 sig_type=std_logic lab=A0}
C {devices/ipin.sym} 700 -650 0 0 {name=p48 lab=WE}
C {devices/lab_pin.sym} 720 -650 0 1 {name=p49 sig_type=std_logic lab=WE}
C {devices/ipin.sym} 860 -650 0 0 {name=p52 lab=DIN0}
C {devices/lab_pin.sym} 880 -650 0 1 {name=p53 sig_type=std_logic lab=DIN0}
C {devices/ipin.sym} 860 -630 0 0 {name=p54 lab=DIN1}
C {devices/lab_pin.sym} 880 -630 0 1 {name=p55 sig_type=std_logic lab=DIN1}
C {devices/ipin.sym} 1030 -650 0 0 {name=p56 lab=PCB}
C {devices/lab_pin.sym} 1050 -650 0 1 {name=p57 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 1200 -650 0 0 {name=p60 sig_type=std_logic lab=DOUT0}
C {devices/opin.sym} 1220 -630 0 0 {name=p61 lab=DOUT1}
C {devices/lab_pin.sym} 1200 -630 0 0 {name=p62 sig_type=std_logic lab=DOUT1}
C {devices/lab_pin.sym} 240 -300 0 0 {name=p63 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 140 -190 0 0 {name=p64 sig_type=std_logic lab=WE}
C {devices/lab_pin.sym} 300 -190 0 1 {name=p65 sig_type=std_logic lab=WEB}
C {devices/lab_pin.sym} 240 -60 0 0 {name=p66 sig_type=std_logic lab=VSS}
C {TR-1umLIB/MN.sym} 200 -140 0 0 {name=XM1
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 200 -230 0 0 {name=XM2
model=PMOS
w=6.8u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {devices/lab_pin.sym} 500 -300 0 0 {name=p50 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 400 -190 0 0 {name=p51 sig_type=std_logic lab=PCB}
C {devices/lab_pin.sym} 560 -190 0 1 {name=p67 sig_type=std_logic lab=EQEN}
C {devices/lab_pin.sym} 500 -60 0 0 {name=p68 sig_type=std_logic lab=VSS}
C {TR-1umLIB/MN.sym} 460 -140 0 0 {name=XM3
model=NMOS
w=3.4u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {TR-1umLIB/MP.sym} 460 -230 0 0 {name=XM4
model=PMOS
w=6.8u
l=1u
m=1
spiceprefix=X
as=0
ad=0
ps=0
pd=0
nrd=0
nrs=0}
C {sram_8w2b.sym} 800 -410 0 0 {name=x1}
C {devices/lab_pin.sym} 630 -460 0 0 {name=p58 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -440 0 0 {name=p59 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -420 0 0 {name=p69 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -400 0 0 {name=p70 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -380 0 0 {name=p71 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 630 -360 0 0 {name=p72 sig_type=std_logic lab=VSS}
