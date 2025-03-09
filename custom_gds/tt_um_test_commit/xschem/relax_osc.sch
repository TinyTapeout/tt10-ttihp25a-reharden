v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 530 -390 530 -280 {lab=Vout}
N 400 -280 530 -280 {lab=Vout}
N 130 -280 340 -280 {lab=#net1}
N 130 -220 230 -220 {lab=Vss}
N 230 -350 230 -220 {lab=Vss}
N 230 -520 230 -390 {lab=Vdd}
N 130 -370 130 -280 {lab=#net1}
N 130 -370 230 -370 {lab=#net1}
N 530 -390 570 -390 {lab=Vout}
C {sky130_fd_pr/res_generic_l1.sym} 370 -280 1 0 {name=R1
W=1
L=3000
model=res_generic_l1
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 130 -250 0 0 {name=C1 model=cap_mim_m3_1 W=100 L=100 MF=1 spiceprefix=X ic=0}
C {ipin.sym} 130 -220 3 0 {name=p2 lab=Vss}
C {schmitt_trigger_ro.sym} 380 -370 0 0 {name=x1}
C {ipin.sym} 230 -520 1 0 {name=p1 lab=Vdd
}
C {opin.sym} 570 -390 0 0 {name=p4 lab=Vout}
