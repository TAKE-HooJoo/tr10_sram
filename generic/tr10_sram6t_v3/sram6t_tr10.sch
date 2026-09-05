v {xschem version=3.4.8 file_version=1.3}
G {}
K {}
V {}
S {}
E {}
T {TR-10 / IP62 6T SRAM bit cell} 40 -260 0 0 0.46 0.46 {}
T {VDD=5 V   L=1 um   Case A: Wpd/Wacc/Wpu = 6.8/5.1/3.4 um} 40 -225 0 0 0.28 0.28 {}
T {Cross-coupled CMOS inverters + 2 access NMOS} 40 -195 0 0 0.25 0.25 {}

C {devices/iopin.sym} 60 -80 0 0 {name=pBL lab=BL}
C {devices/iopin.sym} 620 -80 0 0 {name=pBLB lab=BLB}
C {devices/ipin.sym} 340 180 0 0 {name=pWL lab=WL}
C {devices/iopin.sym} 340 -170 0 0 {name=pVDD lab=VDD}
C {devices/iopin.sym} 340 120 0 0 {name=pVSS lab=VSS}

* left storage inverter, node Q
C {./MP.sym} 280 -110 0 0 {name=XPUQ model=PMOS w=3.4u l=1u m=1 spiceprefix=X}
C {./MN.sym} 280 -10 0 0 {name=XPDQ model=NMOS w=6.8u l=1u m=1 spiceprefix=X}

* right storage inverter, node QB
C {./MP.sym} 420 -110 0 0 {name=XPUQB model=PMOS w=3.4u l=1u m=1 spiceprefix=X}
C {./MN.sym} 420 -10 0 0 {name=XPDQB model=NMOS w=6.8u l=1u m=1 spiceprefix=X}

* access devices
C {./MN.sym} 100 -60 0 0 {name=XACCQ model=NMOS w=5.1u l=1u m=1 spiceprefix=X}
C {./MN.sym} 520 -60 0 0 {name=XACCQB model=NMOS w=5.1u l=1u m=1 spiceprefix=X}

* labels make the cross-coupling explicit and avoid long crossing wires
C {devices/lab_wire.sym} 320 -80 0 0 {name=lQ1 lab=Q}
C {devices/lab_wire.sym} 320 -40 0 0 {name=lQ2 lab=Q}
C {devices/lab_wire.sym} 460 -80 0 0 {name=lQB1 lab=QB}
C {devices/lab_wire.sym} 460 -40 0 0 {name=lQB2 lab=QB}
C {devices/lab_wire.sym} 280 -110 2 0 {name=lGQp lab=QB}
C {devices/lab_wire.sym} 280 -10 2 0 {name=lGQn lab=QB}
C {devices/lab_wire.sym} 420 -110 2 0 {name=lGQBp lab=Q}
C {devices/lab_wire.sym} 420 -10 2 0 {name=lGQBn lab=Q}

* power and bulk labels
C {devices/lab_wire.sym} 320 -140 0 0 {name=lVDD1 lab=VDD}
C {devices/lab_wire.sym} 460 -140 0 0 {name=lVDD2 lab=VDD}
C {devices/lab_wire.sym} 320 20 0 0 {name=lVSS1 lab=VSS}
C {devices/lab_wire.sym} 460 20 0 0 {name=lVSS2 lab=VSS}
C {devices/lab_wire.sym} 320 -110 0 0 {name=lBP1 lab=VDD}
C {devices/lab_wire.sym} 460 -110 0 0 {name=lBP2 lab=VDD}
C {devices/lab_wire.sym} 320 -10 0 0 {name=lBN1 lab=VSS}
C {devices/lab_wire.sym} 460 -10 0 0 {name=lBN2 lab=VSS}

* access labels: drain/source are interchangeable for this use
C {devices/lab_wire.sym} 140 -90 0 0 {name=lBL lab=BL}
C {devices/lab_wire.sym} 140 -30 0 0 {name=lAQ lab=Q}
C {devices/lab_wire.sym} 100 -60 2 0 {name=lWL1 lab=WL}
C {devices/lab_wire.sym} 140 -60 0 0 {name=lAVSS1 lab=VSS}
C {devices/lab_wire.sym} 560 -90 0 0 {name=lBLB lab=BLB}
C {devices/lab_wire.sym} 560 -30 0 0 {name=lAQB lab=QB}
C {devices/lab_wire.sym} 520 -60 2 0 {name=lWL2 lab=WL}
C {devices/lab_wire.sym} 560 -60 0 0 {name=lAVSS2 lab=VSS}
