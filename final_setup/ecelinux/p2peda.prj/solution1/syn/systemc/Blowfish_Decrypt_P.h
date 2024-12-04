// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Blowfish_Decrypt_P_H__
#define __Blowfish_Decrypt_P_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Blowfish_Decrypt_P_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 18;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Blowfish_Decrypt_P_ram) {
        ram[0] = "0b11100001101000000010110100001100";
        ram[1] = "0b11100111011000010100111101001101";
        ram[2] = "0b11001001110010110101000101001110";
        ram[3] = "0b00100111101101110101111110011111";
        ram[4] = "0b10000001111111110110011110110001";
        ram[5] = "0b00000010010000000001111001100010";
        ram[6] = "0b10100101110100001111100101111110";
        ram[7] = "0b01101110100000010011011010010011";
        ram[8] = "0b01000110001010011010111101001110";
        ram[9] = "0b11110001011001010111001100010011";
        ram[10] = "0b01010111010000100011010100111011";
        ram[11] = "0b10001101101010000110100000001010";
        ram[12] = "0b00101110011010110011101010111000";
        ram[13] = "0b10010010000110110000101010101000";
        ram[14] = "0b00100101000100111011001111100100";
        ram[15] = "0b10111110011101011101010100110000";
        ram[16] = "0b10011111110000101011011110001000";
        ram[17] = "0b01101001100010001100001111001100";


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


SC_MODULE(Blowfish_Decrypt_P) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 18;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Blowfish_Decrypt_P_ram* meminst;


SC_CTOR(Blowfish_Decrypt_P) {
meminst = new Blowfish_Decrypt_P_ram("Blowfish_Decrypt_P_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Blowfish_Decrypt_P() {
    delete meminst;
}


};//endmodule
#endif
