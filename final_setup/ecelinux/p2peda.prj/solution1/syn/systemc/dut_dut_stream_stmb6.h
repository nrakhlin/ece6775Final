// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dut_dut_stream_stmb6_H__
#define __dut_dut_stream_stmb6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dut_dut_stream_stmb6_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
  static const unsigned AddressRange = 56;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dut_dut_stream_stmb6_ram) {
        ram[0] = "0b1001101";
        ram[1] = "0b1111001";
        ram[2] = "0b0100000";
        ram[3] = "0b1001011";
        ram[4] = "0b1100101";
        ram[5] = "0b1111001";
        ram[6] = "0b0100001";
        ram[7] = "0b0100001";
        ram[8] = "0b0100001";
        for (unsigned i = 9; i < 56 ; i = i + 1) {
            ram[i] = "0b0000000";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(dut_dut_stream_stmb6) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 56;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dut_dut_stream_stmb6_ram* meminst;


SC_CTOR(dut_dut_stream_stmb6) {
meminst = new dut_dut_stream_stmb6_ram("dut_dut_stream_stmb6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dut_dut_stream_stmb6() {
    delete meminst;
}


};//endmodule
#endif
