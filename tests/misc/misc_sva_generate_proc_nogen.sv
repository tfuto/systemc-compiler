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
    input logic rstn
);

// SystemC signals
logic signed [31:0] s;
logic signed [31:0] s_d;
logic signed [31:0] s_d2;
logic signed [31:0] ps;
logic signed [31:0] sarr[3];
logic [2:0] psarr[3];

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_imm (test_sva_generate_proc_nogen.cpp:102:5) 

// Thread-local variables
logic signed [31:0] ii;
logic signed [31:0] ii_next;
logic sct_assert_imm_PROC_STATE;
logic sct_assert_imm_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_imm_comb     // test_sva_generate_proc_nogen.cpp:102:5
    sct_assert_imm_func;
end
function void sct_assert_imm_func;
    integer mm;
    ii_next = ii;
    sct_assert_imm_PROC_STATE_next = sct_assert_imm_PROC_STATE;
    
    case (sct_assert_imm_PROC_STATE)
        0: begin
            mm = 3;
            ii_next = s;
            sct_assert_imm_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:113:13;
        end
        1: begin
            ii_next = s;
            sct_assert_imm_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:113:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_imm_ff
    if ( ~rstn ) begin
        integer kk;
        integer mm;
        ii <= 0;
        kk = 1;
        mm = 2;
        sct_assert_imm_PROC_STATE <= 0;    // test_sva_generate_proc_nogen.cpp:106:9;
    end
    else begin
        ii <= ii_next;
        sct_assert_imm_PROC_STATE <= sct_assert_imm_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_imm_reg (test_sva_generate_proc_nogen.cpp:118:5) 

// Thread-local variables
logic signed [31:0] kk;
logic signed [31:0] kk_next;
logic signed [31:0] mm;
logic signed [31:0] mm_next;
logic sct_assert_imm_reg_PROC_STATE;
logic sct_assert_imm_reg_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_imm_reg_comb     // test_sva_generate_proc_nogen.cpp:118:5
    sct_assert_imm_reg_func;
end
function void sct_assert_imm_reg_func;
    kk_next = kk;
    mm_next = mm;
    sct_assert_imm_reg_PROC_STATE_next = sct_assert_imm_reg_PROC_STATE;
    
    case (sct_assert_imm_reg_PROC_STATE)
        0: begin
            mm_next = 3;
            sct_assert_imm_reg_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:128:13;
        end
        1: begin
            sct_assert_imm_reg_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:128:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_imm_reg_ff
    if ( ~rstn ) begin
        kk <= 1;
        mm <= 2;
        sct_assert_imm_reg_PROC_STATE <= 0;    // test_sva_generate_proc_nogen.cpp:122:9;
    end
    else begin
        kk <= kk_next;
        mm <= mm_next;
        sct_assert_imm_reg_PROC_STATE <= sct_assert_imm_reg_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_one (test_sva_generate_proc_nogen.cpp:134:5) 

// Next-state combinational logic
always_comb begin : sct_assert_one_comb     // test_sva_generate_proc_nogen.cpp:134:5
    sct_assert_one_func;
end
function void sct_assert_one_func;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_one_ff
    if ( ~rstn ) begin
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_two_same (test_sva_generate_proc_nogen.cpp:145:5) 

// Thread-local variables
logic sct_assert_two_same_PROC_STATE;
logic sct_assert_two_same_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_two_same_comb     // test_sva_generate_proc_nogen.cpp:145:5
    sct_assert_two_same_func;
end
function void sct_assert_two_same_func;
    sct_assert_two_same_PROC_STATE_next = sct_assert_two_same_PROC_STATE;
    
    case (sct_assert_two_same_PROC_STATE)
        0: begin
            sct_assert_two_same_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:152:13;
        end
        1: begin
            sct_assert_two_same_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:152:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_two_same_ff
    if ( ~rstn ) begin
        sct_assert_two_same_PROC_STATE <= 0;    // test_sva_generate_proc_nogen.cpp:148:9;
    end
    else begin
        sct_assert_two_same_PROC_STATE <= sct_assert_two_same_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_several (test_sva_generate_proc_nogen.cpp:157:5) 

// Thread-local variables
logic a;
logic [7:0] b;
logic arr[3];

// Next-state combinational logic
always_comb begin : sct_assert_several_comb     // test_sva_generate_proc_nogen.cpp:157:5
    sct_assert_several_func;
end
function void sct_assert_several_func;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_several_ff
    if ( ~rstn ) begin
        logic a;
        logic [7:0] b;
        logic arr[3];
        a = 0;
        b = 1;
        arr[2] = 1;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_several_multi1 (test_sva_generate_proc_nogen.cpp:171:5) 

// Thread-local variables
logic [1:0] sct_assert_several_multi1_PROC_STATE;
logic [1:0] sct_assert_several_multi1_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_several_multi1_comb     // test_sva_generate_proc_nogen.cpp:171:5
    sct_assert_several_multi1_func;
