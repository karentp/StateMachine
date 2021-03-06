/* Generated by Yosys 0.9 (git sha1 1979e0b1, i686-w64-mingw32.static-g++ 5.5.0 -Os) */

(* dynports =  1  *)
(* src = "Word_Managing.v:2" *)
module \$paramod\Word_Managing\BUS_SIZE=16\WORD_SIZE=4 (clk, reset, word_to_operate, data_out_estructural, control_out_estructural);
  wire _0_;
  wire _1_;
  (* src = "Word_Managing.v:11" *)
  input clk;
  (* src = "Word_Managing.v:15" *)
  output control_out_estructural;
  (* src = "Word_Managing.v:14" *)
  output [3:0] data_out_estructural;
  (* src = "Word_Managing.v:12" *)
  input reset;
  (* src = "Word_Managing.v:13" *)
  input [3:0] word_to_operate;
  NOR _2_ (
    .A(word_to_operate[0]),
    .B(word_to_operate[1]),
    .Y(_0_)
  );
  NOR _3_ (
    .A(word_to_operate[2]),
    .B(word_to_operate[3]),
    .Y(_1_)
  );
  NAND _4_ (
    .A(_0_),
    .B(_1_),
    .Y(control_out_estructural)
  );
  assign data_out_estructural = word_to_operate;
endmodule

(* dynports =  1  *)
(* top =  1  *)
(* src = "bus_control_estructural.v:3" *)
module bus_control_estructural(clk, reset, data_in, data_out_estructural, control_out_estructural);
  (* src = "bus_control_estructural.v:12" *)
  input clk;
  (* src = "bus_control_estructural.v:16" *)
  output [3:0] control_out_estructural;
  (* src = "bus_control_estructural.v:14" *)
  input [15:0] data_in;
  (* src = "bus_control_estructural.v:15" *)
  output [15:0] data_out_estructural;
  (* src = "bus_control_estructural.v:13" *)
  input reset;
  (* src = "bus_control_estructural.v:26" *)
  \$paramod\Word_Managing\BUS_SIZE=16\WORD_SIZE=4  _0_ (
    .clk(clk),
    .control_out_estructural(control_out_estructural[0]),
    .data_out_estructural(data_out_estructural[15:12]),
    .reset(reset),
    .word_to_operate(data_in[3:0])
  );
  (* src = "bus_control_estructural.v:26" *)
  \$paramod\Word_Managing\BUS_SIZE=16\WORD_SIZE=4  _1_ (
    .clk(clk),
    .control_out_estructural(control_out_estructural[1]),
    .data_out_estructural(data_out_estructural[11:8]),
    .reset(reset),
    .word_to_operate(data_in[7:4])
  );
  (* src = "bus_control_estructural.v:26" *)
  \$paramod\Word_Managing\BUS_SIZE=16\WORD_SIZE=4  _2_ (
    .clk(clk),
    .control_out_estructural(control_out_estructural[2]),
    .data_out_estructural(data_out_estructural[7:4]),
    .reset(reset),
    .word_to_operate(data_in[11:8])
  );
  (* src = "bus_control_estructural.v:26" *)
  \$paramod\Word_Managing\BUS_SIZE=16\WORD_SIZE=4  _3_ (
    .clk(clk),
    .control_out_estructural(control_out_estructural[3]),
    .data_out_estructural(data_out_estructural[3:0]),
    .reset(reset),
    .word_to_operate(data_in[15:12])
  );
endmodule
