module state_machine #(

	parameter BUS_SIZE = 16,
	parameter WORD_SIZE = 4,

	parameter WORD_NUM = BUS_SIZE / WORD_SIZE
	)(
    input clk,
    input reset,
    input [BUS_SIZE-1:0] data_in,
    output reg error, next_error, 
    output reg [4:0] state, next_state

);

reg  one_begining_not, sequence_not;
reg  [4:0] next_seq, seq_counter;

//Asignacion de estados usando codificacion One-Hot
parameter RESET = 'h1;
parameter FIRSTPKT = 'h2;
parameter REGPKT = 'h4;
parameter F_ERR = 'h8;
parameter SEQ_ERR = 'h16;

always @ (posedge clk) begin

    if (!reset) begin
        state <= RESET;
        error <= 0;

    end
        
    else begin
        state <= next_state;
        error <= next_error;
    end

    if (!reset) begin
        seq_counter <= 0;
    end
    else begin
        seq_counter <= next_seq;
    end

end

always @ (*) begin
    next_error = error;
    next_state = state;
    next_seq = seq_counter;

    if(data_in[BUS_SIZE-1:BUS_SIZE-WORD_SIZE] != (2 ** WORD_SIZE)-1)
        one_begining_not = 1;
    else
        one_begining_not = 0;

    if(data_in[WORD_SIZE-1:0] != next_seq)
        sequence_not = 1;
    else begin
        sequence_not = 0;
        next_seq =  seq_counter + 1;
    end

    

    case(state)
        RESET: begin

            if (one_begining_not)begin
                next_error = 1;
                next_state = F_ERR;
            end
            else begin
                if (sequence_not)begin
                    next_error = 1;
                    next_state = SEQ_ERR;
                end
                else
                    next_state = FIRSTPKT;
            end
        end

        FIRSTPKT: begin
            next_error= 0;
          
            if (one_begining_not)begin
                next_error = 1;
                next_state = F_ERR;
            end
            else begin
                
                if (sequence_not)begin
                    next_error = 1;
                    next_state = SEQ_ERR;
                end
                else begin
                    next_state = REGPKT;             
                end
            end
            
        end

        REGPKT: begin
            
            if (one_begining_not) begin
                next_error = 1;
                next_state = F_ERR;
            end
            else begin
                if (sequence_not) begin
                    next_error = 1;
                    next_state = SEQ_ERR;
                end
                else begin
                    next_state = REGPKT;
                end
            end
        end

        F_ERR: begin
            next_error = 0;
            next_state = FIRSTPKT;
        end

        SEQ_ERR: begin
            next_error = 0;
            next_state = FIRSTPKT;
        end
    endcase
end


endmodule