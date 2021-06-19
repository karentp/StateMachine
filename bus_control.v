
module bus_control #(

	parameter BUS_SIZE = 16,
	parameter WORD_SIZE = 4,

	parameter WORD_NUM = BUS_SIZE / WORD_SIZE,
	)
    
    (
	input clk,
	input reset,
	input [BUS_SIZE-1:0] data_in,
	output [BUS_SIZE-1:0] data_out
    output [WORD_NUM-1:0] control_out
    );

    reg word_to_operate;
    reg inicio;

    genvar i;
    generate
        for (i=0; i < WORD_NUM-1; i=i+1) begin 

            word_to_operate = data_in[(i*WORD_SIZE)+(WORD_SIZE-1):i*WORD_SIZE]
            //HACER bitwise or de cada cajita

            control_out[i] // aqui tiene que ir el resultado del bitwise or
            
            //Invirtiendo la palabra
            data_out[(BUS_SIZE-1)-(i*WORD_SIZE):(BUS_SIZE-1)-(i*WORD_SIZE+(WORD_SIZE-1))]
            
        end
    endgenerate

endmodule