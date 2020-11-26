transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {week13.vo}

vlog -vlog01compat -work work +incdir+C:/Users/Angel/Documents/GitHub/Computer-Architecture/week\ 13/ex {C:/Users/Angel/Documents/GitHub/Computer-Architecture/week 13/ex/testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/Angel/Documents/GitHub/Computer-Architecture/week\ 13/ex {C:/Users/Angel/Documents/GitHub/Computer-Architecture/week 13/ex/control_unit.v}

vsim -t 1ps -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  1

add wave *
view structure
view signals
run -all
