//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "top"
(
    input logic signed [31:0] in,
    output logic signed [31:0] out
);

// SystemC signals
logic signed [31:0] out0;
logic signed [31:0] in0;


//------------------------------------------------------------------------------

Prod prod
(
  .in(in),
  .out(out0),
  .in0(in0)
);

Cons cons
(
  .out0(out0),
  .in(in0),
  .out(out)
);

endmodule



//==============================================================================
//
// Module: Prod (test_cross_hierarchy_bind2.cpp:39:5)
//
module Prod // "top.prod"
(
    input logic signed [31:0] in,
    output logic signed [31:0] out,
    output logic signed [31:0] in0
);

// SystemC signals
logic signed [31:0] sig;

assign in0 = sig;

//------------------------------------------------------------------------------
// Method process: proc (test_cross_hierarchy_bind2.cpp:15:5) 

always_comb 
begin : proc     // test_cross_hierarchy_bind2.cpp:15:5
    sig = 1;
    out = in;
end

endmodule



//==============================================================================
//
// Module: Cons (test_cross_hierarchy_bind2.cpp:40:5)
//
module Cons // "top.cons"
(
    input logic signed [31:0] out0,
    input logic signed [31:0] in,
    output logic signed [31:0] out
);

// SystemC signals
logic signed [31:0] sig;

assign sig = out0;

//------------------------------------------------------------------------------
// Method process: proc (test_cross_hierarchy_bind2.cpp:32:5) 

always_comb 
begin : proc     // test_cross_hierarchy_bind2.cpp:32:5
    out = in + sig;
end

endmodule


