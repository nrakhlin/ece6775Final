// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __createRoundKey_embkb_H__
#define __createRoundKey_embkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct createRoundKey_embkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 176;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(createRoundKey_embkb_ram) {
        ram[0] = "0b01101011";
        ram[1] = "0b01101011";
        ram[2] = "0b01101011";
        ram[3] = "0b01101011";
        ram[4] = "0b01100101";
        ram[5] = "0b01100101";
        ram[6] = "0b01100101";
        ram[7] = "0b01100101";
        ram[8] = "0b01111001";
        ram[9] = "0b01111001";
        ram[10] = "0b01111001";
        ram[11] = "0b01111001";
        ram[12] = "0b00101110";
        ram[13] = "0b00101110";
        ram[14] = "0b00101110";
        ram[15] = "0b00101110";
        ram[16] = "0b01011011";
        ram[17] = "0b01011010";
        ram[18] = "0b01011010";
        ram[19] = "0b01011010";
        ram[20] = "0b00111110";
        ram[21] = "0b00111111";
        ram[22] = "0b00111111";
        ram[23] = "0b00111111";
        ram[24] = "0b01000111";
        ram[25] = "0b01000110";
        ram[26] = "0b01000110";
        ram[27] = "0b01000110";
        ram[28] = "0b01101001";
        ram[29] = "0b01101000";
        ram[30] = "0b01101000";
        ram[31] = "0b01101000";
        ram[32] = "0b00011100";
        ram[33] = "0b00011111";
        ram[34] = "0b00011111";
        ram[35] = "0b10100011";
        ram[36] = "0b00100010";
        ram[37] = "0b00100000";
        ram[38] = "0b00100000";
        ram[39] = "0b10011100";
        ram[40] = "0b01100101";
        ram[41] = "0b01100110";
        ram[42] = "0b01100110";
        ram[43] = "0b11011010";
        ram[44] = "0b00001100";
        ram[45] = "0b00001110";
        ram[46] = "0b00001110";
        ram[47] = "0b10110010";
        ram[48] = "0b10110011";
        ram[49] = "0b10110100";
        ram[50] = "0b00101000";
        ram[51] = "0b01011101";
        ram[52] = "0b10010001";
        ram[53] = "0b10010100";
        ram[54] = "0b00001000";
        ram[55] = "0b11000001";
        ram[56] = "0b11110100";
        ram[57] = "0b11110010";
        ram[58] = "0b01101110";
        ram[59] = "0b00011011";
        ram[60] = "0b11111000";
        ram[61] = "0b11111100";
        ram[62] = "0b01100000";
        ram[63] = "0b10101001";
        ram[64] = "0b00001011";
        ram[65] = "0b01100100";
        ram[66] = "0b11111011";
        ram[67] = "0b00011100";
        ram[68] = "0b10011010";
        ram[69] = "0b11110000";
        ram[70] = "0b11110011";
        ram[71] = "0b11011101";
        ram[72] = "0b01101110";
        ram[73] = "0b00000010";
        ram[74] = "0b10011101";
        ram[75] = "0b11000110";
        ram[76] = "0b10010110";
        ram[77] = "0b11111110";
        ram[78] = "0b11111101";
        ram[79] = "0b01101111";
        ram[80] = "0b10100000";
        ram[81] = "0b00110000";
        ram[82] = "0b01010011";
        ram[83] = "0b10001100";
        ram[84] = "0b00111010";
        ram[85] = "0b11000000";
        ram[86] = "0b10100000";
        ram[87] = "0b01010001";
        ram[88] = "0b01010100";
        ram[89] = "0b11000010";
        ram[90] = "0b00111101";
        ram[91] = "0b10010111";
        ram[92] = "0b11000010";
        ram[93] = "0b00111100";
        ram[94] = "0b11000000";
        ram[95] = "0b11111000";
        ram[96] = "0b01101011";
        ram[97] = "0b10001010";
        ram[98] = "0b00010010";
        ram[99] = "0b10101001";
        ram[100] = "0b01010001";
        ram[101] = "0b01001010";
        ram[102] = "0b10110010";
        ram[103] = "0b11111000";
        ram[104] = "0b00000101";
        ram[105] = "0b10001000";
        ram[106] = "0b10001111";
        ram[107] = "0b01101111";
        ram[108] = "0b11000111";
        ram[109] = "0b10110100";
        ram[110] = "0b01001111";
        ram[111] = "0b10010111";
        ram[112] = "0b10100110";
        ram[113] = "0b00001110";
        ram[114] = "0b10011010";
        ram[115] = "0b01101111";
        ram[116] = "0b11110111";
        ram[117] = "0b01000100";
        ram[118] = "0b00101000";
        ram[119] = "0b10010111";
        ram[120] = "0b11110010";
        ram[121] = "0b11001100";
        ram[122] = "0b10100111";
        ram[123] = "0b11111000";
        ram[124] = "0b00110101";
        ram[125] = "0b01111000";
        ram[126] = "0b11101000";
        ram[127] = "0b01101111";
        ram[128] = "0b10011010";
        ram[129] = "0b10010101";
        ram[130] = "0b00110010";
        ram[131] = "0b11111001";
        ram[132] = "0b01101101";
        ram[133] = "0b11010001";
        ram[134] = "0b00011010";
        ram[135] = "0b01101110";
        ram[136] = "0b10011111";
        ram[137] = "0b00011101";
        ram[138] = "0b10111101";
        ram[139] = "0b10010110";
        ram[140] = "0b10101010";
        ram[141] = "0b01100101";
        ram[142] = "0b01010101";
        ram[143] = "0b11111001";
        ram[144] = "0b11001100";
        ram[145] = "0b01101001";
        ram[146] = "0b10101011";
        ram[147] = "0b01010101";
        ram[148] = "0b10100001";
        ram[149] = "0b10111000";
        ram[150] = "0b10110001";
        ram[151] = "0b00111011";
        ram[152] = "0b00111110";
        ram[153] = "0b10100101";
        ram[154] = "0b00001100";
        ram[155] = "0b10101101";
        ram[156] = "0b10010100";
        ram[157] = "0b11000000";
        ram[158] = "0b01011001";
        ram[159] = "0b01010100";
        ram[160] = "0b01000000";
        ram[161] = "0b10100010";
        ram[162] = "0b10001011";
        ram[163] = "0b01110111";
        ram[164] = "0b11100001";
        ram[165] = "0b00011010";
        ram[166] = "0b00111010";
        ram[167] = "0b01001100";
        ram[168] = "0b11011111";
        ram[169] = "0b10111111";
        ram[170] = "0b00110110";
        ram[171] = "0b11100001";
        ram[172] = "0b01001011";
        ram[173] = "0b01111111";
        ram[174] = "0b01101111";
        ram[175] = "0b10110101";


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


SC_MODULE(createRoundKey_embkb) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 176;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


createRoundKey_embkb_ram* meminst;


SC_CTOR(createRoundKey_embkb) {
meminst = new createRoundKey_embkb_ram("createRoundKey_embkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~createRoundKey_embkb() {
    delete meminst;
}


};//endmodule
#endif