end
function void sct_assert_several_multi1_func;
    sct_assert_several_multi1_PROC_STATE_next = sct_assert_several_multi1_PROC_STATE;
    
    case (sct_assert_several_multi1_PROC_STATE)
        0: begin
            sct_assert_several_multi1_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:177:13;
        end
        1: begin
            sct_assert_several_multi1_PROC_STATE_next = 2; return;    // test_sva_generate_proc_nogen.cpp:179:13;
        end
        2: begin
            sct_assert_several_multi1_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:177:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_several_multi1_ff
    if ( ~rstn ) begin
        sct_assert_several_multi1_PROC_STATE <= 0;    // test_sva_generate_proc_nogen.cpp:174:9;
    end
    else begin
        sct_assert_several_multi1_PROC_STATE <= sct_assert_several_multi1_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_several_multi2 (test_sva_generate_proc_nogen.cpp:184:5) 

// Thread-local variables
logic [1:0] sct_assert_several_multi2_PROC_STATE;
logic [1:0] sct_assert_several_multi2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_several_multi2_comb     // test_sva_generate_proc_nogen.cpp:184:5
    sct_assert_several_multi2_func;
end
function void sct_assert_several_multi2_func;
    sct_assert_several_multi2_PROC_STATE_next = sct_assert_several_multi2_PROC_STATE;
    
    case (sct_assert_several_multi2_PROC_STATE)
        0: begin
            if (|s)
            begin
                sct_assert_several_multi2_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:191:17;
            end
            sct_assert_several_multi2_PROC_STATE_next = 2; return;    // test_sva_generate_proc_nogen.cpp:194:13;
        end
        1: begin
            sct_assert_several_multi2_PROC_STATE_next = 2; return;    // test_sva_generate_proc_nogen.cpp:194:13;
        end
        2: begin
            if (|s)
            begin
                sct_assert_several_multi2_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:191:17;
            end
            sct_assert_several_multi2_PROC_STATE_next = 2; return;    // test_sva_generate_proc_nogen.cpp:194:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(negedge clk or negedge rstn) 
begin : sct_assert_several_multi2_ff
    if ( ~rstn ) begin
        sct_assert_several_multi2_PROC_STATE <= 0;    // test_sva_generate_proc_nogen.cpp:187:9;
    end
    else begin
        sct_assert_several_multi2_PROC_STATE <= sct_assert_several_multi2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_several_multi3 (test_sva_generate_proc_nogen.cpp:199:5) 

// Thread-local variables
logic signed [31:0] k;
logic signed [31:0] k_next;
logic [1:0] sct_assert_several_multi3_PROC_STATE;
logic [1:0] sct_assert_several_multi3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_several_multi3_comb     // test_sva_generate_proc_nogen.cpp:199:5
    sct_assert_several_multi3_func;
end
function void sct_assert_several_multi3_func;
    k_next = k;
    sct_assert_several_multi3_PROC_STATE_next = sct_assert_several_multi3_PROC_STATE;
    
    case (sct_assert_several_multi3_PROC_STATE)
        0: begin
            if (|s)
            begin
                k_next = s;
                sct_assert_several_multi3_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:209:17;
            end else begin
                k_next++;
                sct_assert_several_multi3_PROC_STATE_next = 2; return;    // test_sva_generate_proc_nogen.cpp:213:17;
            end
        end
        1: begin
            if (|s)
            begin
                k_next = s;
                sct_assert_several_multi3_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:209:17;
            end else begin
                k_next++;
                sct_assert_several_multi3_PROC_STATE_next = 2; return;    // test_sva_generate_proc_nogen.cpp:213:17;
            end
        end
        2: begin
            if (|s)
            begin
                k_next = s;
                sct_assert_several_multi3_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:209:17;
            end else begin
                k_next++;
                sct_assert_several_multi3_PROC_STATE_next = 2; return;    // test_sva_generate_proc_nogen.cpp:213:17;
            end
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_several_multi3_ff
    if ( ~rstn ) begin
        k <= 0;
        sct_assert_several_multi3_PROC_STATE <= 0;    // test_sva_generate_proc_nogen.cpp:203:9;
    end
    else begin
        k <= k_next;
        sct_assert_several_multi3_PROC_STATE <= sct_assert_several_multi3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_var1 (test_sva_generate_proc_nogen.cpp:219:5) 

// Thread-local variables
logic [15:0] d;
logic [31:0] c;

// Next-state combinational logic
always_comb begin : sct_assert_thread_var1_comb     // test_sva_generate_proc_nogen.cpp:219:5
    sct_assert_thread_var1_func;
