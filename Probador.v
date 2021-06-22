
module Probador(

    input [15:0] data_out,
    input [15:0] data_out_estructural,
    input [3:0] control_out,
    input [3:0] control_out_estructural,
    input error,
    input error_estructural,
    input next_error,
    input [4:0] state, next_state, state_estructural, next_state_estructural,
    output reg clk,
	output reg reset,
	output reg [15:0] data_in
);


initial begin
	$dumpfile("bus_control.vcd");
	$dumpvars;

    reset <= 1'b0;
	data_in <= 16'h000;
    

    @(posedge clk);	

        reset <= 1'b1;
        data_in <= 16'hFBA0; 


    @(posedge clk);	

        reset <= 1'b1;
        data_in <= 16'hF0A1;

    @(posedge clk);	

        reset <= 1'b1;
        data_in <= 16'hF102;
    
    @(posedge clk);	

        reset <= 1'b1;
        data_in <= 16'hA5D3;
    
    @(posedge clk);	

        reset <= 1'b1;
        data_in <= 16'hF1F0;

    @(posedge clk);	

        reset <= 1'b1;
        data_in <= 16'hFDC9;

    @(posedge clk);

        reset <= 1'b0;
        data_in <= 16'h000;
    
    @(posedge clk);

        reset <= 1'b0;
        data_in <= 16'h000;

	$finish;
end  

    //Valor inicial del reloj para que no sea indeterminado
	initial	clk 	<= 0;	

    //Toggle cada 2*10 nano segundos		
	always	#1 clk 	<= ~clk;

endmodule