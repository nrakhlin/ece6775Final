-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity createRoundKey_embkb_rom is 
    generic(
             DWIDTH     : integer := 8; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 176
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of createRoundKey_embkb_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 to 3=> "01101011", 4 to 7=> "01100101", 8 to 11=> "01111001", 12 to 15=> "00101110", 
    16 => "01011011", 17 to 19=> "01011010", 20 => "00111110", 21 to 23=> "00111111", 
    24 => "01000111", 25 to 27=> "01000110", 28 => "01101001", 29 to 31=> "01101000", 
    32 => "00011100", 33 to 34=> "00011111", 35 => "10100011", 36 => "00100010", 
    37 to 38=> "00100000", 39 => "10011100", 40 => "01100101", 41 to 42=> "01100110", 
    43 => "11011010", 44 => "00001100", 45 to 46=> "00001110", 47 => "10110010", 
    48 => "10110011", 49 => "10110100", 50 => "00101000", 51 => "01011101", 
    52 => "10010001", 53 => "10010100", 54 => "00001000", 55 => "11000001", 
    56 => "11110100", 57 => "11110010", 58 => "01101110", 59 => "00011011", 
    60 => "11111000", 61 => "11111100", 62 => "01100000", 63 => "10101001", 
    64 => "00001011", 65 => "01100100", 66 => "11111011", 67 => "00011100", 
    68 => "10011010", 69 => "11110000", 70 => "11110011", 71 => "11011101", 
    72 => "01101110", 73 => "00000010", 74 => "10011101", 75 => "11000110", 
    76 => "10010110", 77 => "11111110", 78 => "11111101", 79 => "01101111", 
    80 => "10100000", 81 => "00110000", 82 => "01010011", 83 => "10001100", 
    84 => "00111010", 85 => "11000000", 86 => "10100000", 87 => "01010001", 
    88 => "01010100", 89 => "11000010", 90 => "00111101", 91 => "10010111", 
    92 => "11000010", 93 => "00111100", 94 => "11000000", 95 => "11111000", 
    96 => "01101011", 97 => "10001010", 98 => "00010010", 99 => "10101001", 
    100 => "01010001", 101 => "01001010", 102 => "10110010", 103 => "11111000", 
    104 => "00000101", 105 => "10001000", 106 => "10001111", 107 => "01101111", 
    108 => "11000111", 109 => "10110100", 110 => "01001111", 111 => "10010111", 
    112 => "10100110", 113 => "00001110", 114 => "10011010", 115 => "01101111", 
    116 => "11110111", 117 => "01000100", 118 => "00101000", 119 => "10010111", 
    120 => "11110010", 121 => "11001100", 122 => "10100111", 123 => "11111000", 
    124 => "00110101", 125 => "01111000", 126 => "11101000", 127 => "01101111", 
    128 => "10011010", 129 => "10010101", 130 => "00110010", 131 => "11111001", 
    132 => "01101101", 133 => "11010001", 134 => "00011010", 135 => "01101110", 
    136 => "10011111", 137 => "00011101", 138 => "10111101", 139 => "10010110", 
    140 => "10101010", 141 => "01100101", 142 => "01010101", 143 => "11111001", 
    144 => "11001100", 145 => "01101001", 146 => "10101011", 147 => "01010101", 
    148 => "10100001", 149 => "10111000", 150 => "10110001", 151 => "00111011", 
    152 => "00111110", 153 => "10100101", 154 => "00001100", 155 => "10101101", 
    156 => "10010100", 157 => "11000000", 158 => "01011001", 159 => "01010100", 
    160 => "01000000", 161 => "10100010", 162 => "10001011", 163 => "01110111", 
    164 => "11100001", 165 => "00011010", 166 => "00111010", 167 => "01001100", 
    168 => "11011111", 169 => "10111111", 170 => "00110110", 171 => "11100001", 
    172 => "01001011", 173 => "01111111", 174 => "01101111", 175 => "10110101" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity createRoundKey_embkb is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 176;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of createRoundKey_embkb is
    component createRoundKey_embkb_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    createRoundKey_embkb_rom_U :  component createRoundKey_embkb_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