end
function void sct_assert_thread_var1_func;
    d = s_d;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_var1_ff
    if ( ~rstn ) begin
        logic [15:0] d;
        integer unsigned c;
        d = 7;
        c = s;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_var2 (test_sva_generate_proc_nogen.cpp:233:5) 

// Thread-local variables
logic rec_a;
logic [3:0] rec_b;
logic sct_assert_thread_var2_PROC_STATE;
logic sct_assert_thread_var2_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_thread_var2_comb     // test_sva_generate_proc_nogen.cpp:233:5
    sct_assert_thread_var2_func;
end
function void sct_assert_thread_var2_func;
    sct_assert_thread_var2_PROC_STATE_next = sct_assert_thread_var2_PROC_STATE;
    
    case (sct_assert_thread_var2_PROC_STATE)
        0: begin
            rec_b = s_d;
            sct_assert_thread_var2_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:242:13;
        end
        1: begin
            rec_b = s_d;
            sct_assert_thread_var2_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:242:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_var2_ff
    if ( ~rstn ) begin
        logic rec_a;
        rec_a = 0;
        sct_assert_thread_var2_PROC_STATE <= 0;    // test_sva_generate_proc_nogen.cpp:236:9;
    end
    else begin
        sct_assert_thread_var2_PROC_STATE <= sct_assert_thread_var2_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_loc1 (test_sva_generate_proc_nogen.cpp:247:5) 

// Next-state combinational logic
always_comb begin : sct_assert_thread_loc1_comb     // test_sva_generate_proc_nogen.cpp:247:5
    sct_assert_thread_loc1_func;
end
function void sct_assert_thread_loc1_func;
    integer i;
    i = s;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_loc1_ff
    if ( ~rstn ) begin
        integer i;
        i = 0;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_loc2 (test_sva_generate_proc_nogen.cpp:260:5) 

// Next-state combinational logic
always_comb begin : sct_assert_thread_loc2_comb     // test_sva_generate_proc_nogen.cpp:260:5
    sct_assert_thread_loc2_func;
end
function void sct_assert_thread_loc2_func;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_loc2_ff
    if ( ~rstn ) begin
        integer i;
        i = s;
    end
    else begin
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_thread_loc3 (test_sva_generate_proc_nogen.cpp:271:5) 

// Thread-local variables
logic k0;
logic k_next0;
logic signed [31:0] l;
logic signed [31:0] l_next;
logic signed [31:0] i;
logic signed [31:0] i_next;
logic [1:0] sct_assert_thread_loc3_PROC_STATE;
logic [1:0] sct_assert_thread_loc3_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_thread_loc3_comb     // test_sva_generate_proc_nogen.cpp:271:5
    sct_assert_thread_loc3_func;
end
function void sct_assert_thread_loc3_func;
    logic j;
    i_next = i;
    k_next0 = k0;
    l_next = l;
    sct_assert_thread_loc3_PROC_STATE_next = sct_assert_thread_loc3_PROC_STATE;
    
    case (sct_assert_thread_loc3_PROC_STATE)
        0: begin
            sct_assert_thread_loc3_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:281:13;
        end
        1: begin
            j = i_next == s;
            k_next0 = l_next == s;
            sct_assert_thread_loc3_PROC_STATE_next = 2; return;    // test_sva_generate_proc_nogen.cpp:285:13;
        end
        2: begin
            sct_assert_thread_loc3_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:281:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_thread_loc3_ff
    if ( ~rstn ) begin
        logic j;
        j = 0;
        i <= 0;
        k0 <= 0;
        l <= 0;
        sct_assert_thread_loc3_PROC_STATE <= 0;    // test_sva_generate_proc_nogen.cpp:276:9;
    end
    else begin
        k0 <= k_next0;
        l <= l_next;
        i <= i_next;
        sct_assert_thread_loc3_PROC_STATE <= sct_assert_thread_loc3_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: sct_assert_cond (test_sva_generate_proc_nogen.cpp:290:5) 

// Thread-local variables
logic sct_assert_cond_PROC_STATE;
logic sct_assert_cond_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : sct_assert_cond_comb     // test_sva_generate_proc_nogen.cpp:290:5
    sct_assert_cond_func;
end
function void sct_assert_cond_func;
    sct_assert_cond_PROC_STATE_next = sct_assert_cond_PROC_STATE;
    
    case (sct_assert_cond_PROC_STATE)
        0: begin
            sct_assert_cond_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:298:13;
        end
        1: begin
            sct_assert_cond_PROC_STATE_next = 1; return;    // test_sva_generate_proc_nogen.cpp:298:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or negedge rstn) 
begin : sct_assert_cond_ff
    if ( ~rstn ) begin
        sct_assert_cond_PROC_STATE <= 0;    // test_sva_generate_proc_nogen.cpp:293:9;
    end
    else begin
        sct_assert_cond_PROC_STATE <= sct_assert_cond_PROC_STATE_next;
    end
end

endmodule


