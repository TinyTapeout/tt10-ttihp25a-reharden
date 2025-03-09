v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 900 -520 900 -450 {lab=Vout}
N 580 -450 580 -360 {lab=Vin}
N 500 -530 580 -530 {lab=Vin}
N 580 -530 580 -450 {lab=Vin}
N 580 -670 580 -590 {lab=Vin}
N 580 -590 580 -530 {lab=Vin}
N 900 -520 1120 -520 {lab=Vout}
N 580 -670 600 -670 {lab=Vin}
N 580 -590 600 -590 {lab=Vin}
N 640 -640 640 -620 {lab=#net1}
N 640 -630 940 -630 {lab=#net1}
N 900 -600 900 -520 {lab=Vout}
N 640 -740 640 -700 {lab=Vdd}
N 640 -720 660 -720 {lab=Vdd}
N 940 -600 960 -600 {lab=Vdd}
N 960 -720 960 -600 {lab=Vdd}
N 660 -720 960 -720 {lab=Vdd}
N 640 -330 640 -320 {lab=Vss}
N 940 -450 960 -450 {lab=Vss}
N 960 -450 960 -400 {lab=Vss}
N 640 -420 640 -390 {lab=#net2}
N 960 -400 960 -380 {lab=Vss}
N 580 -360 600 -360 {lab=Vin}
N 640 -310 750 -310 {lab=Vss}
N 750 -310 960 -310 {lab=Vss}
N 960 -380 960 -310 {lab=Vss}
N 640 -430 640 -420 {lab=#net2}
N 640 -410 940 -410 {lab=#net2}
N 940 -420 940 -410 {lab=#net2}
N 580 -460 600 -460 {lab=Vin}
N 640 -560 640 -490 {lab=Vout}
N 640 -520 900 -520 {lab=Vout}
N 640 -320 640 -310 {lab=Vss}
N 650 -360 650 -310 {lab=Vss}
N 650 -460 650 -360 {lab=Vss}
N 640 -670 650 -670 {lab=Vdd}
N 640 -590 650 -590 {lab=Vdd}
N 650 -670 650 -590 {lab=Vdd}
N 650 -720 650 -670 {lab=Vdd}
N 640 -360 650 -360 {lab=Vss}
N 640 -460 650 -460 {lab=Vss}
N 1120 -520 1180 -520 {lab=Vout}
N 940 -480 960 -480 {lab=Vdd}
N 960 -600 960 -480 {lab=Vdd}
C {ipin.sym} 640 -740 1 0 {name=p1 lab=Vdd}
C {ipin.sym} 640 -310 3 0 {name=p2 lab=Vss}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 620 -670 0 0 {name=M10
L=0.35
W=6
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 620 -590 0 0 {name=M2
L=0.35
W=6
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 920 -600 0 0 {name=M4
L=0.35
W=6
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 620 -460 0 0 {name=M6
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 620 -360 0 0 {name=M1
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 920 -450 0 0 {name=M3
L=0.15
W=2
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {ipin.sym} 500 -530 0 0 {name=p3 lab=Vin}
C {opin.sym} 1180 -520 0 0 {name=p4 lab=Vout}
