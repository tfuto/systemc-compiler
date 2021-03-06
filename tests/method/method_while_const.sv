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
logic c;


//------------------------------------------------------------------------------

A a_mod
(
  .a(a),
  .b(b),
  .c(c)
);

endmodule



//==============================================================================
//
// Module: A (test_while_const.cpp:254:5)
//
module A // "b_mod.a_mod"
(
    input logic a,
    output logic b,
    output logic c
);

// SystemC signals

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1 (test_while_const.cpp:43:5) 

always_comb 
begin : while_with_binary_oper1     // test_while_const.cpp:43:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 1;
    b2 = 0;
    k_1 = 0;
    while (b1 || b2)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1a (test_while_const.cpp:57:5) 

always_comb 
begin : while_with_binary_oper1a     // test_while_const.cpp:57:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 0;
    b2 = 1;
    k_1 = 0;
    while (b1 || b2)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1b (test_while_const.cpp:71:5) 

always_comb 
begin : while_with_binary_oper1b     // test_while_const.cpp:71:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 0;
    b2 = 0;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1c (test_while_const.cpp:83:5) 

always_comb 
begin : while_with_binary_oper1c     // test_while_const.cpp:83:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 1;
    b2 = 1;
    k_1 = 0;
    while (b1 || b2)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1d (test_while_const.cpp:97:5) 

always_comb 
begin : while_with_binary_oper1d     // test_while_const.cpp:97:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 0;
    b2 = 1;
    b3 = 0;
    k_1 = 0;
    while (b1 || b2 || b3)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = 0;
        b3 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1e (test_while_const.cpp:112:5) 

always_comb 
begin : while_with_binary_oper1e     // test_while_const.cpp:112:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 0;
    b2 = 0;
    b3 = 0;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper1f (test_while_const.cpp:124:5) 

always_comb 
begin : while_with_binary_oper1f     // test_while_const.cpp:124:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 0;
    b2 = 0;
    b3 = 1;
    k_1 = 0;
    while (1)
    begin
        k_1 = 1;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2 (test_while_const.cpp:135:5) 

always_comb 
begin : while_with_binary_oper2     // test_while_const.cpp:135:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 1;
    b2 = 1;
    k_1 = 0;
    while (b1 && b2)
    begin
        k_1 = 1;
        b1 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2a (test_while_const.cpp:147:5) 

always_comb 
begin : while_with_binary_oper2a     // test_while_const.cpp:147:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 0;
    b2 = 1;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2b (test_while_const.cpp:159:5) 

always_comb 
begin : while_with_binary_oper2b     // test_while_const.cpp:159:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 0;
    b2 = 0;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2c (test_while_const.cpp:171:5) 

always_comb 
begin : while_with_binary_oper2c     // test_while_const.cpp:171:5
    logic b1;
    logic b2;
    integer k_1;
    b1 = 1;
    b2 = 1;
    k_1 = 0;
    while (b1 && b2)
    begin
        k_1 = 1;
        b1 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2d (test_while_const.cpp:183:5) 

always_comb 
begin : while_with_binary_oper2d     // test_while_const.cpp:183:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 0;
    b3 = 1;
    k_1 = 0;
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2e (test_while_const.cpp:194:5) 

always_comb 
begin : while_with_binary_oper2e     // test_while_const.cpp:194:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    k_1 = 0;
    while (b1 && b2 && b3)
    begin
        k_1 = 1;
        b2 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper2f (test_while_const.cpp:206:5) 

always_comb 
begin : while_with_binary_oper2f     // test_while_const.cpp:206:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    k_1 = 0;
    while (1)
    begin
        k_1 = 1;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper3 (test_while_const.cpp:217:5) 

always_comb 
begin : while_with_binary_oper3     // test_while_const.cpp:217:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    k_1 = 0;
    while (b1 && 1)
    begin
        k_1 = 1;
        b1 = 0;
    end
    k_1 = 2;
end

//------------------------------------------------------------------------------
// Method process: while_with_binary_oper4 (test_while_const.cpp:230:5) 

always_comb 
begin : while_with_binary_oper4     // test_while_const.cpp:230:5
    logic b1;
    logic b2;
    logic b3;
    integer k_1;
    b1 = 1;
    b2 = 1;
    b3 = 1;
    k_1 = 0;
    while ((b1 && b2) || b3)
    begin
        k_1 = 1;
        b1 = 0;
        b2 = 0;
        b3 = 0;
    end
    k_1 = 2;
end

endmodule


