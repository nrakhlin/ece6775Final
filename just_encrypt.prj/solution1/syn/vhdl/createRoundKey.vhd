-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity createRoundKey is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    expandedKey_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    expandedKey_ce0 : OUT STD_LOGIC;
    expandedKey_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    roundKey_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    roundKey_ce0 : OUT STD_LOGIC;
    roundKey_we0 : OUT STD_LOGIC;
    roundKey_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ptr : IN STD_LOGIC_VECTOR (9 downto 0) );
end;


architecture behav of createRoundKey is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal trunc_ln320_fu_79_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln320_reg_167 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln316_fu_83_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln316_reg_172 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_93_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_180 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln320_1_fu_111_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln320_1_reg_185 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln316_fu_87_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_125_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_193 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln319_fu_119_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln320_2_fu_158_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln320_2_reg_203 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_0_reg_57 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_0_reg_68 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln320_2_fu_141_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln320_fu_163_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln320_1_fu_99_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal shl_ln_fu_103_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln319_fu_115_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln320_fu_131_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln320_1_fu_136_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln320_2_fu_146_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal shl_ln320_1_fu_150_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_0_reg_57_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln319_fu_119_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_57 <= i_reg_180;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_57 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_0_reg_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln316_fu_87_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_68 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                j_0_reg_68 <= j_reg_193;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln319_fu_119_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                add_ln320_2_reg_203 <= add_ln320_2_fu_158_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_180 <= i_fu_93_p2;
                    zext_ln316_reg_172(2 downto 0) <= zext_ln316_fu_83_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_reg_193 <= j_fu_125_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                trunc_ln320_reg_167 <= trunc_ln320_fu_79_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln316_fu_87_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    zext_ln320_1_reg_185(3 downto 2) <= zext_ln320_1_fu_111_p1(3 downto 2);
            end if;
        end if;
    end process;
    zext_ln316_reg_172(3) <= '0';
    zext_ln320_1_reg_185(1 downto 0) <= "00";
    zext_ln320_1_reg_185(7 downto 4) <= "0000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln316_fu_87_p2, ap_CS_fsm_state3, icmp_ln319_fu_119_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln316_fu_87_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln319_fu_119_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln320_1_fu_136_p2 <= std_logic_vector(unsigned(zext_ln320_1_reg_185) + unsigned(add_ln320_fu_131_p2));
    add_ln320_2_fu_158_p2 <= std_logic_vector(unsigned(zext_ln316_reg_172) + unsigned(shl_ln320_1_fu_150_p3));
    add_ln320_fu_131_p2 <= std_logic_vector(unsigned(trunc_ln320_reg_167) + unsigned(zext_ln319_fu_115_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln316_fu_87_p2)
    begin
        if ((((icmp_ln316_fu_87_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln316_fu_87_p2)
    begin
        if (((icmp_ln316_fu_87_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    expandedKey_address0 <= zext_ln320_2_fu_141_p1(8 - 1 downto 0);

    expandedKey_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            expandedKey_ce0 <= ap_const_logic_1;
        else 
            expandedKey_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_93_p2 <= std_logic_vector(unsigned(i_0_reg_57) + unsigned(ap_const_lv3_1));
    icmp_ln316_fu_87_p2 <= "1" when (i_0_reg_57 = ap_const_lv3_4) else "0";
    icmp_ln319_fu_119_p2 <= "1" when (j_0_reg_68 = ap_const_lv3_4) else "0";
    j_fu_125_p2 <= std_logic_vector(unsigned(j_0_reg_68) + unsigned(ap_const_lv3_1));
    roundKey_address0 <= zext_ln320_fu_163_p1(4 - 1 downto 0);

    roundKey_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            roundKey_ce0 <= ap_const_logic_1;
        else 
            roundKey_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    roundKey_d0 <= expandedKey_q0;

    roundKey_we0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            roundKey_we0 <= ap_const_logic_1;
        else 
            roundKey_we0 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln320_1_fu_150_p3 <= (trunc_ln320_2_fu_146_p1 & ap_const_lv2_0);
    shl_ln_fu_103_p3 <= (trunc_ln320_1_fu_99_p1 & ap_const_lv2_0);
    trunc_ln320_1_fu_99_p1 <= i_0_reg_57(2 - 1 downto 0);
    trunc_ln320_2_fu_146_p1 <= j_0_reg_68(2 - 1 downto 0);
    trunc_ln320_fu_79_p1 <= ptr(8 - 1 downto 0);
    zext_ln316_fu_83_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_57),4));
    zext_ln319_fu_115_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_68),8));
    zext_ln320_1_fu_111_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_103_p3),8));
    zext_ln320_2_fu_141_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln320_1_fu_136_p2),64));
    zext_ln320_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln320_2_reg_203),64));
end behav;
