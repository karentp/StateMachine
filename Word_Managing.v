
module Word_Managing #(

	parameter BUS_SIZE = 16,
	parameter WORD_SIZE = 4,

	parameter WORD_NUM = BUS_SIZE / WORD_SIZE
	)
    
    (
	input clk,
	input reset,
	input [WORD_SIZE-1:0] word_to_operate,
	output reg [WORD_SIZE-1:0] data_out,
    output reg control_out
    );

	always @(*) begin
        control_out = word_to_operate[0] | word_to_operate[1] | word_to_operate[2] | word_to_operate[3];
        data_out = word_to_operate;
    end

endmodule