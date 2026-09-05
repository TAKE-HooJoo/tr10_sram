v {xschem version=3.4.8 file_version=1.2}
G {}
K {type=subcircuit}
V {}
S {}
E {}
T {2-input CMOS NAND} 80 -300 0 0 0.4 0.4 {}
C {devices/ipin.sym} 60 -80 0 0 {name=pA lab=A}
C {devices/ipin.sym} 60 40 0 0 {name=pB lab=B}
C {devices/opin.sym} 560 -20 0 0 {name=pY lab=Y}
C {devices/iopin.sym} 300 -250 0 0 {name=pVDD lab=VDD}
C {devices/iopin.sym} 300 230 0 0 {name=pVSS lab=VSS}
C {devices/pmos4.sym} 280 -140 0 0 {name=MPA model=pmos w=6u l=1u m=1}
C {devices/pmos4.sym} 420 -140 0 0 {name=MPB model=pmos w=6u l=1u m=1}
C {devices/nmos4.sym} 350 50 0 0 {name=MNA model=nmos w=6u l=1u m=1}
C {devices/nmos4.sym} 350 150 0 0 {name=MNB model=nmos w=6u l=1u m=1}
N 300 -250 300 -200 {lab=VDD}
N 280 -200 420 -200 {lab=VDD}
N 280 -200 280 -170 {lab=VDD}
N 420 -200 420 -170 {lab=VDD}
N 280 -110 280 -20 {lab=Y}
N 280 -20 560 -20 {lab=Y}
N 420 -110 420 -20 {lab=Y}
N 350 -20 350 20 {lab=Y}
N 350 80 350 120 {lab=NINT}
N 350 180 350 210 {lab=VSS}
N 300 210 350 210 {lab=VSS}
N 300 210 300 230 {lab=VSS}
N 60 -80 180 -80 {lab=A}
N 180 -80 180 -140 {lab=A}
N 180 -140 260 -140 {lab=A}
N 180 -80 180 50 {lab=A}
N 180 50 330 50 {lab=A}
N 60 40 220 40 {lab=B}
N 220 40 220 -140 {lab=B}
N 220 -140 400 -140 {lab=B}
N 220 40 220 150 {lab=B}
N 220 150 330 150 {lab=B}
N 300 -200 500 -200 {lab=VDD}
N 300 210 500 210 {lab=VSS}
N 300 -200 300 -140 {lab=VDD}
N 300 210 300 150 {lab=VSS}
N 300 -140 300 -140 {}
N 320 -140 500 -140 {lab=VDD}
N 500 -200 500 -140 {lab=VDD}
N 440 -140 500 -140 {lab=VDD}
N 370 50 500 50 {lab=VSS}
N 500 50 500 210 {lab=VSS}
N 370 150 500 150 {lab=VSS}
