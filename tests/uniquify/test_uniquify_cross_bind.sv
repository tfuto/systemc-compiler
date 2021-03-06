//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: top ()
//
module top // "top_inst"
(
);

// SystemC signals
logic signed [31:0] din;
logic signed [31:0] din0;
logic signed [31:0] din2;
logic signed [31:0] din1;


//------------------------------------------------------------------------------

inner inner_0
(
  .din(din)
);

inner inner_1
(
  .din(din0)
);

inner2 inner2_0
(
  .din2(din2)
);

dut dut0
(
  .din(din)
);

dut dut1
(
  .din(din0)
);

dut1 dut2
(
  .din2(din2)
);

inner3 inner3_0
(

);

inner_deep inner_deep_0
(
  .din(din1)
);

dut_deep dut_deep_0
(
  .din(din1)
);

endmodule



//==============================================================================
//
// Module: inner (test_uniquify_cross_bind.cpp:51:5)
//
module inner // "top_inst.inner_0"
(
    input logic signed [31:0] din
);

endmodule



//==============================================================================
//
// Module: inner2 (test_uniquify_cross_bind.cpp:53:5)
//
module inner2 // "top_inst.inner2_0"
(
    input logic signed [31:0] din2
);

endmodule



//==============================================================================
//
// Module: dut (test_uniquify_cross_bind.cpp:55:5)
//
module dut // "top_inst.dut0"
(
    output logic signed [31:0] din
);

// SystemC signals
logic signed [31:0] sig;

assign din = sig;

endmodule



//==============================================================================
//
// Module: dut1 (test_uniquify_cross_bind.cpp:57:5)
//
module dut1 // "top_inst.dut2"
(
    output logic signed [31:0] din2
);

// SystemC signals
logic signed [31:0] sig;

assign din2 = sig;

endmodule



//==============================================================================
//
// Module: inner3 (test_uniquify_cross_bind.cpp:59:5)
//
module inner3 // "top_inst.inner3_0"
(
);

// SystemC signals
logic signed [31:0] din3;


//------------------------------------------------------------------------------

dut2 dut_0
(
  .din3(din3)
);

endmodule



//==============================================================================
//
// Module: dut2 (test_uniquify_cross_bind.cpp:25:5)
//
module dut2 // "top_inst.inner3_0.dut_0"
(
    output logic signed [31:0] din3
);

// SystemC signals
logic signed [31:0] sig;

assign din3 = sig;

endmodule



//==============================================================================
//
// Module: inner_deep (test_uniquify_cross_bind.cpp:61:5)
//
module inner_deep // "top_inst.inner_deep_0"
(
    input logic signed [31:0] din
);


//------------------------------------------------------------------------------

inner inner_0
(
  .din(din)
);

endmodule



//==============================================================================
//
// Module: dut_deep (test_uniquify_cross_bind.cpp:62:5)
//
module dut_deep // "top_inst.dut_deep_0"
(
    output logic signed [31:0] din
);


//------------------------------------------------------------------------------

dut dut_0
(
  .din(din)
);

endmodule


