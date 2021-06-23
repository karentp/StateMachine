BANCO  = bancopruebas.v
YS1 = Y1.ys
YS2 = Y2.ys

all: ver_sistema_completo


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
	iverilog -o prueba.vvp $(BANCO) cmos_cells.v bus_control.v bus_control_estructural.v state_machine.v state_machine_estructural.v
	vvp prueba.vvp

prueba_statemachine: 
	@echo ----------------------------------
	@echo Corriendo Sintesis Completa para la Maquina de Estados: 
	@echo ----------------------------------
	yosys $(YS2)
	@echo ----------------------------------
	@echo Cambiando nombre al module para evitar problemas:
	@echo ----------------------------------
	sed -i 's/state/state_estructural/' state_machine_estructural.v
	sed -i 's/state,/state_estructural,/' state_machine_estructural.v
	sed -i 's/state_machine/state_machine_estructural/' state_machine_estructural.v
	sed -i 's/state_estructural_machine/state_machine_estructural/' state_machine_estructural.v
	sed -i 's/error/error_estructural/' state_machine_estructural.v
	sed -i 's/next_error,/next_error_estructural,/' state_machine_estructural.v
	sed -i 's/next_state)/next_state_estructural)/' state_machine_estructural.v
	sed -i 's/next_state,/next_state_estructural,/' state_machine_estructural.v
	

	
	@echo ----------------------------------
	@echo Corriendo pruebas para la maquina de estado :
	@echo ----------------------------------
	emacs --batch $(BANCO) -f verilog-batch-auto 
	iverilog -o prueba.vvp $(BANCO) cmos_cells.v bus_control.v bus_control_estructural.v state_machine.v state_machine_estructural.v
	vvp prueba.vvp

ver_gtkwave_parametrizado:
	$(MAKE) prueba_buscontrol
	gtkwave bus_control.vcd PruebasMuxParametrizado.gtkw

ver_gtkwave_maquina_estado:
	$(MAKE) prueba_statemachine
	gtkwave bus_control.vcd PruebasMaquina.gtkw

ver_sistema_completo:
	$(MAKE) prueba_statemachine
	$(MAKE) prueba_buscontrol
	gtkwave bus_control.vcd SistemaCompleto.gtkw