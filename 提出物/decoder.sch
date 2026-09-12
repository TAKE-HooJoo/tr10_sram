v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -1060 160 -1060 {lab=VDD}
N 120 -1020 160 -1020 {lab=VSS}
N 180 -440 210 -440 {lab=A0}
N 180 -440 180 -310 {lab=A0}
N 180 -310 210 -310 {lab=A0}
N 250 -410 250 -340 {lab=A0B}
N 250 -280 250 -200 {lab=VSS}
N 250 -560 250 -470 {lab=VDD}
N 250 -370 380 -370 {lab=A0B}
N 80 -370 180 -370 {lab=A0}
N 250 -440 300 -440 {lab=VDD}
N 300 -490 300 -440 {lab=VDD}
N 250 -490 300 -490 {lab=VDD}
N 250 -310 310 -310 {lab=VSS}
N 310 -310 310 -250 {lab=VSS}
N 250 -250 310 -250 {lab=VSS}
N 630 -1090 660 -1090 {lab=WLE}
N 780 -790 810 -790 {lab=WLE}
N 850 -760 850 -680 {lab=VSS}
N 700 -1210 700 -1120 {lab=VDD}
N 700 -1090 750 -1090 {lab=VDD}
N 750 -1140 750 -1090 {lab=VDD}
N 700 -1140 750 -1140 {lab=VDD}
N 850 -790 910 -790 {lab=VSS}
N 910 -790 910 -730 {lab=VSS}
N 850 -730 910 -730 {lab=VSS}
N 780 -910 810 -910 {lab=A0B}
N 850 -910 910 -910 {lab=VSS}
N 850 -880 850 -820 {lab=#net1}
N 900 -1090 930 -1090 {lab=A0B}
N 970 -1210 970 -1120 {lab=VDD}
N 970 -1090 1020 -1090 {lab=VDD}
N 1020 -1140 1020 -1090 {lab=VDD}
N 970 -1140 1020 -1140 {lab=VDD}
N 700 -1060 700 -1020 {lab=#net2}
N 700 -1020 970 -1020 {lab=#net2}
N 970 -1060 970 -1020 {lab=#net2}
N 850 -1020 850 -940 {lab=#net2}
N 1090 -1050 1120 -1050 {lab=#net2}
N 1090 -1050 1090 -920 {lab=#net2}
N 1090 -920 1120 -920 {lab=#net2}
N 1160 -1020 1160 -950 {lab=WL0}
N 1160 -890 1160 -810 {lab=VSS}
N 1160 -1170 1160 -1080 {lab=VDD}
N 1160 -980 1290 -980 {lab=WL0}
N 1160 -1050 1210 -1050 {lab=VDD}
N 1210 -1100 1210 -1050 {lab=VDD}
N 1160 -1100 1210 -1100 {lab=VDD}
N 1160 -920 1220 -920 {lab=VSS}
N 1220 -920 1220 -860 {lab=VSS}
N 1160 -860 1220 -860 {lab=VSS}
N 850 -980 1090 -980 {lab=#net2}
N 630 -490 660 -490 {lab=WLE}
N 780 -190 810 -190 {lab=WLE}
N 850 -160 850 -80 {lab=VSS}
N 700 -610 700 -520 {lab=VDD}
N 700 -490 750 -490 {lab=VDD}
N 750 -540 750 -490 {lab=VDD}
N 700 -540 750 -540 {lab=VDD}
N 850 -190 910 -190 {lab=VSS}
N 910 -190 910 -130 {lab=VSS}
N 850 -130 910 -130 {lab=VSS}
N 780 -310 810 -310 {lab=A0}
N 850 -310 910 -310 {lab=#net3}
N 850 -280 850 -220 {lab=#net4}
N 900 -490 930 -490 {lab=A0}
N 970 -610 970 -520 {lab=VDD}
N 970 -490 1020 -490 {lab=VDD}
N 1020 -540 1020 -490 {lab=VDD}
N 970 -540 1020 -540 {lab=VDD}
N 700 -460 700 -420 {lab=#net5}
N 700 -420 970 -420 {lab=#net5}
N 970 -460 970 -420 {lab=#net5}
N 850 -420 850 -340 {lab=#net5}
N 1090 -450 1120 -450 {lab=#net5}
N 1090 -450 1090 -320 {lab=#net5}
N 1090 -320 1120 -320 {lab=#net5}
N 1160 -420 1160 -350 {lab=WL1}
N 1160 -290 1160 -210 {lab=VSS}
N 1160 -570 1160 -480 {lab=VDD}
N 1160 -380 1290 -380 {lab=WL1}
N 1160 -450 1210 -450 {lab=VDD}
N 1210 -500 1210 -450 {lab=VDD}
N 1160 -500 1210 -500 {lab=VDD}
N 1160 -320 1220 -320 {lab=VSS}
N 1220 -320 1220 -260 {lab=VSS}
N 1160 -260 1220 -260 {lab=VSS}
N 850 -380 1090 -380 {lab=#net5}
N 120 -960 180 -960 {lab=WLE}
N 120 -890 180 -890 {lab=A0}
C {devices/iopin.sym} 160 -1060 0 0 {name=p6 lab=VDD}
C {devices/iopin.sym} 160 -1020 0 0 {name=p7 lab=VSS}
C {devices/lab_pin.sym} 120 -1060 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 120 -1020 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {TR-1umLIB/MP.sym} 210 -440 0 0 {name=XM7
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
C {TR-1umLIB/MN.sym} 210 -310 0 0 {name=XM8
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
C {devices/lab_pin.sym} 250 -560 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 250 -200 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {TR-1umLIB/MP.sym} 660 -1090 0 0 {name=XM9
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
C {TR-1umLIB/MN.sym} 810 -790 0 0 {name=XM10
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
C {devices/ipin.sym} 120 -960 0 0 {name=p14 lab=WLE}
C {devices/lab_pin.sym} 700 -1210 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 850 -680 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {TR-1umLIB/MN.sym} 810 -910 0 0 {name=XM11
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
C {TR-1umLIB/MP.sym} 930 -1090 0 0 {name=XM12
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
C {devices/lab_pin.sym} 970 -1210 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 780 -790 0 0 {name=p23 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 630 -1090 0 0 {name=p24 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 900 -1090 0 0 {name=p25 sig_type=std_logic lab=A0B}
C {devices/lab_pin.sym} 780 -910 0 0 {name=p26 sig_type=std_logic lab=A0B}
C {TR-1umLIB/MP.sym} 1120 -1050 0 0 {name=XM13
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
C {TR-1umLIB/MN.sym} 1120 -920 0 0 {name=XM14
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
C {devices/opin.sym} 1290 -980 0 0 {name=p27 lab=WL0}
C {devices/lab_pin.sym} 1160 -1170 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1160 -810 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {TR-1umLIB/MP.sym} 660 -490 0 0 {name=XM15
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
C {TR-1umLIB/MN.sym} 810 -190 0 0 {name=XM16
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
C {devices/lab_pin.sym} 700 -610 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 850 -80 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {TR-1umLIB/MN.sym} 810 -310 0 0 {name=XM17
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
C {TR-1umLIB/MP.sym} 930 -490 0 0 {name=XM18
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
C {devices/lab_pin.sym} 970 -610 0 0 {name=p32 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 780 -190 0 0 {name=p33 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 630 -490 0 0 {name=p34 sig_type=std_logic lab=WLE}
C {devices/lab_pin.sym} 900 -490 0 0 {name=p35 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 780 -310 0 0 {name=p36 sig_type=std_logic lab=A0}
C {TR-1umLIB/MP.sym} 1120 -450 0 0 {name=XM19
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
C {TR-1umLIB/MN.sym} 1120 -320 0 0 {name=XM20
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
C {devices/opin.sym} 1290 -380 0 0 {name=p37 lab=WL1}
C {devices/lab_pin.sym} 1160 -570 0 0 {name=p38 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1160 -210 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 180 -960 0 1 {name=p40 sig_type=std_logic lab=WLE}
C {devices/ipin.sym} 120 -890 0 0 {name=p1 lab=A0}
C {devices/lab_pin.sym} 180 -890 0 1 {name=p2 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 80 -370 0 0 {name=p3 sig_type=std_logic lab=A0}
C {devices/lab_pin.sym} 380 -370 0 1 {name=p4 sig_type=std_logic lab=A0B}
C {devices/lab_pin.sym} 910 -910 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 910 -310 0 1 {name=p9 sig_type=std_logic lab=VSS}
