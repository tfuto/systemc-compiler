#include "systemc.h"

using namespace sc_core;

// Virtual and non-virtual function call of a field of this module class
// Cache tag in SMEM use such function calls

struct D_if : public sc_interface
{
    unsigned int     n;
    unsigned int     k;
    
    D_if() {}
    
    virtual void g() {
        n++;
    }
    virtual int g(int i) {return 0;};
    
    void f() {
        k++;
    }
};

struct E : public sc_module, public D_if
{
    int     n;
    int     k;
    
    E(const sc_module_name& name) : sc_module(name) {
    }
    
    virtual void g() {
        n--;
    }
    virtual int g(int i) {
        n -= i;
        return n;
    }

    // Non-virtual function hide D_if::f()
    void f() {
        k--;
    }
};

struct A : public sc_module
{
    int     n;
    
    E*      e;
    D_if*   d;    

    SC_HAS_PROCESS(A);
    sc_signal<bool> dummy{"dummy"};

    A(const sc_module_name& name) : sc_module(name) {
        d = new E("d");
        e = new E("e");
        
        SC_METHOD(proc); sensitive << dummy;
        SC_METHOD(proc_d); sensitive << dummy;
        SC_METHOD(proc_e); sensitive << dummy;
    }
    
    void proc() {
        e->g();
        
        n = 1;
        int j = e->g(n);
        e->k = j + e->n;
    }
    
    void proc_d() {
        d->g();
        d->f();
    }    

    void proc_e() {
        e->k = 0;
        ((D_if*)e)->k = 1;
        
        e->f();             // E::f()
        ((D_if*)e)->f();    // D_if::f()    
        ((D_if*)e)->g();    // E::g()     
    }
};


class B_top : public sc_module 
{
public:
    A a_mod{"a_mod"};

    B_top(const sc_module_name& name) : sc_module(name) {
    }
};

int sc_main(int argc, char *argv[]) {
    B_top b_mod{"b_mod"};
    sc_start();
    return 0;
}