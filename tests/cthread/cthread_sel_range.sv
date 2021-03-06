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
logic clk;
logic arstn;
logic signed [31:0] in;
logic signed [31:0] out;

//------------------------------------------------------------------------------
// Clocked THREAD: range_select_lhs1 (test_cthread_sel_range.cpp:52:5) 

// Thread-local variables
logic signed [31:0] out_next;
logic [2:0] x;
logic [2:0] x_next;
logic [2:0] a;
logic [2:0] a_next;

// Next-state combinational logic
always_comb begin : range_select_lhs1_comb     // test_cthread_sel_range.cpp:52:5
    range_select_lhs1_func;
end
function void range_select_lhs1_func;
    a_next = a;
    out_next = out;
    x_next = x;
    x_next[1 : 0] = 2;
    a_next[2 : 1] = x_next[1 : 0];
    out_next = x_next[1 : 0] + a_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : range_select_lhs1_ff
    if ( ~arstn ) begin
        out <= 0;
        x <= 0;
        a <= 3;
    end
    else begin
        out <= out_next;
        x <= x_next;
        a <= a_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: range_select_lhs1a (test_cthread_sel_range.cpp:69:5) 

// Thread-local variables
logic signed [31:0] out_next0;
logic [2:0] x0;
logic [2:0] x_next0;

// Next-state combinational logic
always_comb begin : range_select_lhs1a_comb     // test_cthread_sel_range.cpp:69:5
    range_select_lhs1a_func;
end
function void range_select_lhs1a_func;
    out_next0 = out;
    x_next0 = x0;
    x_next0[1 : 0] = 1;
    x_next0[2 : 0] = 5;
    x_next0[2 : 1] = x_next0[1 : 0] <<< 1;
    out_next0 = (x_next0[2 : 1] == in) ? x_next0[2 : 0] + 1 : x_next0[1 : 1] * 2;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : range_select_lhs1a_ff
    if ( ~arstn ) begin
        out <= 0;
        x0 <= 0;
    end
    else begin
        out <= out_next0;
        x0 <= x_next0;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: range_select_lhs2 (test_cthread_sel_range.cpp:84:5) 

// Thread-local variables
logic signed [31:0] out_next1;
logic [3:0] b;
logic [3:0] b_next;

// Next-state combinational logic
always_comb begin : range_select_lhs2_comb     // test_cthread_sel_range.cpp:84:5
    range_select_lhs2_func;
end
function void range_select_lhs2_func;
    b_next = b;
    out_next1 = out;
    b_next[2 : 1] = 1;
    out_next1 = b_next;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : range_select_lhs2_ff
    if ( ~arstn ) begin
        out <= 0;
    end
    else begin
        out <= out_next1;
        b <= b_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: range_select_lhs3 (test_cthread_sel_range.cpp:97:5) 

// Thread-local variables
logic [4:0] c;

// Next-state combinational logic
always_comb begin : range_select_lhs3_comb     // test_cthread_sel_range.cpp:97:5
    range_select_lhs3_func;
end
function void range_select_lhs3_func;
    c = 3;
    c[3 : 0] = 1;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : range_select_lhs3_ff
    if ( ~arstn ) begin
        logic [4:0] c;
        c = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: range_select_lhs4 (test_cthread_sel_range.cpp:110:5) 

// Thread-local variables
logic [5:0] d;
logic [5:0] d_next;

// Next-state combinational logic
always_comb begin : range_select_lhs4_comb     // test_cthread_sel_range.cpp:110:5
    range_select_lhs4_func;
end
function void range_select_lhs4_func;
    d_next = d;
    d_next[3 : 2] = 1;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : range_select_lhs4_ff
    if ( ~arstn ) begin
    end
    else begin
        d <= d_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: range_select_lhs4a (test_cthread_sel_range.cpp:121:5) 

// Thread-local variables
logic signed [31:0] out_next2;
logic [6:0] e;
logic [6:0] e_next;

// Next-state combinational logic
always_comb begin : range_select_lhs4a_comb     // test_cthread_sel_range.cpp:121:5
    range_select_lhs4a_func;
end
function void range_select_lhs4a_func;
    e_next = e;
    out_next2 = out;
    out_next2 = e_next[2 : 0];
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : range_select_lhs4a_ff
    if ( ~arstn ) begin
        out <= 1;
    end
    else begin
        out <= out_next2;
        e <= e_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: range_select_lhs_misc (test_cthread_sel_range.cpp:133:5) 

// Next-state combinational logic
always_comb begin : range_select_lhs_misc_comb     // test_cthread_sel_range.cpp:133:5
    range_select_lhs_misc_func;
end
function void range_select_lhs_misc_func;
    logic [2:0] x;
    x = in;
    if (x[1 : 1])
    begin
        x[2 : 1] = x[1 : 0];
    end
    for (integer i = 0; i < 3; i++)
    begin
        x[i +: 2] = i % 2;
    end
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge arstn) 
begin : range_select_lhs_misc_ff
    if ( ~arstn ) begin
        logic [2:0] x;
        x = 0;
    end
    else begin
    end
end

endmodule


