v {xschem version=3.4.8 file_version=1.2}
G {}
K {type=subcircuit}
V {}
S {}
E {}
T {Write driver: CE&WE enables complementary bit-line pull-downs} 60 -360 0 0 0.36 0.36 {}
C {devices/ipin.sym} 50 -120 0 0 {name=pDIN lab=DIN}
C {devices/ipin.sym} 50 -20 0 0 {name=pCE lab=CE}
C {devices/ipin.sym} 50 80 0 0 {name=pWE lab=WE}
C {devices/iopin.sym} 700 -110 0 0 {name=pBL lab=BL}
C {devices/iopin.sym} 700 120 0 0 {name=pBLB lab=BLB}
C {devices/iopin.sym} 360 -300 0 0 {name=pVDD lab=VDD}
C {devices/iopin.sym} 360 300 0 0 {name=pVSS lab=VSS}
C {./inv.sym} 170 -120 0 0 {name=XID}
C {./nand2.sym} 180 30 0 0 {name=XNW}
C {./inv.sym} 400 30 0 0 {name=XIW}
C {devices/nmos4.sym} 580 -70 0 0 {name=MBL1 model=nmos w=10u l=1u m=1}
C {devices/nmos4.sym} 580 10 0 0 {name=MBL2 model=nmos w=10u l=1u m=1}
C {devices/nmos4.sym} 580 100 0 0 {name=MBLB1 model=nmos w=10u l=1u m=1}
C {devices/nmos4.sym} 580 180 0 0 {name=MBLB2 model=nmos w=10u l=1u m=1}
N 50 -120 160 -120 {lab=DIN}
N 290 -120 500 -120 {lab=DINB}
N 50 -20 170 5 {lab=CE}
N 50 80 170 55 {lab=WE}
N 320 30 390 30 {lab=NW}
N 520 30 530 30 {lab=WREN}
N 700 -110 580 -110 {lab=BL}
N 580 -110 580 -100 {lab=BL}
N 580 -40 580 -20 {lab=NBL}
N 580 40 580 250 {lab=VSS}
N 700 120 580 120 {lab=BLB}
N 580 120 580 130 {lab=BLB}
N 580 210 580 250 {lab=VSS}
N 360 250 580 250 {lab=VSS}
N 360 250 360 300 {lab=VSS}
N 560 -70 500 -70 {lab=DINB}
N 500 -120 500 -70 {lab=DINB}
N 560 10 530 10 {lab=WREN}
N 530 10 530 30 {lab=WREN}
N 560 100 500 100 {lab=DIN}
N 500 -120 500 100 {lab=DIN}
N 50 -120 500 -120 {lab=DIN}
N 560 180 530 180 {lab=WREN}
N 530 30 530 180 {lab=WREN}
N 600 -70 640 -70 {lab=VSS}
N 640 -70 640 250 {lab=VSS}
N 600 10 640 10 {lab=VSS}
N 600 100 640 100 {lab=VSS}
N 600 180 640 180 {lab=VSS}
N 360 -300 360 -220 {lab=VDD}
N 220 -180 450 -180 {lab=VDD}
N 360 -220 360 -180 {lab=VDD}
N 220 -60 450 -60 {lab=VSS}
N 360 -60 360 250 {lab=VSS}
N 225 -30 225 -60 {lab=VSS}
N 225 90 225 -60 {lab=VSS}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 450 -30 450 -60 {lab=VSS}
N 450 90 450 -60 {lab=VSS}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
N 225 -30 225 -30 {}
