//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: A ()
//
module A // "test_top.a_mod"
(
    input logic clk,
    input logic rstn,
    input logic nrpi,
    output logic nrpo
);

// SystemC signals
logic signed [31:0] o;
logic signed [31:0] r;
logic signed [31:0] s;
logic signed [31:0] s_d;
logic signed [31:0] s_d2;
logic signed [31:0] s_d3;
logic [7:0] u;
logic [7:0] up;
logic signed [31:0] r0;
logic signed [31:0] reg_v;
logic nrs;
logic nrs2;
logic nrs3;
logic nrarr[3];
logic nrptr;
logic signed [31:0] ps;
logic signed [31:0] sarr[3];
logic [2:0] psarr[3];

// C++ data variables
localparam logic [7:0] marr[3] = '{ 'd1, 'd2, 'd3 };
localparam logic arr[3] = '{ 1, 1, 0 };

//------------------------------------------------------------------------------
// Clocked THREAD: test_thread (test_sva_generate_mod.cpp:136:5) 

// Thread-local variables
logic signed [31:0] s_next;
logic signed [31:0] s_d_next;
logic signed [31:0] s_d2_next;
logic signed [31:0] s_d3_next;

// Next-state combinational logic
always_comb begin : test_thread_comb     // test_sva_generate_mod.cpp:136:5
    test_thread_func;
end
function void test_thread_func;
    s_d2_next = s_d2;
    s_d3_next = s_d3;
    s_d_next = s_d;
    s_next = s;
    s_d_next = s;
    s_d2_next = s_d;
    s_d3_next = s_d2;
    s_next = !(|s);
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : test_thread_ff
    if ( ~rstn ) begin
        nrs <= 0;
        s <= 0;
        s_d <= 0;
        s_d2 <= 0;
        s_d3 <= 0;
    end
    else begin
        s <= s_next;
        s_d <= s_d_next;
        s_d2 <= s_d2_next;
        s_d3 <= s_d3_next;
    end
end

`ifndef INTEL_SVA_OFF
sctAssertLine80 : assert property (
    @(posedge clk) |s |-> |s );
sctAssertLine81 : assert property (
    @(posedge clk) |s |=> |s_d );
sctAssertLine82 : assert property (
    @(posedge clk) |s |-> ##[1:5] |s_d );
sctAssertLine83 : assert property (
    @(posedge clk) |s |-> ##3 |s_d3 );
sctAssertLine86 : assert property (
    @(posedge clk) |s || |s_d |=> |s_d2 && |s_d3 );
sctAssertLine87 : assert property (
    @(posedge clk) m + 1 == 2 || 1 |=> mm - marr[1] > 3 );
sctAssertLine88 : assert property (
    @(posedge clk) m % 2 != 2 || mm == s |=> |marr[2] );
sctAssertLine91 : assert property (
    @(posedge clk) u[1] |-> |s );
sctAssertLine92 : assert property (
    @(posedge clk) up[2] |-> |s );
sctAssertLine93 : assert property (
    @(posedge clk) |u[2 : 1] |-> |s );
sctAssertLine94 : assert property (
    @(posedge clk) |up[5 : 3] |-> |s );
sctAssertLine97 : assert property (
    @(posedge clk) nrpi |=> |r0 && nrpo );
sctAssertLine98 : assert property (
    @(posedge clk) nrs |-> nrs );
sctAssertLine99 : assert property (
    @(posedge clk) |r0 || nrs2 |-> !(|r0) && nrs3 );
sctAssertLine100 : assert property (
    @(posedge clk) 1 || nrs2 |-> !1 && nrs3 );
sctAssertLine103 : assert property (
    @(posedge clk) s == 1 |-> ##3 |s_d3 );
sctAssertLine104 : assert property (
    @(posedge clk) |ps |-> ##[1:2] |s || |s );
sctAssertLine107 : assert property (
    @(posedge clk) arr[1] |=> |s );
sctAssertLine108 : assert property (
    @(posedge clk) |sarr[2] |-> |sarr[0] );
sctAssertLine109 : assert property (
    @(posedge clk) |psarr[1] |=> |sarr[2] );
sctAssertLine113 : assert property (
    @(posedge clk) arr[i] |=> |s );
sctAssertLine114 : assert property (
    @(posedge clk) |sarr[1 + i] |-> |(arr[0] + i) );
sctAssertLine115 : assert property (
    @(posedge clk) |psarr[1] |=> |psarr[2 + i] );
sctAssertLine118 : assert property (
    @(posedge clk) |s |=> |s_d || |o );
sctAssertLine119 : assert property (
    @(posedge clk) |o |-> |o );
sctAssertLine122 : assert property (
    @(posedge clk) rec_a |-> |(rec_b + 1) );
sctAssertLine125 : assert property (
    @(posedge clk) nrpi |=> nrpo || nrs );
sctAssertLine126 : assert property (
    @(posedge clk) nrarr[1] |=> nrptr );
sctAssertLine127 : assert property (
    @(posedge clk) s == 2 |=> ps != 2 );
sctAssertLine130 : assert property (
    @(posedge clk) |reg_v |=> |r0 || |r );
sctAssertLine133 : assert property (
    @(posedge clk) 1 |-> rstn || !(|s) );
sctAssertLine134 : assert property (
    @(posedge clk) 1 |-> !(|s_d2) || |s );
`endif // INTEL_SVA_OFF

endmodule


