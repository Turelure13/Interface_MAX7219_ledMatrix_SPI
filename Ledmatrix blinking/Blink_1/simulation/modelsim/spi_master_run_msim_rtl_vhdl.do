transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Semi/Desktop/DE0Nano_VHDL-master/src/ADC_LEDMatrix/spi_master.vhdl}

