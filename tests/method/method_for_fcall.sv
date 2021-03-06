//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.3.7
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: B_top ()
//
module B_top // "b_mod"
(
);

// SystemC signals
logic a;
logic b;


//------------------------------------------------------------------------------

A a_mod
(
  .a(a),
  .b(b)
);

endmodule



//==============================================================================
//
// Module: A (test_for_fcall.cpp:147:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b
);

// SystemC signals

//------------------------------------------------------------------------------
// Method process: func_call_cond (test_for_fcall.cpp:48:5) 

// Process-local variables
logic signed [31:0] k;

always_comb 
begin : func_call_cond     // test_for_fcall.cpp:48:5
    integer i;
    logic TMP_0;
    integer i_1;
    logic TMP_1;
    k = 0;
    i = 0;
    i_1 = i;
    // Call cond() begin
    TMP_0 = i_1 < 2;
    // Call cond() end
    for (; TMP_0; i++)
    begin
        k = k + 1;
        i_1 = i;
        // Call cond() begin
        TMP_0 = i_1 < 2;
        // Call cond() end
    end
end

//------------------------------------------------------------------------------
// Method process: func_call_cond2 (test_for_fcall.cpp:69:5) 

// Process-local variables
logic signed [31:0] k;

always_comb 
begin : func_call_cond2     // test_for_fcall.cpp:69:5
    integer unsigned TMP_0;
    integer unsigned TMP_1;
    k = 0;
    // Call cond2() begin
    TMP_0 = 2;
    // Call cond2() end
    for (integer i = 0; i < TMP_0; i++)
    begin
        k = k + 1;
        // Call cond2() begin
        TMP_0 = 2;
        // Call cond2() end
    end
end

//------------------------------------------------------------------------------
// Method process: func_call_cond3 (test_for_fcall.cpp:81:5) 

// Process-local variables
logic signed [31:0] k;

always_comb 
begin : func_call_cond3     // test_for_fcall.cpp:81:5
    integer TMP_0;
    integer k_1;
    k = 0;
    k_1 = k;
    // Call cond3() begin
    TMP_0 = k_1++;
    // Call cond3() end
end

//------------------------------------------------------------------------------
// Method process: func_call_cond4 (test_for_fcall.cpp:92:5) 

// Process-local variables
logic signed [31:0] k;

always_comb 
begin : func_call_cond4     // test_for_fcall.cpp:92:5
    integer TMP_0;
    integer j;
    integer TMP_1;
    k = 10;
    j = k;
    // Call cond4() begin
    TMP_0 = j + 2;
    // Call cond4() end
    for (integer i = 0; (2 * i) < TMP_0; )
    begin
        k = k - 1;
        i++;
        j = k;
        // Call cond4() begin
        TMP_0 = j + 2;
        // Call cond4() end
    end
end

//------------------------------------------------------------------------------
// Method process: func_call_cond5 (test_for_fcall.cpp:104:5) 

// Process-local variables
logic signed [31:0] k;

always_comb 
begin : func_call_cond5     // test_for_fcall.cpp:104:5
    logic [2:0] i;
    logic TMP_0;
    integer j;
    k = 10;
    i = 0;
    j = k;
    // Call cond5() begin
    TMP_0 = j + 2;
    // Call cond5() end
end

//------------------------------------------------------------------------------
// Method process: func_call_cond7 (test_for_fcall.cpp:128:5) 

// Process-local variables
logic signed [31:0] k;

always_comb 
begin : func_call_cond7     // test_for_fcall.cpp:128:5
    logic [31:0] TMP_0;
    integer j;
    logic [31:0] TMP_1;
    k = 10;
    j = k;
    // Call cond7() begin
    TMP_0 = j + 2;
    // Call cond7() end
    for (logic [31:0] i = 0; (signed'({1'b0, i}) + 2) < TMP_0; )
    begin
        k = k - 1;
        i++;
        j = k;
        // Call cond7() begin
        TMP_0 = j + 2;
        // Call cond7() end
    end
end

endmodule


