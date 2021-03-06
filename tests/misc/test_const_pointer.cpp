#include "systemc.h"
#include <sct_assert.h>
#include <iostream>
#include <string>

// Remove constants which is pointe by pointer dereference
template<unsigned N>
struct AA : public sc_module 
{
    sc_in<bool>         clk;
    sc_signal<bool>     nrst;

    sc_signal<sc_uint<4>> s;

    const int A = 47;
    const bool B = true;
    const sc_uint<16> C = 42;
    const sc_int<8> D = -7;

    const int* const p1{sc_new<int>(30)};
    const int* const p2{sc_new<int>(31)};
    const int* const pa;
    const bool* pb;
    const sc_uint<16>* pc;
    const sc_int<8>* pd;

    SC_HAS_PROCESS(AA);

    AA(const sc_module_name& name) : 
        sc_module(name), pa(&A), pb(&B), pc(&C), pd(&D)
    {
        SC_METHOD(sig_init_method);
        sensitive << s;
        
        SC_CTHREAD(sig_init_thread, clk.pos());
        async_reset_signal_is(nrst, 0);
        
    }
    
    void sig_init_method() {
        const int* mp = pa;
        int k; k = *mp + *pc;   
        k = C;
        k = -C;
        k = C + 1;
        int n = *pc;
        int l; l = *p1;
    }

    void sig_init_thread() {
        const sc_int<8>* tp1 = pd;
        const int* lp = p2;
        wait();
        
        while (true) {
            const bool* tp2 = pb;
            bool a = *tp2 || *tp1 == 1;
            int m = *tp1;
            
            int n; n = *pc + *lp;   
            int k = *pc; 
            wait();
        }
    }   
    
};

int sc_main(int argc, char *argv[]) 
{
    AA<2> a_mod{"a_mod"};
    sc_clock clk{"clk", 1, SC_NS};
    a_mod.clk(clk);
    
    sc_start();
    return 0;
}
