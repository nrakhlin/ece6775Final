// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __aes_invMain_expang8j_H__
#define __aes_invMain_expang8j_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct aes_invMain_expang8j_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 176;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(aes_invMain_expang8j_ram) {
        ram[0] = "0b01010100";
        ram[1] = "0b01101000";
        ram[2] = "0b01100001";
        ram[3] = "0b01110100";
        ram[4] = "0b01110011";
        ram[5] = "0b00100000";
        ram[6] = "0b01101101";
        ram[7] = "0b01111001";
        ram[8] = "0b00100000";
        ram[9] = "0b01001011";
        ram[10] = "0b01110101";
        ram[11] = "0b01101110";
        ram[12] = "0b01100111";
        ram[13] = "0b00100000";
        ram[14] = "0b01000110";
        ram[15] = "0b01110101";
        ram[16] = "0b11100010";
        ram[17] = "0b00110010";
        ram[18] = "0b11111100";
        ram[19] = "0b11110001";
        ram[20] = "0b10010001";
        ram[21] = "0b00010010";
        ram[22] = "0b10010001";
        ram[23] = "0b10001000";
        ram[24] = "0b10110001";
        ram[25] = "0b01011001";
        ram[26] = "0b11100100";
        ram[27] = "0b11100110";
        ram[28] = "0b11010110";
        ram[29] = "0b01111001";
        ram[30] = "0b10100010";
        ram[31] = "0b10010011";
        ram[32] = "0b01010110";
        ram[33] = "0b00001000";
        ram[34] = "0b00100000";
        ram[35] = "0b00000111";
        ram[36] = "0b11000111";
        ram[37] = "0b00011010";
        ram[38] = "0b10110001";
        ram[39] = "0b10001111";
        ram[40] = "0b01110110";
        ram[41] = "0b01000011";
        ram[42] = "0b01010101";
        ram[43] = "0b01101001";
        ram[44] = "0b10100000";
        ram[45] = "0b00111010";
        ram[46] = "0b11110111";
        ram[47] = "0b11111010";
        ram[48] = "0b11010010";
        ram[49] = "0b01100000";
        ram[50] = "0b00001101";
        ram[51] = "0b11100111";
        ram[52] = "0b00010101";
        ram[53] = "0b01111010";
        ram[54] = "0b10111100";
        ram[55] = "0b01101000";
        ram[56] = "0b01100011";
        ram[57] = "0b00111001";
        ram[58] = "0b11101001";
        ram[59] = "0b00000001";
        ram[60] = "0b11000011";
        ram[61] = "0b00000011";
        ram[62] = "0b00011110";
        ram[63] = "0b11111011";
        ram[64] = "0b10100001";
        ram[65] = "0b00010010";
        ram[66] = "0b00000010";
        ram[67] = "0b11001001";
        ram[68] = "0b10110100";
        ram[69] = "0b01101000";
        ram[70] = "0b10111110";
        ram[71] = "0b10100001";
        ram[72] = "0b11010111";
        ram[73] = "0b01010001";
        ram[74] = "0b01010111";
        ram[75] = "0b10100000";
        ram[76] = "0b00010100";
        ram[77] = "0b01010010";
        ram[78] = "0b01001001";
        ram[79] = "0b01011011";
        ram[80] = "0b10110001";
        ram[81] = "0b00101001";
        ram[82] = "0b00111011";
        ram[83] = "0b00110011";
        ram[84] = "0b00000101";
        ram[85] = "0b01000001";
        ram[86] = "0b10000101";
        ram[87] = "0b10010010";
        ram[88] = "0b11010010";
        ram[89] = "0b00010000";
        ram[90] = "0b11010010";
        ram[91] = "0b00110010";
        ram[92] = "0b11000110";
        ram[93] = "0b01000010";
        ram[94] = "0b10011011";
        ram[95] = "0b01101001";
        ram[96] = "0b10111101";
        ram[97] = "0b00111101";
        ram[98] = "0b11000010";
        ram[99] = "0b10000111";
        ram[100] = "0b10111000";
        ram[101] = "0b01111100";
        ram[102] = "0b01000111";
        ram[103] = "0b00010101";
        ram[104] = "0b01101010";
        ram[105] = "0b01101100";
        ram[106] = "0b10010101";
        ram[107] = "0b00100111";
        ram[108] = "0b10101100";
        ram[109] = "0b00101110";
        ram[110] = "0b00001110";
        ram[111] = "0b01001110";
        ram[112] = "0b11001100";
        ram[113] = "0b10010110";
        ram[114] = "0b11101101";
        ram[115] = "0b00010110";
        ram[116] = "0b01110100";
        ram[117] = "0b11101010";
        ram[118] = "0b10101010";
        ram[119] = "0b00000011";
        ram[120] = "0b00011110";
        ram[121] = "0b10000110";
        ram[122] = "0b00111111";
        ram[123] = "0b00100100";
        ram[124] = "0b10110010";
        ram[125] = "0b10101000";
        ram[126] = "0b00110001";
        ram[127] = "0b01101010";
        ram[128] = "0b10001110";
        ram[129] = "0b01010001";
        ram[130] = "0b11101111";
        ram[131] = "0b00100001";
        ram[132] = "0b11111010";
        ram[133] = "0b10111011";
        ram[134] = "0b01000101";
        ram[135] = "0b00100010";
        ram[136] = "0b11100100";
        ram[137] = "0b00111101";
        ram[138] = "0b01111010";
        ram[139] = "0b00000110";
        ram[140] = "0b01010110";
        ram[141] = "0b10010101";
        ram[142] = "0b01001011";
        ram[143] = "0b01101100";
        ram[144] = "0b10111111";
        ram[145] = "0b11100010";
        ram[146] = "0b10111111";
        ram[147] = "0b10010000";
        ram[148] = "0b01000101";
        ram[149] = "0b01011001";
        ram[150] = "0b11111010";
        ram[151] = "0b10110010";
        ram[152] = "0b10100001";
        ram[153] = "0b01100100";
        ram[154] = "0b10000000";
        ram[155] = "0b10110100";
        ram[156] = "0b11110111";
        ram[157] = "0b11110001";
        ram[158] = "0b11001011";
        ram[159] = "0b11011000";
        ram[160] = "0b00101000";
        ram[161] = "0b11111101";
        ram[162] = "0b11011110";
        ram[163] = "0b11111000";
        ram[164] = "0b01101101";
        ram[165] = "0b10100100";
        ram[166] = "0b00100100";
        ram[167] = "0b01001010";
        ram[168] = "0b11001100";
        ram[169] = "0b11000000";
        ram[170] = "0b10100100";
        ram[171] = "0b11111110";
        ram[172] = "0b00111011";
        ram[173] = "0b00110001";
        ram[174] = "0b01101111";
        ram[175] = "0b00100110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
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


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(aes_invMain_expang8j) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 176;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


aes_invMain_expang8j_ram* meminst;


SC_CTOR(aes_invMain_expang8j) {
meminst = new aes_invMain_expang8j_ram("aes_invMain_expang8j_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~aes_invMain_expang8j() {
    delete meminst;
}


};//endmodule
#endif
