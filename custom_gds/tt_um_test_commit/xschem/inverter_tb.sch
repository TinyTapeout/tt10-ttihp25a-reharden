v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1630 -740 2430 -340 {flags=graph
y1=0
y2=6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3958076e-15
x2=9.9999996e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=4
node=in}
B 2 1630 -1190 2430 -790 {flags=graph
y1=0
y2=6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3958076e-15
x2=9.9999996e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0




color=7
node=out}
N 700 -370 700 -310 { lab=GND}
N 700 -310 820 -310 { lab=GND}
N 820 -370 820 -310 { lab=GND}
N 820 -470 820 -430 { lab=in}
N 700 -650 700 -430 { lab=vdd_hi}
N 820 -310 1060 -310 { lab=GND}
N 700 -310 700 -290 { lab=GND}
N 1060 -310 1480 -310 { lab=GND}
N 1480 -490 1480 -430 { lab=out}
N 1380 -490 1480 -490 { lab=out}
N 1380 -510 1380 -490 {lab=out}
N 820 -470 860 -470 {lab=in}
N 1190 -480 1190 -310 {lab=GND}
N 1190 -510 1200 -510 {lab=GND}
N 1200 -510 1200 -480 {lab=GND}
N 1190 -480 1200 -480 {lab=GND}
N 860 -470 990 -470 {lab=in}
N 990 -550 990 -470 {lab=in}
N 990 -550 1150 -550 {lab=in}
N 1150 -600 1150 -550 {lab=in}
N 1150 -550 1150 -510 {lab=in}
N 1190 -650 1190 -630 {lab=vdd_hi}
N 1050 -650 1190 -650 {lab=vdd_hi}
N 700 -650 1050 -650 {lab=vdd_hi}
N 1190 -570 1190 -540 {lab=out}
N 1190 -560 1380 -560 {lab=out}
N 1380 -560 1380 -510 {lab=out}
N 1190 -600 1200 -600 {lab=vdd_hi}
N 1200 -630 1200 -600 {lab=vdd_hi}
N 1190 -630 1200 -630 {lab=vdd_hi}
N 1480 -370 1480 -310 {lab=GND}
C {devices/launcher.sym} 310 -300 0 0 {name=h2 
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/vsource.sym} 700 -400 0 0 {name=V2 value=5
}
C {devices/lab_wire.sym} 770 -650 0 0 {name=l2 lab=vdd_hi}
C {devices/code_shown.sym} 230 -870 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
*set filetype=ascii
*save all

op
tran 0.1n 1u

write tb_mosfet.raw
*exit

.endc
"}
C {devices/lab_wire.sym} 860 -470 0 0 {name=l3 lab=in}
C {devices/vsource.sym} 820 -400 0 0 {name=V5
value1="dc 5 "
value="dc 5 pulse 5 0 0 1n 1n 0.05u 0.1u"}
C {devices/gnd.sym} 700 -290 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1450 -490 0 0 {name=l4 lab=out
}
C {devices/launcher.sym} 520 -300 0 0 {name=h5
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_mosfet.raw tran"
}
C {devices/spice_probe.sym} 840 -650 0 0 {name=p1 attrs=""}
C {devices/spice_probe.sym} 920 -470 0 0 {name=p2 attrs=""}
C {devices/spice_probe.sym} 1480 -490 0 0 {name=p3 attrs=""}
C {devices/code.sym} 240 -530 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1170 -600 0 0 {name=M10
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1170 -510 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1480 -400 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
