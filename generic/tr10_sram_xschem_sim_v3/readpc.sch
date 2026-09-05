v {xschem version=3.4.8 file_version=1.2}
G {}
K {type=subcircuit}
V {}
S {}
E {}
T {Precharge + read buffer: precharge when CE=0; DOUT=!BLB} 60 -330 0 0 0.36 0.36 {}
C {devices/iopin.sym} 70 -80 0 0 {name=pBL lab=BL}
C {devices/iopin.sym} 70 80 0 0 {name=pBLB lab=BLB}
C {devices/ipin.sym} 70 180 0 0 {name=pCE lab=CE}
C {devices/opin.sym} 650 80 0 0 {name=pDOUT lab=DOUT}
C {devices/iopin.sym} 350 -270 0 0 {name=pVDD lab=VDD}
C {devices/iopin.sym} 350 270 0 0 {name=pVSS lab=VSS}
C {devices/pmos4.sym} 230 -80 0 0 {name=PP0 model=pmos w=12u l=1u m=1}
C {devices/pmos4.sym} 350 80 0 0 {name=PP1 model=pmos w=12u l=1u m=1}
C {./inv.sym} 500 80 0 0 {name=XREAD}
N 350 -270 350 -190 {lab=VDD}
N 230 -190 350 -190 {lab=VDD}
N 230 -190 230 -110 {lab=VDD}
N 350 -190 350 50 {lab=VDD}
N 70 -80 230 -80 {lab=BL}
N 70 80 340 80 {lab=BLB}
N 470 80 490 80 {lab=BLB}
N 620 80 650 80 {lab=DOUT}
N 70 180 170 180 {lab=CE}
N 170 180 170 -80 {lab=CE}
N 170 -80 210 -80 {lab=CE}
N 170 80 330 80 {lab=CE}
N 250 -80 280 -80 {lab=VDD}
N 280 -190 280 -80 {lab=VDD}
N 230 -190 280 -190 {lab=VDD}
N 370 80 410 80 {lab=VDD}
N 410 -190 410 80 {lab=VDD}
N 350 -190 410 -190 {lab=VDD}
N 550 20 550 -190 {lab=VDD}
N 550 140 550 220 {lab=VSS}
N 350 220 550 220 {lab=VSS}
N 350 220 350 270 {lab=VSS}
