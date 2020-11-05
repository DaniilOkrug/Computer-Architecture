transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {full_adder.vo}

vlog -vlog01compat -work work +incdir+C:/Users/Angel/Documents/GitHub/Computer-Architecture/week\ 10/ex2 {C:/Users/Angel/Documents/GitHub/Computer-Architecture/week 10/ex2/full_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/Angel/Documents/GitHub/Computer-Architecture/week\ 10/ex2 {C:/Users/Angel/Documents/GitHub/Computer-Architecture/week 10/ex2/full_adder_testbench.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench2

do C:/Users/Angel/Documents/GitHub/Computer-Architecture/week 10/ex2/Tcl_script2.tcl
