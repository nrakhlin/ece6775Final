-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Blowfish_Decrypt_P_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 5; 
             MEM_SIZE    : integer := 18
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Blowfish_Decrypt_P_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11100001101000000010110100001100", 
    1 => "11100111011000010100111101001101", 
    2 => "11001001110010110101000101001110", 
    3 => "00100111101101110101111110011111", 
    4 => "10000001111111110110011110110001", 
    5 => "00000010010000000001111001100010", 
    6 => "10100101110100001111100101111110", 
    7 => "01101110100000010011011010010011", 
    8 => "01000110001010011010111101001110", 
    9 => "11110001011001010111001100010011", 
    10 => "01010111010000100011010100111011", 
    11 => "10001101101010000110100000001010", 
    12 => "00101110011010110011101010111000", 
    13 => "10010010000110110000101010101000", 
    14 => "00100101000100111011001111100100", 
    15 => "10111110011101011101010100110000", 
    16 => "10011111110000101011011110001000", 
    17 => "01101001100010001100001111001100" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

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

entity Blowfish_Decrypt_P is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 18;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Blowfish_Decrypt_P is
    component Blowfish_Decrypt_P_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Blowfish_Decrypt_P_rom_U :  component Blowfish_Decrypt_P_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


