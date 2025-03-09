https://vlsiarch.ecen.okstate.edu/VLSI/magic/magref.html
shell:
	paint <layer> # paints the current cell with a layer e.g m1, meta1, poly1, ...
	drc why 
	drc find
	what
	def read # reads .def file. For Tiny Tapeout that gives pins Power Lines etc.
	extract all # creates netlist but safes as magic internal file format ".ext.:
	ext2spice <filename>
	quit
	exit # dont use apparently buggy not always cleaning (at least 14 years ago)
	box # gives information about current box (e.g. size, position)
	
	
	
shortcut:
	s # select
	m # move
	x # expand
	a # select everything inside box
	shift + a # select everything inside box and adds to current selection
	space # change between modes (wiring, netlist, pick, box	)
	
