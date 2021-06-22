//++++++++++BANCO PRUEBAS +++++++++++++++


`timescale 	1ns	/ 100ps

`include "Probador.v"

 // Testbench

module BancoPruebas;

    parameter BUS_SIZE = 16;
	parameter WORD_SIZE = 4;

	parameter WORD_NUM = BUS_SIZE / WORD_SIZE;
	
    wire clk, reset, error, error_estructural, next_error;

	//Entradas_2bits
	wire [15:0] data_in, data_out, data_out_estructural;
    wire [3:0] control_out, control_out_estructural;
    wire [4:0] state, next_state, state_estructural, next_state_estructural;
    

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
			     .control_out_estructural(control_out_estructural[3:0]),
			     .error		(error),
			     .error_estructural	(error_estructural),
			     .next_error	(next_error),
			     .state		(state[4:0]),
			     .next_state	(next_state[4:0]),
			     .state_estructural	(state_estructural[4:0]),
			     .next_state_estructural(next_state_estructural[4:0]));

    bus_control_estructural	bus_estructural(/*AUTOINST*/
						// Outputs
						.control_out_estructural(control_out_estructural[3:0]),
						.data_out_estructural(data_out_estructural[15:0]),
						// Inputs
						.clk		(clk),
						.data_in	(data_in[15:0]),
						.reset		(reset));
    state_machine machine(/*AUTOINST*/
			  // Outputs
			  .error		(error),
			  .next_error		(next_error),
			  .state		(state[4:0]),
			  .next_state		(next_state[4:0]),
			  // Inputs
			  .clk			(clk),
			  .reset		(reset),
			  .data_in		(data_in[BUS_SIZE-1:0]));
    
    state_machine_estructural machine_estructural(/*AUTOINST*/
						  // Outputs
						  .error_estructural	(error_estructural),
						  .next_error_estructural(next_error_estructural),
						  .next_state_estructural(next_state_estructural[4:0]),
						  .state_estructural	(state_estructural[4:0]),
						  // Inputs
						  .clk			(clk),
						  .data_in		(data_in[15:0]),
						  .reset		(reset));

endmodule
