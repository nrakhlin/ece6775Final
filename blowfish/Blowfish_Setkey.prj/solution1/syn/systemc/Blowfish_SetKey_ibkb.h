// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Blowfish_SetKey_ibkb_H__
#define __Blowfish_SetKey_ibkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Blowfish_SetKey_ibkb_ram : public sc_core::sc_module {

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


   SC_CTOR(Blowfish_SetKey_ibkb_ram) {
        ram[0] = "0b00100100001111110110101010001000";
        ram[1] = "0b10000101101000110000100011010011";
        ram[2] = "0b00010011000110011000101000101110";
        ram[3] = "0b00000011011100000111001101000100";
        ram[4] = "0b10100100000010010011100000100010";
        ram[5] = "0b00101001100111110011000111010000";
        ram[6] = "0b00001000001011101111101010011000";
        ram[7] = "0b11101100010011100110110010001001";
        ram[8] = "0b01000101001010000010000111100110";
        ram[9] = "0b00111000110100000001001101110111";
        ram[10] = "0b10111110010101000110011011001111";
        ram[11] = "0b00110100111010010000110001101100";
        ram[12] = "0b11000000101011000010100110110111";
        ram[13] = "0b11001001011111000101000011011101";
        ram[14] = "0b00111111100001001101010110110101";
        ram[15] = "0b10110101010001110000100100010111";
        ram[16] = "0b10010010000101101101010111011001";
        ram[17] = "0b10001001011110011111101100011011";


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


SC_MODULE(Blowfish_SetKey_ibkb) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 18;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Blowfish_SetKey_ibkb_ram* meminst;


SC_CTOR(Blowfish_SetKey_ibkb) {
meminst = new Blowfish_SetKey_ibkb_ram("Blowfish_SetKey_ibkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Blowfish_SetKey_ibkb() {
    delete meminst;
}


};//endmodule
#endif
