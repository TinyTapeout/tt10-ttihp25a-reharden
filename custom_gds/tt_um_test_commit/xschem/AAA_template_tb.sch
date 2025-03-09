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
N 820 -470 1080 -470 { lab=in}
N 1060 -450 1080 -450 { lab=GND}
N 1060 -450 1060 -310 { lab=GND}
N 1060 -490 1080 -490 { lab=vdd_hi}
N 1060 -650 1060 -490 { lab=vdd_hi}
N 700 -650 1060 -650 { lab=vdd_hi}
N 700 -310 700 -290 { lab=GND}
N 1060 -310 1480 -310 { lab=GND}
N 1480 -370 1480 -310 { lab=GND}
N 1480 -490 1480 -430 { lab=out}
N 1380 -490 1480 -490 { lab=out}
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

write tb_inv.raw
*exit

.endc
"}
C {devices/lab_wire.sym} 860 -470 0 0 {name=l3 lab=in}
C {devices/vsource.sym} 820 -400 0 0 {name=V5
value1="dc 5 "
value="dc 5 pulse 5 0 0 1n 1n 0.05u 0.1u"}
C {inv.sym} 1230 -470 0 0 {name=x1}
C {devices/gnd.sym} 700 -290 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 1480 -400 0 0 {name=C1
m=1
value=10f

footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1450 -490 0 0 {name=l4 lab=out
}
C {devices/launcher.sym} 520 -300 0 0 {name=h5
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_inv.raw tran"
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
C {devices/code.sym} 370 -530 0 0 {name=TT_MODELS_STDCELLS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $PDK_ROOT/$PDK/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
"
spice_ignore=false
place=header}
