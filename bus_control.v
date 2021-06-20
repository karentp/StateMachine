`include "Word_Managing.v"

module bus_control #(

	parameter BUS_SIZE = 16,
	parameter WORD_SIZE = 4,

	parameter WORD_NUM = BUS_SIZE / WORD_SIZE
	)
    
    (
	input clk,
	input reset,
	input [BUS_SIZE-1:0] data_in,
	output  [BUS_SIZE-1:0] data_out,
    output  [WORD_NUM-1:0] control_out
    );

    reg word_to_operate;
    reg inicio;

    genvar i;
    generate
        for (i=0; i < WORD_NUM; i=i+1) begin 

            Word_Managing #(
                .BUS_SIZE(BUS_SIZE),
                .WORD_SIZE(WORD_SIZE)

            ) word_managing_for (
                .clk(clk),
                .reset(reset),
                .word_to_operate(data_in[(i*WORD_SIZE)+(WORD_SIZE-1):(i*WORD_SIZE)]),
                .control_out(control_out[i]),
                .data_out(data_out[(BUS_SIZE-1)-(i*WORD_SIZE):(BUS_SIZE-1)-(i*WORD_SIZE+(WORD_SIZE-1))])
            );
            
          
        end
    endgenerate

endmodule