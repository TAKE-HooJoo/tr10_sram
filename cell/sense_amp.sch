v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 290 -430 290 -350 {lab=BL}
N 470 -430 470 -350 {lab=BLB}
N 410 -460 430 -460 {lab=BL}
N 410 -460 410 -320 {lab=BL}
N 410 -320 430 -320 {lab=BL}
N 330 -460 350 -460 {lab=BLB}
N 350 -460 350 -320 {lab=BLB}
N 330 -320 350 -320 {lab=BLB}
N 290 -410 410 -410 {lab=BL}
N 350 -360 470 -360 {lab=BLB}
N 290 -290 290 -260 {lab=#net1}
N 290 -260 470 -260 {lab=#net1}
N 470 -290 470 -260 {lab=#net1}
N 380 -260 380 -220 {lab=#net1}
N 380 -160 380 -100 {lab=VDD}
N 290 -540 290 -490 {lab=VDD}
N 290 -540 470 -540 {lab=VDD}
N 470 -540 470 -490 {lab=VDD}
N 390 -620 390 -540 {lab=VDD}
N 180 -620 180 -100 {lab=BL}
N 580 -620 580 -100 {lab=BLB}
N 470 -390 580 -390 {lab=BLB}
N 180 -390 290 -390 {lab=BL}
N 280 -190 340 -190 {lab=SAE}
N 240 -460 290 -460 {lab=VDD}
N 240 -500 240 -460 {lab=VDD}
N 240 -500 290 -500 {lab=VDD}
N 470 -460 520 -460 {lab=VDD}
N 520 -500 520 -460 {lab=VDD}
N 470 -500 520 -500 {lab=VDD}
N 210 -320 290 -320 {lab=VDD}
N 210 -320 210 -120 {lab=VDD}
N 210 -120 380 -120 {lab=VDD}
N 470 -320 550 -320 {lab=VDD}
N 550 -320 550 -120 {lab=VDD}
N 380 -120 550 -120 {lab=VDD}
N 380 -190 460 -190 {lab=VDD}
N 460 -190 460 -120 {lab=VDD}
C {TR-1umLIB/MP.sym} 330 -460 0 1 {name=XM1
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
C {TR-1umLIB/MP.sym} 430 -460 0 0 {name=XM2
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
C {TR-1umLIB/MN.sym} 330 -320 0 1 {name=XM3
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
C {TR-1umLIB/MN.sym} 430 -320 0 0 {name=XM4
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
C {TR-1umLIB/MN.sym} 340 -190 0 0 {name=XM5
model=NMOS
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
C {devices/iopin.sym} 390 -620 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 180 -620 0 0 {name=p2 lab=BL}
C {devices/iopin.sym} 580 -620 0 0 {name=p3 lab=BLB}
C {devices/ipin.sym} 280 -190 0 0 {name=p4 lab=SAE}
C {devices/iopin.sym} 380 -100 0 0 {name=p5 lab=VSS
}
