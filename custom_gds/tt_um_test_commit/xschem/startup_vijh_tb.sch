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
x1=-4.6239198e-07
x2=9.5376072e-06
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
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.0e-6
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
N 800 -440 800 -380 { lab=GND}
N 800 -380 1040 -380 { lab=GND}
N 1040 -520 1040 -380 { lab=GND}
N 1360 -560 1460 -560 { lab=out}
N 1040 -540 1040 -520 {lab=GND}
N 1040 -540 1060 -540 {lab=GND}
N 800 -560 1060 -560 {lab=in}
N 800 -560 800 -530 {lab=in}
N 800 -530 800 -500 {lab=in}
C {devices/launcher.sym} 310 -300 0 0 {name=h2 
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"}
C {devices/code_shown.sym} 230 -870 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
*set filetype=ascii
*save all

op
tran 0.1n 1u

write tb_startup_vijh.raw
*exit

.endc
"}
C {devices/lab_wire.sym} 800 -530 0 0 {name=l3 lab=in}
C {devices/vsource.sym} 800 -470 0 0 {name=V5
value="PULSE(0 2.4 0ms 0ms 0ms 0ms 2ms)"


}
C {devices/gnd.sym} 800 -380 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 1430 -560 0 0 {name=l4 lab=out
}
C {devices/launcher.sym} 520 -300 0 0 {name=h5
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_startup_vijh.raw tran"
}
C {devices/spice_probe.sym} 890 -560 0 0 {name=p2 attrs=""}
C {devices/spice_probe.sym} 1460 -560 0 0 {name=p3 attrs=""}
C {devices/code.sym} 240 -530 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {startup_vijh.sym} 1210 -550 0 0 {name=x1}
