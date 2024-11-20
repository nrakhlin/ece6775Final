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
    P_0_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_1_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_2_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_3_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_4_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_5_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_6_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_7_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_8_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_9_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_10_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_11_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_12_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_13_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_14_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_15_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_16_read : IN STD_LOGIC_VECTOR (31 downto 0);
    P_17_read : IN STD_LOGIC_VECTOR (31 downto 0);
    S_0_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    S_0_ce0 : OUT STD_LOGIC;
    S_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    S_1_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    S_1_ce0 : OUT STD_LOGIC;
    S_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    S_2_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    S_2_ce0 : OUT STD_LOGIC;
    S_2_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    S_3_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    S_3_ce0 : OUT STD_LOGIC;
    S_3_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of Encrypt_SetKey is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv5_3 : STD_LOGIC_VECTOR (4 downto 0) := "00011";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_const_lv5_5 : STD_LOGIC_VECTOR (4 downto 0) := "00101";
    constant ap_const_lv5_6 : STD_LOGIC_VECTOR (4 downto 0) := "00110";
    constant ap_const_lv5_7 : STD_LOGIC_VECTOR (4 downto 0) := "00111";
    constant ap_const_lv5_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_const_lv5_9 : STD_LOGIC_VECTOR (4 downto 0) := "01001";
    constant ap_const_lv5_A : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_const_lv5_B : STD_LOGIC_VECTOR (4 downto 0) := "01011";
    constant ap_const_lv5_C : STD_LOGIC_VECTOR (4 downto 0) := "01100";
    constant ap_const_lv5_D : STD_LOGIC_VECTOR (4 downto 0) := "01101";
    constant ap_const_lv5_E : STD_LOGIC_VECTOR (4 downto 0) := "01110";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_tmp_reg_228 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_b_read_assign_reg_238 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_0_reg_248 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln54_fu_310_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln54_reg_456 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln54_reg_456_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_316_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_reg_460 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal localLeft_fu_322_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal localLeft_reg_465 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal grp_feistel_fu_297_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_reg_471 : STD_LOGIC_VECTOR (31 downto 0);
    signal localRight_fu_329_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal grp_feistel_fu_297_ap_start : STD_LOGIC;
    signal grp_feistel_fu_297_ap_done : STD_LOGIC;
    signal grp_feistel_fu_297_ap_idle : STD_LOGIC;
    signal grp_feistel_fu_297_ap_ready : STD_LOGIC;
    signal grp_feistel_fu_297_x : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_feistel_fu_297_S_0_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_feistel_fu_297_S_0_ce0 : STD_LOGIC;
    signal grp_feistel_fu_297_S_1_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_feistel_fu_297_S_1_ce0 : STD_LOGIC;
    signal grp_feistel_fu_297_S_2_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_feistel_fu_297_S_2_ce0 : STD_LOGIC;
    signal grp_feistel_fu_297_S_3_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_feistel_fu_297_S_3_ce0 : STD_LOGIC;
    signal ap_phi_mux_p_tmp_phi_fu_231_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_phi_mux_i_0_phi_fu_252_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_phi_ln55_reg_260 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_feistel_fu_297_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal xor_ln63_fu_339_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal xor_ln62_fu_334_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_406 : BOOLEAN;
    signal ap_condition_317 : BOOLEAN;

    component feistel IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        x : IN STD_LOGIC_VECTOR (31 downto 0);
        S_0_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        S_0_ce0 : OUT STD_LOGIC;
        S_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        S_1_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        S_1_ce0 : OUT STD_LOGIC;
        S_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        S_2_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        S_2_ce0 : OUT STD_LOGIC;
        S_2_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        S_3_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        S_3_ce0 : OUT STD_LOGIC;
        S_3_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_feistel_fu_297 : component feistel
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_feistel_fu_297_ap_start,
        ap_done => grp_feistel_fu_297_ap_done,
        ap_idle => grp_feistel_fu_297_ap_idle,
        ap_ready => grp_feistel_fu_297_ap_ready,
        x => grp_feistel_fu_297_x,
        S_0_address0 => grp_feistel_fu_297_S_0_address0,
        S_0_ce0 => grp_feistel_fu_297_S_0_ce0,
        S_0_q0 => S_0_q0,
        S_1_address0 => grp_feistel_fu_297_S_1_address0,
        S_1_ce0 => grp_feistel_fu_297_S_1_ce0,
        S_1_q0 => S_1_q0,
        S_2_address0 => grp_feistel_fu_297_S_2_address0,
        S_2_ce0 => grp_feistel_fu_297_S_2_ce0,
        S_2_q0 => S_2_q0,
        S_3_address0 => grp_feistel_fu_297_S_3_address0,
        S_3_ce0 => grp_feistel_fu_297_S_3_ce0,
        S_3_q0 => S_3_q0,
        ap_return => grp_feistel_fu_297_ap_return);





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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_feistel_fu_297_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_feistel_fu_297_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln54_fu_310_p2 = ap_const_lv1_0))) then 
                    grp_feistel_fu_297_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_feistel_fu_297_ap_ready = ap_const_logic_1)) then 
                    grp_feistel_fu_297_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_phi_reg_pp0_iter0_phi_ln55_reg_260_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_317)) then
                if ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_0)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_0_read;
                elsif ((ap_const_boolean_1 = ap_condition_406)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_15_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_E)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_14_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_D)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_13_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_C)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_12_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_B)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_11_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_A)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_10_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_9)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_9_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_8)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_8_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_7)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_7_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_6)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_6_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_5)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_5_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_4)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_4_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_3)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_3_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_2)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_2_read;
                elsif ((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_1)) then 
                    ap_phi_reg_pp0_iter0_phi_ln55_reg_260 <= P_1_read;
                end if;
            end if; 
        end if;
    end process;

    i_0_reg_248_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln54_reg_456 = ap_const_lv1_0))) then 
                i_0_reg_248 <= i_reg_460;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_248 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    p_b_read_assign_reg_238_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (icmp_ln54_reg_456_pp0_iter1_reg = ap_const_lv1_0))) then 
                p_b_read_assign_reg_238 <= localLeft_reg_465;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_b_read_assign_reg_238 <= right_read;
            end if; 
        end if;
    end process;

    p_tmp_reg_228_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (icmp_ln54_reg_456_pp0_iter1_reg = ap_const_lv1_0))) then 
                p_tmp_reg_228 <= localRight_fu_329_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                p_tmp_reg_228 <= left_read;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                i_reg_460 <= i_fu_316_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln54_reg_456 <= icmp_ln54_fu_310_p2;
                icmp_ln54_reg_456_pp0_iter1_reg <= icmp_ln54_reg_456;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (icmp_ln54_reg_456 = ap_const_lv1_0))) then
                localLeft_reg_465 <= localLeft_fu_322_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln54_reg_456 = ap_const_lv1_0))) then
                tmp_1_reg_471 <= grp_feistel_fu_297_ap_return;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln54_fu_310_p2, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, ap_block_pp0_stage1_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (icmp_ln54_fu_310_p2 = ap_const_lv1_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (icmp_ln54_fu_310_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((not(((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    S_0_address0 <= grp_feistel_fu_297_S_0_address0;
    S_0_ce0 <= grp_feistel_fu_297_S_0_ce0;
    S_1_address0 <= grp_feistel_fu_297_S_1_address0;
    S_1_ce0 <= grp_feistel_fu_297_S_1_ce0;
    S_2_address0 <= grp_feistel_fu_297_S_2_address0;
    S_2_ce0 <= grp_feistel_fu_297_S_2_ce0;
    S_3_address0 <= grp_feistel_fu_297_S_3_address0;
    S_3_ce0 <= grp_feistel_fu_297_S_3_ce0;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state6 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_317_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, icmp_ln54_fu_310_p2, ap_enable_reg_pp0_iter0)
    begin
                ap_condition_317 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln54_fu_310_p2 = ap_const_lv1_0));
    end process;


    ap_condition_406_assign_proc : process(ap_phi_mux_i_0_phi_fu_252_p4)
    begin
                ap_condition_406 <= (not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_0)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_E)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_D)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_C)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_B)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_A)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_9)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_8)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_7)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_6)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_5)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_4)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_3)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_2)) and not((ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_1)));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln54_fu_310_p2)
    begin
        if ((icmp_ln54_fu_310_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_0_phi_fu_252_p4_assign_proc : process(i_0_reg_248, ap_CS_fsm_pp0_stage0, icmp_ln54_reg_456, i_reg_460, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln54_reg_456 = ap_const_lv1_0))) then 
            ap_phi_mux_i_0_phi_fu_252_p4 <= i_reg_460;
        else 
            ap_phi_mux_i_0_phi_fu_252_p4 <= i_0_reg_248;
        end if; 
    end process;


    ap_phi_mux_p_tmp_phi_fu_231_p4_assign_proc : process(p_tmp_reg_228, icmp_ln54_reg_456_pp0_iter1_reg, ap_CS_fsm_pp0_stage1, localRight_fu_329_p2, ap_enable_reg_pp0_iter1, ap_block_pp0_stage1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (icmp_ln54_reg_456_pp0_iter1_reg = ap_const_lv1_0))) then 
            ap_phi_mux_p_tmp_phi_fu_231_p4 <= localRight_fu_329_p2;
        else 
            ap_phi_mux_p_tmp_phi_fu_231_p4 <= p_tmp_reg_228;
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

    ap_return_0 <= xor_ln63_fu_339_p2;
    ap_return_1 <= xor_ln62_fu_334_p2;
    grp_feistel_fu_297_ap_start <= grp_feistel_fu_297_ap_start_reg;
    grp_feistel_fu_297_x <= (ap_phi_reg_pp0_iter0_phi_ln55_reg_260 xor ap_phi_mux_p_tmp_phi_fu_231_p4);
    i_fu_316_p2 <= std_logic_vector(unsigned(ap_phi_mux_i_0_phi_fu_252_p4) + unsigned(ap_const_lv5_1));
    icmp_ln54_fu_310_p2 <= "1" when (ap_phi_mux_i_0_phi_fu_252_p4 = ap_const_lv5_10) else "0";
    localLeft_fu_322_p2 <= (ap_phi_reg_pp0_iter0_phi_ln55_reg_260 xor ap_phi_mux_p_tmp_phi_fu_231_p4);
    localRight_fu_329_p2 <= (tmp_1_reg_471 xor p_b_read_assign_reg_238);
    xor_ln62_fu_334_p2 <= (p_tmp_reg_228 xor P_16_read);
    xor_ln63_fu_339_p2 <= (p_b_read_assign_reg_238 xor P_17_read);
end behav;
