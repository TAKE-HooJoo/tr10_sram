v {xschem version=3.4.8 file_version=1.2}
G {}
K {type=subcircuit}
V {}
S {}
E {}
T {6T SRAM bit cell - generic 5 V sizing for functional verification} 70 -420 0 0 0.38 0.38 {}
C {devices/iopin.sym} 60 -100 0 0 {name=pBL lab=BL}
C {devices/iopin.sym} 640 -100 0 0 {name=pBLB lab=BLB}
C {devices/ipin.sym} 350 300 0 0 {name=pWL lab=WL}
C {devices/iopin.sym} 350 -350 0 0 {name=pVDD lab=VDD}
C {devices/iopin.sym} 350 250 0 0 {name=pVSS lab=VSS}
C {devices/pmos4.sym} 260 -220 0 0 {name=MP1 model=pmos w=3u l=1u m=1}
C {devices/nmos4.sym} 260 80 0 0 {name=MN1 model=nmos w=6u l=1u m=1}
C {devices/pmos4.sym} 440 -220 0 1 {name=MP2 model=pmos w=3u l=1u m=1}
C {devices/nmos4.sym} 440 80 0 1 {name=MN2 model=nmos w=6u l=1u m=1}
C {devices/nmos4.sym} 150 -100 1 0 {name=MAX1 model=nmos w=4u l=1u m=1}
C {devices/nmos4.sym} 550 -100 3 0 {name=MAX2 model=nmos w=4u l=1u m=1}
N 350 -350 350 -280 {lab=VDD}
N 260 -280 440 -280 {lab=VDD}
N 260 -280 260 -250 {lab=VDD}
N 440 -280 440 -250 {lab=VDD}
N 350 140 350 250 {lab=VSS}
N 260 140 440 140 {lab=VSS}
N 260 110 260 140 {lab=VSS}
N 440 110 440 140 {lab=VSS}
N 260 -190 260 50 {lab=Q}
N 440 -190 440 50 {lab=QB}
N 260 -100 180 -100 {lab=Q}
N 520 -100 440 -100 {lab=QB}
N 60 -100 120 -100 {lab=BL}
N 580 -100 640 -100 {lab=BLB}
N 150 -70 150 300 {lab=WL}
N 550 -70 550 300 {lab=WL}
N 150 300 550 300 {lab=WL}
N 280 -220 440 -100 {lab=QB}
N 280 80 440 -100 {lab=QB}
N 420 -220 260 -100 {lab=Q}
N 420 80 260 -100 {lab=Q}
N 280 -220 320 -220 {lab=VDD}
N 320 -280 320 -220 {lab=VDD}
N 260 -280 320 -280 {lab=VDD}
N 280 80 320 80 {lab=VSS}
N 320 80 320 140 {lab=VSS}
N 260 140 320 140 {lab=VSS}
N 420 -220 380 -220 {lab=VDD}
N 380 -280 380 -220 {lab=VDD}
N 380 -280 440 -280 {lab=VDD}
N 420 80 380 80 {lab=VSS}
N 380 80 380 140 {lab=VSS}
N 380 140 440 140 {lab=VSS}
N 150 -120 150 -150 {lab=VSS}
N 150 -150 350 -150 {lab=VSS}
N 350 -150 350 140 {lab=VSS}
N 550 -120 550 -150 {lab=VSS}
N 550 -150 350 -150 {lab=VSS}
C {devices/lab_wire.sym} 260 -100 0 0 {name=lq lab=Q}
C {devices/lab_wire.sym} 440 -100 0 0 {name=lqb lab=QB}
