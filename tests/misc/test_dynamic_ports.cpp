#include <systemc.h>

using namespace sc_core;

// Dynamically allocated ports in another module
class A : public sc_module {
public:
    sc_in<bool>*            p1;
    sc_out<sc_uint<5> >*    p2;
    sc_signal<int>*         s1;

    SC_CTOR(A) {
        p1 = new sc_in<bool>("p1");
            
        SC_METHOD(proc1); sensitive << (*p1);
    }
    
    void proc1() {
        *s1 = p1->read() ? 1 : 2;
        *p2 = s1->read();
    }     
    
    void allocatePort() {
        p2 = new sc_out<sc_uint<5> >("p2");
    }
};

class B_top : public sc_module {
public:
    sc_signal<bool>         sig1;
    sc_signal<sc_uint<5> >  sig2;
    
    A a_mod{"a_mod"};

    SC_CTOR(B_top) {
        // Allocate signal in another module directly
        a_mod.s1 = new sc_signal<int>("s1");
        // Allocate port in another module in function call
        a_mod.allocatePort();
        
        a_mod.p1->bind(sig1);
        a_mod.p2->bind(sig2);
    }
};

int sc_main(int argc, char *argv[]) {
    B_top b_mod{"b_mod"};
    sc_start();
    return 0;
}

