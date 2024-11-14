-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mixColumns is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    state_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    state_ce0 : OUT STD_LOGIC;
    state_we0 : OUT STD_LOGIC;
    state_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    state_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of mixColumns is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal zext_ln256_fu_258_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln256_reg_369 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_268_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_378 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_fu_280_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_386 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal trunc_ln261_fu_286_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln261_reg_391 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln259_fu_274_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal column_0_reg_408 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_mixColumn_fu_246_ap_ready : STD_LOGIC;
    signal grp_mixColumn_fu_246_ap_done : STD_LOGIC;
    signal column_1_reg_414 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_2_reg_420 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_3_reg_426 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_2_fu_330_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_mixColumn_fu_246_ap_start : STD_LOGIC;
    signal grp_mixColumn_fu_246_ap_idle : STD_LOGIC;
    signal grp_mixColumn_fu_246_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_mixColumn_fu_246_ap_return_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_mixColumn_fu_246_ap_return_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_mixColumn_fu_246_ap_return_3 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_3_0_reg_49 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln268_fu_324_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal column_2_0_reg_61 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_1_0_reg_73 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_0_0_reg_85 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_0_reg_97 : STD_LOGIC_VECTOR (2 downto 0);
    signal column_3_1_reg_108 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln256_fu_262_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal column_2_1_reg_119 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_1_1_reg_130 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_0_1_reg_141 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_0_reg_152 : STD_LOGIC_VECTOR (2 downto 0);
    signal column_3_1_be_reg_163 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_2_1_be_reg_181 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_1_1_be_reg_199 : STD_LOGIC_VECTOR (7 downto 0);
    signal column_0_1_be_reg_217 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_1_reg_235 : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_mixColumn_fu_246_ap_start_reg : STD_LOGIC := '0';
    signal zext_ln261_fu_303_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln270_fu_364_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_fu_340_p6 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln_fu_290_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln261_fu_298_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln270_fu_336_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal shl_ln1_fu_351_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln270_fu_359_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);

    component mixColumn IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        column_0_read : IN STD_LOGIC_VECTOR (7 downto 0);
        column_1_read : IN STD_LOGIC_VECTOR (7 downto 0);
        column_2_read : IN STD_LOGIC_VECTOR (7 downto 0);
        column_3_read : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component encrypt_dut_mux_4cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (7 downto 0);
        din3 : IN STD_LOGIC_VECTOR (7 downto 0);
        din4 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    grp_mixColumn_fu_246 : component mixColumn
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_mixColumn_fu_246_ap_start,
        ap_done => grp_mixColumn_fu_246_ap_done,
        ap_idle => grp_mixColumn_fu_246_ap_idle,
        ap_ready => grp_mixColumn_fu_246_ap_ready,
        column_0_read => column_0_1_reg_141,
        column_1_read => column_1_1_reg_130,
        column_2_read => column_2_1_reg_119,
        column_3_read => column_3_1_reg_108,
        ap_return_0 => grp_mixColumn_fu_246_ap_return_0,
        ap_return_1 => grp_mixColumn_fu_246_ap_return_1,
        ap_return_2 => grp_mixColumn_fu_246_ap_return_2,
        ap_return_3 => grp_mixColumn_fu_246_ap_return_3);

    encrypt_dut_mux_4cud_U32 : component encrypt_dut_mux_4cud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 8,
        din3_WIDTH => 8,
        din4_WIDTH => 2,
        dout_WIDTH => 8)
    port map (
        din0 => column_0_reg_408,
        din1 => column_1_reg_414,
        din2 => column_2_reg_420,
        din3 => column_3_reg_426,
        din4 => trunc_ln270_fu_336_p1,
        dout => tmp_fu_340_p6);





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


    grp_mixColumn_fu_246_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_mixColumn_fu_246_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln259_fu_274_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                    grp_mixColumn_fu_246_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_mixColumn_fu_246_ap_ready = ap_const_logic_1)) then 
                    grp_mixColumn_fu_246_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    column_0_1_be_reg_217_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln261_reg_391 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                column_0_1_be_reg_217 <= state_q0;
            elsif ((((trunc_ln261_reg_391 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((trunc_ln261_reg_391 = ap_const_lv2_2) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((trunc_ln261_reg_391 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
                column_0_1_be_reg_217 <= column_0_1_reg_141;
            end if; 
        end if;
    end process;

    column_0_1_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                column_0_1_reg_141 <= column_0_1_be_reg_217;
            elsif (((icmp_ln256_fu_262_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                column_0_1_reg_141 <= column_0_0_reg_85;
            end if; 
        end if;
    end process;

    column_1_1_be_reg_199_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln261_reg_391 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                column_1_1_be_reg_199 <= state_q0;
            elsif ((((trunc_ln261_reg_391 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((trunc_ln261_reg_391 = ap_const_lv2_2) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((trunc_ln261_reg_391 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
                column_1_1_be_reg_199 <= column_1_1_reg_130;
            end if; 
        end if;
    end process;

    column_1_1_reg_130_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                column_1_1_reg_130 <= column_1_1_be_reg_199;
            elsif (((icmp_ln256_fu_262_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                column_1_1_reg_130 <= column_1_0_reg_73;
            end if; 
        end if;
    end process;

    column_2_1_be_reg_181_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln261_reg_391 = ap_const_lv2_2) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                column_2_1_be_reg_181 <= state_q0;
            elsif ((((trunc_ln261_reg_391 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((trunc_ln261_reg_391 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((trunc_ln261_reg_391 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
                column_2_1_be_reg_181 <= column_2_1_reg_119;
            end if; 
        end if;
    end process;

    column_2_1_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                column_2_1_reg_119 <= column_2_1_be_reg_181;
            elsif (((icmp_ln256_fu_262_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                column_2_1_reg_119 <= column_2_0_reg_61;
            end if; 
        end if;
    end process;

    column_3_1_be_reg_163_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((trunc_ln261_reg_391 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((trunc_ln261_reg_391 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((trunc_ln261_reg_391 = ap_const_lv2_2) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then 
                column_3_1_be_reg_163 <= column_3_1_reg_108;
            elsif (((trunc_ln261_reg_391 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                column_3_1_be_reg_163 <= state_q0;
            end if; 
        end if;
    end process;

    column_3_1_reg_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                column_3_1_reg_108 <= column_3_1_be_reg_163;
            elsif (((icmp_ln256_fu_262_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                column_3_1_reg_108 <= column_3_0_reg_49;
            end if; 
        end if;
    end process;

    i_0_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln268_fu_324_p2 = ap_const_lv1_1))) then 
                i_0_reg_97 <= i_reg_378;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_97 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_0_reg_152_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                j_0_reg_152 <= j_reg_386;
            elsif (((icmp_ln256_fu_262_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_152 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_1_reg_235_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln268_fu_324_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                j_1_reg_235 <= j_2_fu_330_p2;
            elsif (((grp_mixColumn_fu_246_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                j_1_reg_235 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln268_fu_324_p2 = ap_const_lv1_1))) then
                column_0_0_reg_85 <= column_0_reg_408;
                column_1_0_reg_73 <= column_1_reg_414;
                column_2_0_reg_61 <= column_2_reg_420;
                column_3_0_reg_49 <= column_3_reg_426;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_mixColumn_fu_246_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                column_0_reg_408 <= grp_mixColumn_fu_246_ap_return_0;
                column_1_reg_414 <= grp_mixColumn_fu_246_ap_return_1;
                column_2_reg_420 <= grp_mixColumn_fu_246_ap_return_2;
                column_3_reg_426 <= grp_mixColumn_fu_246_ap_return_3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_378 <= i_fu_268_p2;
                    zext_ln256_reg_369(2 downto 0) <= zext_ln256_fu_258_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_reg_386 <= j_fu_280_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln259_fu_274_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                trunc_ln261_reg_391 <= trunc_ln261_fu_286_p1;
            end if;
        end if;
    end process;
    zext_ln256_reg_369(3) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln259_fu_274_p2, ap_CS_fsm_state6, grp_mixColumn_fu_246_ap_done, ap_CS_fsm_state7, icmp_ln268_fu_324_p2, icmp_ln256_fu_262_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln256_fu_262_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln259_fu_274_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state6 => 
                if (((grp_mixColumn_fu_246_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (icmp_ln268_fu_324_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    add_ln261_fu_298_p2 <= std_logic_vector(unsigned(shl_ln_fu_290_p3) + unsigned(zext_ln256_reg_369));
    add_ln270_fu_359_p2 <= std_logic_vector(unsigned(shl_ln1_fu_351_p3) + unsigned(zext_ln256_reg_369));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln256_fu_262_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln256_fu_262_p2 = ap_const_lv1_1)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln256_fu_262_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln256_fu_262_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_mixColumn_fu_246_ap_start <= grp_mixColumn_fu_246_ap_start_reg;
    i_fu_268_p2 <= std_logic_vector(unsigned(i_0_reg_97) + unsigned(ap_const_lv3_1));
    icmp_ln256_fu_262_p2 <= "1" when (i_0_reg_97 = ap_const_lv3_4) else "0";
    icmp_ln259_fu_274_p2 <= "1" when (j_0_reg_152 = ap_const_lv3_4) else "0";
    icmp_ln268_fu_324_p2 <= "1" when (j_1_reg_235 = ap_const_lv3_4) else "0";
    j_2_fu_330_p2 <= std_logic_vector(unsigned(j_1_reg_235) + unsigned(ap_const_lv3_1));
    j_fu_280_p2 <= std_logic_vector(unsigned(j_0_reg_152) + unsigned(ap_const_lv3_1));
    shl_ln1_fu_351_p3 <= (trunc_ln270_fu_336_p1 & ap_const_lv2_0);
    shl_ln_fu_290_p3 <= (trunc_ln261_fu_286_p1 & ap_const_lv2_0);

    state_address0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state7, zext_ln261_fu_303_p1, zext_ln270_fu_364_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            state_address0 <= zext_ln270_fu_364_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            state_address0 <= zext_ln261_fu_303_p1(4 - 1 downto 0);
        else 
            state_address0 <= "XXXX";
        end if; 
    end process;


    state_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            state_ce0 <= ap_const_logic_1;
        else 
            state_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    state_d0 <= tmp_fu_340_p6;

    state_we0_assign_proc : process(ap_CS_fsm_state7, icmp_ln268_fu_324_p2)
    begin
        if (((icmp_ln268_fu_324_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            state_we0 <= ap_const_logic_1;
        else 
            state_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln261_fu_286_p1 <= j_0_reg_152(2 - 1 downto 0);
    trunc_ln270_fu_336_p1 <= j_1_reg_235(2 - 1 downto 0);
    zext_ln256_fu_258_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_97),4));
    zext_ln261_fu_303_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln261_fu_298_p2),64));
    zext_ln270_fu_364_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln270_fu_359_p2),64));
end behav;
