#include <systemc.h>

using namespace sc_core;

// Null and non-initialized pointer access error detection
class A : public sc_module {
public:
    sc_signal<int>*         s;
    sc_signal<bool>         dummy;
    
    SC_CTOR(A) : s(nullptr) {
        SC_METHOD(meth); 
        sensitive << dummy;
    }
    
    void meth() 
    {
        int i = s->read(); 
    }     
    
};

class B_top : public sc_module {
public:
    A a_mod{"a_mod"};

    SC_CTOR(B_top) {
    }
};

int sc_main(int argc, char *argv[]) {
    B_top b_mod{"b_mod"};
    sc_start();
    return 0;
}

