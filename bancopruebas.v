//++++++++++BANCO PRUEBAS +++++++++++++++


`timescale 	1ns	/ 100ps

`include "Probador.v"

 // Testbench

module BancoPruebas;

    parameter BUS_SIZE = 16;
	parameter WORD_SIZE = 4;

	parameter WORD_NUM = BUS_SIZE / WORD_SIZE;
	
    wire clk, reset;

	//Entradas_2bits
	wire [15:0] data_in, data_out, data_out_estructural;
    wire [3:0] control_out, control_out_estructural;
    

	bus_control	bus(/*AUTOINST*/
			    // Outputs
			    .data_out		(data_out[BUS_SIZE-1:0]),
			    .control_out	(control_out[WORD_NUM-1:0]),
			    // Inputs
			    .clk		(clk),
			    .reset		(reset),
			    .data_in		(data_in[BUS_SIZE-1:0]));

	Probador 	prob(/*AUTOINST*/
			     // Outputs
			     .clk		(clk),
			     .reset		(reset),
			     .data_in		(data_in[15:0]),
			     // Inputs
			     .data_out		(data_out[15:0]),
			     .data_out_estructural(data_out_estructural[15:0]),
			     .control_out	(control_out[3:0]),
			     .control_out_estructural(control_out_estructural[3:0]));

    bus_control_estructural	bus_estructural(/*AUTOINST*/
						// Outputs
						.control_out_estructural(control_out_estructural[3:0]),
						.data_out_estructural(data_out_estructural[15:0]),
						// Inputs
						.clk		(clk),
						.data_in	(data_in[15:0]),
						.reset		(reset));

endmodule
