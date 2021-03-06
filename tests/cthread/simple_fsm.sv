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
module A // "b_mod.a_mod"
(
    input logic clk,
    input logic rst,
    input logic a,
    output logic zs,
    output logic zv
);

//------------------------------------------------------------------------------
// Clocked THREAD: fsm_wait_style (test_simple_fsm.cpp:38:5) 

// Thread-local variables
logic zs_next;
logic [2:0] fsm_wait_style_PROC_STATE;
logic [2:0] fsm_wait_style_PROC_STATE_next;

// Next-state combinational logic
always_comb begin : fsm_wait_style_comb     // test_simple_fsm.cpp:38:5
    fsm_wait_style_func;
end
function void fsm_wait_style_func;
    zs_next = zs;
    fsm_wait_style_PROC_STATE_next = fsm_wait_style_PROC_STATE;
    
    case (fsm_wait_style_PROC_STATE)
        0: begin
            if (a == 0)
            begin
                fsm_wait_style_PROC_STATE_next = 1; return;    // test_simple_fsm.cpp:44:35;
            end
            fsm_wait_style_PROC_STATE_next = 2; return;    // test_simple_fsm.cpp:45:13;
        end
        1: begin
            if (a == 0)
            begin
                fsm_wait_style_PROC_STATE_next = 1; return;    // test_simple_fsm.cpp:44:35;
            end
            fsm_wait_style_PROC_STATE_next = 2; return;    // test_simple_fsm.cpp:45:13;
        end
        2: begin
            if (a == 0)
            begin
                zs_next = 0;
                fsm_wait_style_PROC_STATE_next = 3; return;    // test_simple_fsm.cpp:49:17;
            end
            zs_next = 0;
            if (a == 0)
            begin
                fsm_wait_style_PROC_STATE_next = 1; return;    // test_simple_fsm.cpp:44:35;
            end
            fsm_wait_style_PROC_STATE_next = 2; return;    // test_simple_fsm.cpp:45:13;
        end
        3: begin
            if (a == 1)
            begin
                zs_next = 1;
                fsm_wait_style_PROC_STATE_next = 4; return;    // test_simple_fsm.cpp:52:21;
            end else begin
                // break begin
                zs_next = 0;
                if (a == 0)
                begin
                    fsm_wait_style_PROC_STATE_next = 1; return;    // test_simple_fsm.cpp:44:35;
                end
                fsm_wait_style_PROC_STATE_next = 2; return;    // test_simple_fsm.cpp:45:13;
                // break end
            end
        end
        4: begin
            if (a == 0)
            begin
                zs_next = 0;
                fsm_wait_style_PROC_STATE_next = 3; return;    // test_simple_fsm.cpp:49:17;
            end
            zs_next = 0;
            if (a == 0)
            begin
                fsm_wait_style_PROC_STATE_next = 1; return;    // test_simple_fsm.cpp:44:35;
            end
            fsm_wait_style_PROC_STATE_next = 2; return;    // test_simple_fsm.cpp:45:13;
        end
    endcase
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : fsm_wait_style_ff
    if (rst ) begin
        zs <= 0;
        fsm_wait_style_PROC_STATE <= 0;    // test_simple_fsm.cpp:40:9;
    end
    else begin
        zs <= zs_next;
        fsm_wait_style_PROC_STATE <= fsm_wait_style_PROC_STATE_next;
    end
end

//------------------------------------------------------------------------------
// Clocked THREAD: fsm_case_style (test_simple_fsm.cpp:60:5) 

// Thread-local variables
logic zv_next;
logic [31:0] cs;
logic [31:0] cs_next;

// Next-state combinational logic
always_comb begin : fsm_case_style_comb     // test_simple_fsm.cpp:60:5
    fsm_case_style_func;
end
function void fsm_case_style_func;
    cs_next = cs;
    zv_next = zv;
    case (cs_next)
    0 : begin
        cs_next = (a == 1) ? 1 : 0;
    end
    1 : begin
        cs_next = (a == 0) ? 2 : 1;
    end
    2 : begin
        cs_next = (a == 1) ? 3 : 0;
    end
    3 : begin
        cs_next = (a == 1) ? 1 : 2;
    end
    endcase
    zv_next = cs_next == 3;
endfunction

// Syncrhonous register update
always_ff @(posedge clk or posedge rst) 
begin : fsm_case_style_ff
    if (rst ) begin
        zv <= 0;
        cs <= 0;
    end
    else begin
        zv <= zv_next;
        cs <= cs_next;
    end
end

endmodule


