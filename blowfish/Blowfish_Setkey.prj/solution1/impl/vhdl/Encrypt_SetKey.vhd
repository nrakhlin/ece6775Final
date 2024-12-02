-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Encrypt_SetKey is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    left_read : IN STD_LOGIC_VECTOR (31 downto 0);
    right_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    P_ce0 : OUT STD_LOGIC;
    P_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    P_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    P_ce1 : OUT STD_LOGIC;
    P_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    S_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    S_ce0 : OUT STD_LOGIC;
    S_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    S_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    S_ce1 : OUT STD_LOGIC;
    S_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of Encrypt_SetKey is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv64_10 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010000";
    constant ap_const_lv64_11 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000010001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv56_1 : STD_LOGIC_VECTOR (55 downto 0) := "00000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv56_2 : STD_LOGIC_VECTOR (55 downto 0) := "00000000000000000000000000000000000000000000000000000010";
    constant ap_const_lv56_3 : STD_LOGIC_VECTOR (55 downto 0) := "00000000000000000000000000000000000000000000000000000011";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_183_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_350 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln49_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_171_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_tmp_1_reg_370 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal c_reg_375 : STD_LOGIC_VECTOR (7 downto 0);
    signal d_fu_260_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal d_reg_380 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln102_fu_280_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln102_reg_395 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal xor_ln51_fu_313_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal p_tmp_reg_140 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_b_read_assign_2_reg_150 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_0_reg_160 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln50_fu_189_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln102_fu_266_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_271_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_286_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_294_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal trunc_ln50_5_fu_214_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln50_4_fu_210_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln50_3_fu_206_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal trunc_ln50_2_fu_202_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal xor_ln97_1_fu_224_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal xor_ln97_fu_218_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln50_1_fu_198_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln50_fu_194_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal a_fu_230_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal b_fu_240_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln102_fu_302_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln102_1_fu_307_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal xor_ln56_fu_319_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_return_0_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);


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


    ap_return_0_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_0_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_0_preg <= xor_ln56_fu_319_p2;
                end if; 
            end if;
        end if;
    end process;


    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv32_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_1_preg <= grp_fu_171_p2;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_160_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_0_reg_160 <= i_reg_350;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_160 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    p_b_read_assign_2_reg_150_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                p_b_read_assign_2_reg_150 <= p_tmp_1_reg_370;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_b_read_assign_2_reg_150 <= right_read;
            end if; 
        end if;
    end process;

    p_tmp_reg_140_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                p_tmp_reg_140 <= xor_ln51_fu_313_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                p_tmp_reg_140 <= left_read;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                add_ln102_reg_395 <= add_ln102_fu_280_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                c_reg_375 <= xor_ln97_fu_218_p2(15 downto 8);
                d_reg_380 <= d_fu_260_p2;
                p_tmp_1_reg_370 <= grp_fu_171_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_350 <= i_fu_183_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln49_fu_177_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln49_fu_177_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;

    P_address0_assign_proc : process(ap_CS_fsm_state2, icmp_ln49_fu_177_p2, zext_ln50_fu_189_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
            if ((icmp_ln49_fu_177_p2 = ap_const_lv1_1)) then 
                P_address0 <= ap_const_lv64_10(5 - 1 downto 0);
            elsif ((icmp_ln49_fu_177_p2 = ap_const_lv1_0)) then 
                P_address0 <= zext_ln50_fu_189_p1(5 - 1 downto 0);
            else 
                P_address0 <= "XXXXX";
            end if;
        else 
            P_address0 <= "XXXXX";
        end if; 
    end process;

    P_address1 <= ap_const_lv64_11(5 - 1 downto 0);

    P_ce0_assign_proc : process(ap_CS_fsm_state2, icmp_ln49_fu_177_p2)
    begin
        if ((((icmp_ln49_fu_177_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((icmp_ln49_fu_177_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            P_ce0 <= ap_const_logic_1;
        else 
            P_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    P_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            P_ce1 <= ap_const_logic_1;
        else 
            P_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    S_address0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, zext_ln102_fu_266_p1, tmp_1_fu_286_p3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            S_address0 <= tmp_1_fu_286_p3(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            S_address0 <= zext_ln102_fu_266_p1(10 - 1 downto 0);
        else 
            S_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    S_address1_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, tmp_fu_271_p3, tmp_2_fu_294_p3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            S_address1 <= tmp_2_fu_294_p3(10 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            S_address1 <= tmp_fu_271_p3(10 - 1 downto 0);
        else 
            S_address1 <= "XXXXXXXXXX";
        end if; 
    end process;


    S_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            S_ce0 <= ap_const_logic_1;
        else 
            S_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    S_ce1_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            S_ce1 <= ap_const_logic_1;
        else 
            S_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    a_fu_230_p4 <= grp_fu_171_p2(31 downto 24);
    add_ln102_1_fu_307_p2 <= std_logic_vector(unsigned(S_q1) + unsigned(xor_ln102_fu_302_p2));
    add_ln102_fu_280_p2 <= std_logic_vector(unsigned(S_q0) + unsigned(S_q1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_0_assign_proc : process(ap_CS_fsm_state6, xor_ln56_fu_319_p2, ap_return_0_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_0 <= xor_ln56_fu_319_p2;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    ap_return_1_assign_proc : process(grp_fu_171_p2, ap_CS_fsm_state6, ap_return_1_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_1 <= grp_fu_171_p2;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;

    b_fu_240_p4 <= xor_ln97_1_fu_224_p2(23 downto 16);
    d_fu_260_p2 <= (trunc_ln50_fu_194_p1 xor trunc_ln50_1_fu_198_p1);
    grp_fu_171_p2 <= (p_tmp_reg_140 xor P_q0);
    i_fu_183_p2 <= std_logic_vector(unsigned(i_0_reg_160) + unsigned(ap_const_lv5_1));
    icmp_ln49_fu_177_p2 <= "1" when (i_0_reg_160 = ap_const_lv5_10) else "0";
    tmp_1_fu_286_p3 <= (ap_const_lv56_2 & c_reg_375);
    tmp_2_fu_294_p3 <= (ap_const_lv56_3 & d_reg_380);
    tmp_fu_271_p3 <= (ap_const_lv56_1 & b_fu_240_p4);
    trunc_ln50_1_fu_198_p1 <= p_tmp_reg_140(8 - 1 downto 0);
    trunc_ln50_2_fu_202_p1 <= p_tmp_reg_140(24 - 1 downto 0);
    trunc_ln50_3_fu_206_p1 <= P_q0(24 - 1 downto 0);
    trunc_ln50_4_fu_210_p1 <= p_tmp_reg_140(16 - 1 downto 0);
    trunc_ln50_5_fu_214_p1 <= P_q0(16 - 1 downto 0);
    trunc_ln50_fu_194_p1 <= P_q0(8 - 1 downto 0);
    xor_ln102_fu_302_p2 <= (add_ln102_reg_395 xor S_q0);
    xor_ln51_fu_313_p2 <= (p_b_read_assign_2_reg_150 xor add_ln102_1_fu_307_p2);
    xor_ln56_fu_319_p2 <= (p_b_read_assign_2_reg_150 xor P_q1);
    xor_ln97_1_fu_224_p2 <= (trunc_ln50_3_fu_206_p1 xor trunc_ln50_2_fu_202_p1);
    xor_ln97_fu_218_p2 <= (trunc_ln50_5_fu_214_p1 xor trunc_ln50_4_fu_210_p1);
    zext_ln102_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(a_fu_230_p4),64));
    zext_ln50_fu_189_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_160),64));
end behav;
