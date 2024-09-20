//========================================================================
// BinaryToSevenSegOpt_GL
//========================================================================

`ifndef BINARY_TO_SEVEN_SEG_OPT_GL_V
`define BINARY_TO_SEVEN_SEG_OPT_GL_V

module BinaryToSevenSegOpt_GL
(
  input  wire [3:0] in,
  output wire [6:0] seg
);
assign seg[0] =  ~in[3] & ~in[2] & ~in[1] & in[0]| //1
~in[3] & in[2] & ~in[1] & ~in[0]; //4

assign seg[1] = ~in[3] & in[2] & ~in[1] & in[0]| //5
~in[3] & in[2] & in[1] & ~in[0]; //6

assign seg[2] = ~in[3] & ~in[2] & in[1] & ~in[0]; //2

assign seg[3] = ~in[3] & in[2] & ~in[1] & ~in[0]| //1
~in[3] & in[2] & in[1] & in[0]| //4
~in[2] & ~in[1] & in[0]; //7
//9

assign seg[4] = ~in[3] & in[0]| //1
~in[3] & in[2] & ~in[1]| //3
in[3] & ~in[2] & ~in[1] & in[0]; //9

assign seg[5] = ~in[3] & ~in[2] & in[0]| //1
~in[3] & ~in[2] & in[1]| //2
~in[3] & in[1] & in[0];

assign seg[6] = ~in[3] & ~in[2] & ~in[1]| //0
~in[3] & in[2] & in[1] & in[0]; //7

endmodule

`endif /* BINARY_TO_SEVEN_SEG_OPT_GL_V */
