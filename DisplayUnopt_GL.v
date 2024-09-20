//========================================================================
// DisplayUnopt_GL
//========================================================================

`ifndef DISPLAY_UNOPT_GL_V
`define DISPLAY_UNOPT_GL_V

`include "BinaryToBinCodedDec_GL.v"
`include "BinaryToSevenSegUnopt_GL.v"

module DisplayUnopt_GL
(
  input  wire [4:0] in,
  output wire [6:0] seg_tens,
  output wire [6:0] seg_ones
);

wire [3:0] out_tens;
wire [3:0] out_ones;

BinaryToBinCodedDec_GL bcd
(
  .in (in),
  .tens (out_tens),
  .ones (out_ones)
);

BinaryToSevenSegUnopt_GL tens
(
  .in (out_tens),
  .seg (seg_tens)
);

BinaryToSevenSegUnopt_GL ones
(
  .in (out_ones),
  .seg (seg_ones)
);

endmodule

`endif /* DISPLAY_UNOPT_GL_V */

