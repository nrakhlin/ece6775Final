-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity aes_main_expandedlbW_rom is 
    generic(
             DWIDTH     : integer := 8; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 176
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of aes_main_expandedlbW_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01010100", 1 => "01101000", 2 => "01100001", 3 => "01110100", 
    4 => "01110011", 5 => "00100000", 6 => "01101101", 7 => "01111001", 
    8 => "00100000", 9 => "01001011", 10 => "01110101", 11 => "01101110", 
    12 => "01100111", 13 => "00100000", 14 => "01000110", 15 => "01110101", 
    16 => "11100010", 17 => "00110010", 18 => "11111100", 19 => "11110001", 
    20 => "10010001", 21 => "00010010", 22 => "10010001", 23 => "10001000", 
    24 => "10110001", 25 => "01011001", 26 => "11100100", 27 => "11100110", 
    28 => "11010110", 29 => "01111001", 30 => "10100010", 31 => "10010011", 
    32 => "01010110", 33 => "00001000", 34 => "00100000", 35 => "00000111", 
    36 => "11000111", 37 => "00011010", 38 => "10110001", 39 => "10001111", 
    40 => "01110110", 41 => "01000011", 42 => "01010101", 43 => "01101001", 
    44 => "10100000", 45 => "00111010", 46 => "11110111", 47 => "11111010", 
    48 => "11010010", 49 => "01100000", 50 => "00001101", 51 => "11100111", 
    52 => "00010101", 53 => "01111010", 54 => "10111100", 55 => "01101000", 
    56 => "01100011", 57 => "00111001", 58 => "11101001", 59 => "00000001", 
    60 => "11000011", 61 => "00000011", 62 => "00011110", 63 => "11111011", 
    64 => "10100001", 65 => "00010010", 66 => "00000010", 67 => "11001001", 
    68 => "10110100", 69 => "01101000", 70 => "10111110", 71 => "10100001", 
    72 => "11010111", 73 => "01010001", 74 => "01010111", 75 => "10100000", 
    76 => "00010100", 77 => "01010010", 78 => "01001001", 79 => "01011011", 
    80 => "10110001", 81 => "00101001", 82 => "00111011", 83 => "00110011", 
    84 => "00000101", 85 => "01000001", 86 => "10000101", 87 => "10010010", 
    88 => "11010010", 89 => "00010000", 90 => "11010010", 91 => "00110010", 
    92 => "11000110", 93 => "01000010", 94 => "10011011", 95 => "01101001", 
    96 => "10111101", 97 => "00111101", 98 => "11000010", 99 => "10000111", 
    100 => "10111000", 101 => "01111100", 102 => "01000111", 103 => "00010101", 
    104 => "01101010", 105 => "01101100", 106 => "10010101", 107 => "00100111", 
    108 => "10101100", 109 => "00101110", 110 => "00001110", 111 => "01001110", 
    112 => "11001100", 113 => "10010110", 114 => "11101101", 115 => "00010110", 
    116 => "01110100", 117 => "11101010", 118 => "10101010", 119 => "00000011", 
    120 => "00011110", 121 => "10000110", 122 => "00111111", 123 => "00100100", 
    124 => "10110010", 125 => "10101000", 126 => "00110001", 127 => "01101010", 
    128 => "10001110", 129 => "01010001", 130 => "11101111", 131 => "00100001", 
    132 => "11111010", 133 => "10111011", 134 => "01000101", 135 => "00100010", 
    136 => "11100100", 137 => "00111101", 138 => "01111010", 139 => "00000110", 
    140 => "01010110", 141 => "10010101", 142 => "01001011", 143 => "01101100", 
    144 => "10111111", 145 => "11100010", 146 => "10111111", 147 => "10010000", 
    148 => "01000101", 149 => "01011001", 150 => "11111010", 151 => "10110010", 
    152 => "10100001", 153 => "01100100", 154 => "10000000", 155 => "10110100", 
    156 => "11110111", 157 => "11110001", 158 => "11001011", 159 => "11011000", 
    160 => "00101000", 161 => "11111101", 162 => "11011110", 163 => "11111000", 
    164 => "01101101", 165 => "10100100", 166 => "00100100", 167 => "01001010", 
    168 => "11001100", 169 => "11000000", 170 => "10100100", 171 => "11111110", 
    172 => "00111011", 173 => "00110001", 174 => "01101111", 175 => "00100110" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "block";

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

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem(CONV_INTEGER(addr1_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity aes_main_expandedlbW is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 176;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of aes_main_expandedlbW is
    component aes_main_expandedlbW_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    aes_main_expandedlbW_rom_U :  component aes_main_expandedlbW_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1);

end architecture;


