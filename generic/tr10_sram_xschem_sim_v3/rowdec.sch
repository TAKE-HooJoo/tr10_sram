v {xschem version=3.4.8 file_version=1.2}
G {}
K {type=subcircuit}
V {}
S {}
E {}
T {1-to-2 row decoder: WL0=CE*!A0, WL1=CE*A0} 80 -340 0 0 0.38 0.38 {}
C {devices/ipin.sym} 60 -120 0 0 {name=pA0 lab=A0}
C {devices/ipin.sym} 60 20 0 0 {name=pCE lab=CE}
C {devices/opin.sym} 760 -100 0 0 {name=pWL0 lab=WL0}
C {devices/opin.sym} 760 100 0 0 {name=pWL1 lab=WL1}
C {devices/iopin.sym} 420 -280 0 0 {name=pVDD lab=VDD}
C {devices/iopin.sym} 420 260 0 0 {name=pVSS lab=VSS}
C {./inv.sym} 180 -120 0 0 {name=XIA}
C {./nand2.sym} 360 -90 0 0 {name=XN0}
C {./inv.sym} 590 -100 0 0 {name=XI0}
C {./nand2.sym} 360 110 0 0 {name=XN1}
C {./inv.sym} 590 100 0 0 {name=XI1}
N 60 -120 170 -120 {lab=A0}
N 300 -120 350 -115 {lab=A0B}
N 60 20 280 20 {lab=CE}
N 280 20 280 -65 {lab=CE}
N 280 -65 350 -65 {lab=CE}
N 280 20 280 135 {lab=CE}
N 280 135 350 135 {lab=CE}
N 60 -120 310 -120 {lab=A0}
N 310 -120 310 85 {lab=A0}
N 310 85 350 85 {lab=A0}
N 500 -90 580 -100 {lab=N0}
N 710 -100 760 -100 {lab=WL0}
N 500 110 580 100 {lab=N1}
N 710 100 760 100 {lab=WL1}
N 420 -280 420 -220 {lab=VDD}
N 230 -180 650 -180 {lab=VDD}
N 420 -220 420 -180 {lab=VDD}
N 230 -60 650 -60 {lab=VSS}
N 420 -60 420 260 {lab=VSS}
N 405 -150 405 -180 {lab=VDD}
N 405 -30 405 -60 {lab=VSS}
N 405 50 405 -180 {lab=VDD}
N 405 170 405 -60 {lab=VSS}
N 640 -160 640 -180 {lab=VDD}
N 640 -40 640 -60 {lab=VSS}
N 640 40 640 -180 {lab=VDD}
N 640 160 640 -60 {lab=VSS}
N 230 -180 230 -180 {}
N 230 -180 230 -180 {}
N 230 -180 230 -180 {}
N 230 -180 230 -180 {}
