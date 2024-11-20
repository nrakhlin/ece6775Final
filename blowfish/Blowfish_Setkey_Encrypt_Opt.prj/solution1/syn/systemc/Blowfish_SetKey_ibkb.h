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
  static const unsigned AddressRange = 256;
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


   SC_CTOR(Blowfish_SetKey_ibkb_ram) {
        ram[0] = "0b11010001001100010000101110100110";
        ram[1] = "0b10011000110111111011010110101100";
        ram[2] = "0b00101111111111010111001011011011";
        ram[3] = "0b11010000000110101101111110110111";
        ram[4] = "0b10111000111000011010111111101101";
        ram[5] = "0b01101010001001100111111010010110";
        ram[6] = "0b10111010011111001001000001000101";
        ram[7] = "0b11110001001011000111111110011001";
        ram[8] = "0b00100100101000011001100101000111";
        ram[9] = "0b10110011100100010110110011110111";
        ram[10] = "0b00001000000000011111001011100010";
        ram[11] = "0b10000101100011101111110000010110";
        ram[12] = "0b01100011011010010010000011011000";
        ram[13] = "0b01110001010101110100111001101001";
        ram[14] = "0b10100100010110001111111010100011";
        ram[15] = "0b11110100100100110011110101111110";
        ram[16] = "0b00001101100101010111010010001111";
        ram[17] = "0b01110010100011101011011001011000";
        ram[18] = "0b01110001100010111100110101011000";
        ram[19] = "0b10000010000101010100101011101110";
        ram[20] = "0b01111011010101001010010000011101";
        ram[21] = "0b11000010010110100101100110110101";
        ram[22] = "0b10011100001100001101010100111001";
        ram[23] = "0b00101010111100100110000000010011";
        ram[24] = "0b11000101110100011011000000100011";
        ram[25] = "0b00101000011000001000010111110000";
        ram[26] = "0b11001010010000010111100100011000";
        ram[27] = "0b10111000110110110011100011101111";
        ram[28] = "0b10001110011110011101110010110000";
        ram[29] = "0b01100000001110100001100000001110";
        ram[30] = "0b01101100100111100000111010001011";
        ram[31] = "0b10110000000111101000101000111110";
        ram[32] = "0b11010111000101010111011111000001";
        ram[33] = "0b10111101001100010100101100100111";
        ram[34] = "0b01111000101011110010111111011010";
        ram[35] = "0b01010101011000000101110001100000";
        ram[36] = "0b11100110010101010010010111110011";
        ram[37] = "0b10101010010101011010101110010100";
        ram[38] = "0b01010111010010001001100001100010";
        ram[39] = "0b01100011111010000001010001000000";
        ram[40] = "0b01010101110010100011100101101010";
        ram[41] = "0b00101010101010110001000010110110";
        ram[42] = "0b10110100110011000101110000110100";
        ram[43] = "0b00010001010000011110100011001110";
        ram[44] = "0b10100001010101001000011010101111";
        ram[45] = "0b01111100011100101110100110010011";
        ram[46] = "0b10110011111011100001010000010001";
        ram[47] = "0b01100011011011111011110000101010";
        ram[48] = "0b00101011101010011100010101011101";
        ram[49] = "0b01110100000110000011000111110110";
        ram[50] = "0b11001110010111000011111000010110";
        ram[51] = "0b10011011100001111001001100011110";
        ram[52] = "0b10101111110101101011101000110011";
        ram[53] = "0b01101100001001001100111101011100";
        ram[54] = "0b01111010001100100101001110000001";
        ram[55] = "0b00101000100101011000011001110111";
        ram[56] = "0b00111011100011110100100010011000";
        ram[57] = "0b01101011010010111011100110101111";
        ram[58] = "0b11000100101111111110100000011011";
        ram[59] = "0b01100110001010000010000110010011";
        ram[60] = "0b01100001110110000000100111001100";
        ram[61] = "0b11111011001000011010100110010001";
        ram[62] = "0b01001000011111001010110001100000";
        ram[63] = "0b01011101111011001000000000110010";
        ram[64] = "0b11101111100001000101110101011101";
        ram[65] = "0b11101001100001010111010110110001";
        ram[66] = "0b11011100001001100010001100000010";
        ram[67] = "0b11101011011001010001101110001000";
        ram[68] = "0b00100011100010010011111010000001";
        ram[69] = "0b11010011100101101010110011000101";
        ram[70] = "0b00001111011011010110111111110011";
        ram[71] = "0b10000011111101000100001000111001";
        ram[72] = "0b00101110000010110100010010000010";
        ram[73] = "0b10100100100001000010000000000100";
        ram[74] = "0b01101001110010001111000001001010";
        ram[75] = "0b10011110000111111001101101011110";
        ram[76] = "0b00100001110001100110100001000010";
        ram[77] = "0b11110110111010010110110010011010";
        ram[78] = "0b01100111000011001001110001100001";
        ram[79] = "0b10101011110100111000100011110000";
        ram[80] = "0b01101010010100011010000011010010";
        ram[81] = "0b11011000010101000010111101101000";
        ram[82] = "0b10010110000011111010011100101000";
        ram[83] = "0b10101011010100010011001110100011";
        ram[84] = "0b01101110111011110000101101101100";
        ram[85] = "0b00010011011110100011101111100100";
        ram[86] = "0b10111010001110111111000001010000";
        ram[87] = "0b01111110111110110010101010011000";
        ram[88] = "0b10100001111100010110010100011101";
        ram[89] = "0b00111001101011110000000101110110";
        ram[90] = "0b01100110110010100101100100111110";
        ram[91] = "0b10000010010000110000111010001000";
        ram[92] = "0b10001100111011101000011000011001";
        ram[93] = "0b01000101011011111001111110110100";
        ram[94] = "0b01111101100001001010010111000011";
        ram[95] = "0b00111011100010110101111010111110";
        ram[96] = "0b11100000011011110111010111011000";
        ram[97] = "0b10000101110000010010000001110011";
        ram[98] = "0b01000000000110100100010010011111";
        ram[99] = "0b01010110110000010110101010100110";
        ram[100] = "0b01001110110100111010101001100010";
        ram[101] = "0b00110110001111110111011100000110";
        ram[102] = "0b00011011111111101101111101110010";
        ram[103] = "0b01000010100110110000001000111101";
        ram[104] = "0b00110111110100001101011100100100";
        ram[105] = "0b11010000000010100001001001001000";
        ram[106] = "0b11011011000011111110101011010011";
        ram[107] = "0b01001001111100011100000010011011";
        ram[108] = "0b00000111010100110111001011001001";
        ram[109] = "0b10000000100110010001101101111011";
        ram[110] = "0b00100101110101000111100111011000";
        ram[111] = "0b11110110111010001101111011110111";
        ram[112] = "0b11100011111111100101000000011010";
        ram[113] = "0b10110110011110010100110000111011";
        ram[114] = "0b10010111011011001110000010111101";
        ram[115] = "0b00000100110000000000011010111010";
        ram[116] = "0b11000001101010010100111110110110";
        ram[117] = "0b01000000100111110110000011000100";
        ram[118] = "0b01011110010111001001111011000010";
        ram[119] = "0b00011001011010100010010001100011";
        ram[120] = "0b01101000111110110110111110101111";
        ram[121] = "0b00111110011011000101001110110101";
        ram[122] = "0b00010011001110011011001011101011";
        ram[123] = "0b00111011010100101110110001101111";
        ram[124] = "0b01101101111111000101000100011111";
        ram[125] = "0b10011011001100001001010100101100";
        ram[126] = "0b11001100100000010100010101000100";
        ram[127] = "0b10101111010111101011110100001001";
        ram[128] = "0b10111110111000111101000000000100";
        ram[129] = "0b11011110001100110100101011111101";
        ram[130] = "0b01100110000011110010100000000111";
        ram[131] = "0b00011001001011100100101110110011";
        ram[132] = "0b11000000110010111010100001010111";
        ram[133] = "0b01000101110010000111010000001111";
        ram[134] = "0b11010010000010110101111100111001";
        ram[135] = "0b10111001110100111111101111011011";
        ram[136] = "0b01010101011110011100000010111101";
        ram[137] = "0b00011010011000000011001000001010";
        ram[138] = "0b11010110101000010000000011000110";
        ram[139] = "0b01000000001011000111001001111001";
        ram[140] = "0b01100111100111110010010111111110";
        ram[141] = "0b11111011000111111010001111001100";
        ram[142] = "0b10001110101001011110100111111000";
        ram[143] = "0b11011011001100100010001011111000";
        ram[144] = "0b00111100011101010001011011011111";
        ram[145] = "0b11111101011000010110101100010101";
        ram[146] = "0b00101111010100000001111011001000";
        ram[147] = "0b10101101000001010101001010101011";
        ram[148] = "0b00110010001111011011010111111010";
        ram[149] = "0b11111101001000111000011101100000";
        ram[150] = "0b01010011001100010111101101001000";
        ram[151] = "0b00111110000000001101111110000010";
        ram[152] = "0b10011110010111000101011110111011";
        ram[153] = "0b11001010011011111000110010100000";
        ram[154] = "0b00011010100001110101011000101110";
        ram[155] = "0b11011111000101110110100111011011";
        ram[156] = "0b11010101010000101010100011110110";
        ram[157] = "0b00101000011111101111111111000011";
        ram[158] = "0b10101100011001110011001011000110";
        ram[159] = "0b10001100010011110101010101110011";
        ram[160] = "0b01101001010110110010011110110000";
        ram[161] = "0b10111011110010100101100011001000";
        ram[162] = "0b11100001111111111010001101011101";
        ram[163] = "0b10111000111100000001000110100000";
        ram[164] = "0b00010000111110100011110110011000";
        ram[165] = "0b11111101001000011000001110111000";
        ram[166] = "0b01001010111111001011010101101100";
        ram[167] = "0b00101101110100011101001101011011";
        ram[168] = "0b10011010010100111110010001111001";
        ram[169] = "0b10110110111110000100010101100101";
        ram[170] = "0b11010010100011100100100110111100";
        ram[171] = "0b01001011111110111001011110010000";
        ram[172] = "0b11100001110111011111001011011010";
        ram[173] = "0b10100100110010110111111000110011";
        ram[174] = "0b01100010111110110001001101000001";
        ram[175] = "0b11001110111001001100011011101000";
        ram[176] = "0b11101111001000001100101011011010";
        ram[177] = "0b00110110011101110100110000000001";
        ram[178] = "0b11010000011111101001111011111110";
        ram[179] = "0b00101011111100010001111110110100";
        ram[180] = "0b10010101110110111101101001001101";
        ram[181] = "0b10101110100100001001000110011000";
        ram[182] = "0b11101010101011011000111001110001";
        ram[183] = "0b01101011100100111101010110100000";
        ram[184] = "0b11010000100011101101000111010000";
        ram[185] = "0b10101111110001110010010111100000";
        ram[186] = "0b10001110001111000101101100101111";
        ram[187] = "0b10001110011101011001010010110111";
        ram[188] = "0b10001111111101101110001011111011";
        ram[189] = "0b11110010000100100010101101100100";
        ram[190] = "0b10001000100010001011100000010010";
        ram[191] = "0b10010000000011011111000000011100";
        ram[192] = "0b01001111101011010101111010100000";
        ram[193] = "0b01101000100011111100001100011100";
        ram[194] = "0b11010001110011111111000110010001";
        ram[195] = "0b10110011101010001100000110101101";
        ram[196] = "0b00101111001011110010001000011000";
        ram[197] = "0b10111110000011100001011101110111";
        ram[198] = "0b11101010011101010010110111111110";
        ram[199] = "0b10001011000000100001111110100001";
        ram[200] = "0b11100101101000001100110000001111";
        ram[201] = "0b10110101011011110111010011101000";
        ram[202] = "0b00011000101011001111001111010110";
        ram[203] = "0b11001110100010011110001010011001";
        ram[204] = "0b10110100101010000100111111100000";
        ram[205] = "0b11111101000100111110000010110111";
        ram[206] = "0b01111100110001000011101110000001";
        ram[207] = "0b11010010101011011010100011011001";
        ram[208] = "0b00010110010111111010001001100110";
        ram[209] = "0b10000000100101010111011100000101";
        ram[210] = "0b10010011110011000111001100010100";
        ram[211] = "0b00100001000110100001010001110111";
        ram[212] = "0b11100110101011010010000001100101";
        ram[213] = "0b01110111101101011111101010000110";
        ram[214] = "0b11000111010101000100001011110101";
        ram[215] = "0b11111011100111010011010111001111";
        ram[216] = "0b11101011110011011010111100001100";
        ram[217] = "0b01111011001111101000100110100000";
        ram[218] = "0b11010110010000010001101111010011";
        ram[219] = "0b10101110000111100111111001001001";
        ram[220] = "0b00000000001001010000111000101101";
        ram[221] = "0b00100000011100011011001101011110";
        ram[222] = "0b00100010011010000000000010111011";
        ram[223] = "0b01010111101110001110000010101111";
        ram[224] = "0b00100100011001000011011010011011";
        ram[225] = "0b11110000000010011011100100011110";
        ram[226] = "0b01010101011000111001000100011101";
        ram[227] = "0b01011001110111111010011010101010";
        ram[228] = "0b01111000110000010100001110001001";
        ram[229] = "0b11011001010110100101001101111111";
        ram[230] = "0b00100000011111010101101110100010";
        ram[231] = "0b00000010111001011011100111000101";
        ram[232] = "0b10000011001001100000001101110110";
        ram[233] = "0b01100010100101011100111110101001";
        ram[234] = "0b00010001110010000001100101101000";
        ram[235] = "0b01001110011100110100101001000001";
        ram[236] = "0b10110011010001110010110111001010";
        ram[237] = "0b01111011000101001010100101001010";
        ram[238] = "0b00011011010100010000000001010010";
        ram[239] = "0b10011010010100110010100100010101";
        ram[240] = "0b11010110000011110101011100111111";
        ram[241] = "0b10111100100110111100011011100100";
        ram[242] = "0b00101011011000001010010001110110";
        ram[243] = "0b10000001111001100111010000000000";
        ram[244] = "0b00001000101110100110111110110101";
        ram[245] = "0b01010111000110111110100100011111";
        ram[246] = "0b11110010100101101110110001101011";
        ram[247] = "0b00101010000011011101100100010101";
        ram[248] = "0b10110110011000110110010100100001";
        ram[249] = "0b11100111101110011111100110110110";
        ram[250] = "0b11111111001101000000010100101110";
        ram[251] = "0b11000101100001010101011001100100";
        ram[252] = "0b01010011101100000010110101011101";
        ram[253] = "0b10101001100111111000111110100001";
        ram[254] = "0b00001000101110100100011110011001";
        ram[255] = "0b01101110100001010000011101101010";


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


SC_MODULE(Blowfish_SetKey_ibkb) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Blowfish_SetKey_ibkb_ram* meminst;


SC_CTOR(Blowfish_SetKey_ibkb) {
meminst = new Blowfish_SetKey_ibkb_ram("Blowfish_SetKey_ibkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~Blowfish_SetKey_ibkb() {
    delete meminst;
}


};//endmodule
#endif
