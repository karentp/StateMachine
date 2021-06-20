BANCO  = bancopruebas.v
YS1 = Y1.ys

all: prueba_buscontrol


prueba_buscontrol:  Probador.v
	@echo ----------------------------------
	@echo Corriendo Sintesis Completa para el Mux 2x1: 
	@echo ----------------------------------
	yosys $(YS1)
	@echo ----------------------------------
	@echo Cambiando nombre al module para evitar problemas:
	@echo ----------------------------------
	sed -i 's/bus_control/bus_control_estructural/' bus_control_estructural.v
	sed -i 's/data_out/data_out_estructural/' bus_control_estructural.v
	sed -i 's/.data_out_estructural(data_out/.data_out_estructural(data_out_estructural/' bus_control_estructural.v
	sed -i 's/control_out/control_out_estructural/' bus_control_estructural.v
	sed -i 's/.control_out_estructural(control_out/.control_out_estructural(control_out_estructural/' bus_control_estructural.v

	@echo ----------------------------------
	@echo Corriendo pruebas del bus control :
	@echo ----------------------------------
	emacs --batch $(BANCO) -f verilog-batch-auto 
	iverilog -o prueba.vvp $(BANCO) cmos_cells.v bus_control.v bus_control_estructural.v
	vvp prueba.vvp
	gtkwave bus_control.vcd