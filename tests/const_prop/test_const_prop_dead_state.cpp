//
// Created by ripopov on 7/11/18.
//

#include <systemc.h>
#include <sct_assert.h>

SC_MODULE(top) {

    sc_clock    clk_gen{"clk_gen", 10 , SC_NS};

    SC_CTOR(top) {
        SC_THREAD(test_thread);
        sensitive << clk_gen.posedge_event();
    }

    sc_signal<bool> din;

    void test_thread() {

        while (1) {

            int x = 1;
            x++;

            if (x == 1)
                wait();

            for (size_t i = 2; i > x; --i) {
                wait();
            }

            while (x == 1) {
                wait();
                x++;
            }

            if (din)
                wait();


            wait();
        }
    }

};

int sc_main (int argc, char ** argv ) {

    top t_inst{"t_inst"};
    sc_start(400, SC_NS);

    return 0;
}