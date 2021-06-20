BANCO  = bancopruebas.v

all: prueba_buscontrol


prueba_buscontrol:  Probador.v
	@echo ----------------------------------
	@echo Corriendo pruebas del bus control :
	@echo ----------------------------------

	emacs --batch $(BANCO) -f verilog-batch-auto 
	iverilog -o prueba.vvp $(BANCO) bus_control.v
	vvp prueba.vvp
	gtkwave bus_control.vcd