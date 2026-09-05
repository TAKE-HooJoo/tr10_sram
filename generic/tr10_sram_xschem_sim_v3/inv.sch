v {xschem version=3.4.8 file_version=1.2}
G {}
K {type=subcircuit}
V {}
S {}
E {}
T {CMOS inverter} 100 -260 0 0 0.4 0.4 {}
C {devices/ipin.sym} 80 -20 0 0 {name=pA lab=A}
C {devices/opin.sym} 500 -20 0 0 {name=pY lab=Y}
C {devices/iopin.sym} 290 -220 0 0 {name=pVDD lab=VDD}
C {devices/iopin.sym} 290 180 0 0 {name=pVSS lab=VSS}
C {devices/pmos4.sym} 300 -100 0 0 {name=MP1 model=pmos w=6u l=1u m=1}
C {devices/nmos4.sym} 300 60 0 0 {name=MN1 model=nmos w=3u l=1u m=1}
N 290 -220 290 -160 {lab=VDD}
N 300 -160 300 -130 {lab=VDD}
N 280 -100 160 -100 {lab=A}
N 160 -100 160 60 {lab=A}
N 160 60 280 60 {lab=A}
N 80 -20 160 -20 {lab=A}
N 300 -70 300 30 {lab=Y}
N 300 -20 500 -20 {lab=Y}
N 300 90 300 140 {lab=VSS}
N 290 140 300 140 {lab=VSS}
N 290 140 290 180 {lab=VSS}
N 320 -100 360 -100 {lab=VDD}
N 360 -160 360 -100 {lab=VDD}
N 300 -160 360 -160 {lab=VDD}
N 320 60 360 60 {lab=VSS}
N 360 60 360 140 {lab=VSS}
N 300 140 360 140 {lab=VSS}
