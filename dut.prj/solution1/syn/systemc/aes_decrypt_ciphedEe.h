// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __aes_decrypt_ciphedEe_H__
#define __aes_decrypt_ciphedEe_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct aes_decrypt_ciphedEe_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(aes_decrypt_ciphedEe_ram) {
        ram[0] = "0b00111001";
        ram[1] = "0b01100010";
        ram[2] = "0b10001011";
        ram[3] = "0b11001100";
        ram[4] = "0b11000001";
        ram[5] = "0b11001101";
        ram[6] = "0b01001000";
        ram[7] = "0b11100100";
        ram[8] = "0b01011111";
        ram[9] = "0b11011101";
        ram[10] = "0b10110101";
        ram[11] = "0b11101000";
        ram[12] = "0b10011100";
        ram[13] = "0b10111111";
        ram[14] = "0b10011101";
        ram[15] = "0b00000010";


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


SC_MODULE(aes_decrypt_ciphedEe) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


aes_decrypt_ciphedEe_ram* meminst;


SC_CTOR(aes_decrypt_ciphedEe) {
meminst = new aes_decrypt_ciphedEe_ram("aes_decrypt_ciphedEe_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~aes_decrypt_ciphedEe() {
    delete meminst;
}


};//endmodule
#endif
