-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity aes_decrypt is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_r_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    key_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    key_ce0 : OUT STD_LOGIC;
    key_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of aes_decrypt is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal zext_ln72_fu_152_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln72_reg_302 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_162_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_310 : STD_LOGIC_VECTOR (2 downto 0);
    signal shl_ln_fu_172_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln_reg_315 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln72_fu_156_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_190_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_323 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln75_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln77_1_fu_218_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln77_1_reg_333 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln88_fu_227_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln88_reg_338 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal i_10_fu_237_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_10_reg_346 : STD_LOGIC_VECTOR (2 downto 0);
    signal shl_ln2_fu_247_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln2_reg_351 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln88_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_3_fu_265_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_3_reg_359 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal icmp_ln91_fu_259_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln93_1_fu_293_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln93_1_reg_369 : STD_LOGIC_VECTOR (3 downto 0);
    signal expandedKey_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal expandedKey_ce0 : STD_LOGIC;
    signal expandedKey_we0 : STD_LOGIC;
    signal expandedKey_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal block_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal block_ce0 : STD_LOGIC;
    signal block_we0 : STD_LOGIC;
    signal block_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal block_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal block_ce1 : STD_LOGIC;
    signal block_we1 : STD_LOGIC;
    signal block_q1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes_invMain_fu_133_ap_start : STD_LOGIC;
    signal grp_aes_invMain_fu_133_ap_done : STD_LOGIC;
    signal grp_aes_invMain_fu_133_ap_idle : STD_LOGIC;
    signal grp_aes_invMain_fu_133_ap_ready : STD_LOGIC;
    signal grp_aes_invMain_fu_133_state_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_aes_invMain_fu_133_state_ce0 : STD_LOGIC;
    signal grp_aes_invMain_fu_133_state_we0 : STD_LOGIC;
    signal grp_aes_invMain_fu_133_state_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes_invMain_fu_133_state_address1 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_aes_invMain_fu_133_state_ce1 : STD_LOGIC;
    signal grp_aes_invMain_fu_133_state_we1 : STD_LOGIC;
    signal grp_aes_invMain_fu_133_state_d1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes_invMain_fu_133_expandedKey_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes_invMain_fu_133_expandedKey_ce0 : STD_LOGIC;
    signal grp_expandKey_fu_141_ap_start : STD_LOGIC;
    signal grp_expandKey_fu_141_ap_done : STD_LOGIC;
    signal grp_expandKey_fu_141_ap_idle : STD_LOGIC;
    signal grp_expandKey_fu_141_ap_ready : STD_LOGIC;
    signal grp_expandKey_fu_141_expandedKey_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_expandKey_fu_141_expandedKey_ce0 : STD_LOGIC;
    signal grp_expandKey_fu_141_expandedKey_we0 : STD_LOGIC;
    signal grp_expandKey_fu_141_expandedKey_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_expandKey_fu_141_key_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_expandKey_fu_141_key_ce0 : STD_LOGIC;
    signal i_0_reg_89 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_0_reg_100 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal i_1_reg_111 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal j_1_reg_122 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal grp_aes_invMain_fu_133_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_expandKey_fu_141_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal zext_ln77_fu_201_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln77_1_fu_223_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln93_fu_288_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln93_1_fu_298_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln77_fu_168_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln75_fu_180_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln77_fu_196_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln77_1_fu_206_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal shl_ln77_1_fu_210_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln93_fu_243_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln93_1_fu_271_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal shl_ln93_1_fu_275_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln93_fu_283_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln91_fu_255_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);

    component aes_invMain IS
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
        state_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        state_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
        state_ce1 : OUT STD_LOGIC;
        state_we1 : OUT STD_LOGIC;
        state_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        state_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
        expandedKey_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        expandedKey_ce0 : OUT STD_LOGIC;
        expandedKey_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component expandKey IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        expandedKey_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        expandedKey_ce0 : OUT STD_LOGIC;
        expandedKey_we0 : OUT STD_LOGIC;
        expandedKey_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        expandedKey_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        key_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        key_ce0 : OUT STD_LOGIC;
        key_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component aes_decrypt_expaneOg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (7 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component aes_decrypt_block IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (7 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        address1 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (7 downto 0);
        q1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    expandedKey_U : component aes_decrypt_expaneOg
    generic map (
        DataWidth => 8,
        AddressRange => 176,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => expandedKey_address0,
        ce0 => expandedKey_ce0,
        we0 => expandedKey_we0,
        d0 => grp_expandKey_fu_141_expandedKey_d0,
        q0 => expandedKey_q0);

    block_U : component aes_decrypt_block
    generic map (
        DataWidth => 8,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => block_address0,
        ce0 => block_ce0,
        we0 => block_we0,
        d0 => block_d0,
        q0 => block_q0,
        address1 => grp_aes_invMain_fu_133_state_address1,
        ce1 => block_ce1,
        we1 => block_we1,
        d1 => grp_aes_invMain_fu_133_state_d1,
        q1 => block_q1);

    grp_aes_invMain_fu_133 : component aes_invMain
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_aes_invMain_fu_133_ap_start,
        ap_done => grp_aes_invMain_fu_133_ap_done,
        ap_idle => grp_aes_invMain_fu_133_ap_idle,
        ap_ready => grp_aes_invMain_fu_133_ap_ready,
        state_address0 => grp_aes_invMain_fu_133_state_address0,
        state_ce0 => grp_aes_invMain_fu_133_state_ce0,
        state_we0 => grp_aes_invMain_fu_133_state_we0,
        state_d0 => grp_aes_invMain_fu_133_state_d0,
        state_q0 => block_q0,
        state_address1 => grp_aes_invMain_fu_133_state_address1,
        state_ce1 => grp_aes_invMain_fu_133_state_ce1,
        state_we1 => grp_aes_invMain_fu_133_state_we1,
        state_d1 => grp_aes_invMain_fu_133_state_d1,
        state_q1 => block_q1,
        expandedKey_address0 => grp_aes_invMain_fu_133_expandedKey_address0,
        expandedKey_ce0 => grp_aes_invMain_fu_133_expandedKey_ce0,
        expandedKey_q0 => expandedKey_q0);

    grp_expandKey_fu_141 : component expandKey
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_expandKey_fu_141_ap_start,
        ap_done => grp_expandKey_fu_141_ap_done,
        ap_idle => grp_expandKey_fu_141_ap_idle,
        ap_ready => grp_expandKey_fu_141_ap_ready,
        expandedKey_address0 => grp_expandKey_fu_141_expandedKey_address0,
        expandedKey_ce0 => grp_expandKey_fu_141_expandedKey_ce0,
        expandedKey_we0 => grp_expandKey_fu_141_expandedKey_we0,
        expandedKey_d0 => grp_expandKey_fu_141_expandedKey_d0,
        expandedKey_q0 => expandedKey_q0,
        key_address0 => grp_expandKey_fu_141_key_address0,
        key_ce0 => grp_expandKey_fu_141_key_ce0,
        key_q0 => key_q0);





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


    grp_aes_invMain_fu_133_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_aes_invMain_fu_133_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    grp_aes_invMain_fu_133_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_aes_invMain_fu_133_ap_ready = ap_const_logic_1)) then 
                    grp_aes_invMain_fu_133_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_expandKey_fu_141_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_expandKey_fu_141_ap_start_reg <= ap_const_logic_0;
            else
                if (((icmp_ln72_fu_156_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_expandKey_fu_141_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_expandKey_fu_141_ap_ready = ap_const_logic_1)) then 
                    grp_expandKey_fu_141_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln75_fu_184_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_89 <= i_reg_310;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_89 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    i_1_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln91_fu_259_p2 = ap_const_lv1_1))) then 
                i_1_reg_111 <= i_10_reg_346;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_aes_invMain_fu_133_ap_done = ap_const_logic_1))) then 
                i_1_reg_111 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_0_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln72_fu_156_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_100 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                j_0_reg_100 <= j_reg_323;
            end if; 
        end if;
    end process;

    j_1_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln88_fu_231_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                j_1_reg_122 <= ap_const_lv3_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                j_1_reg_122 <= j_3_reg_359;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln75_fu_184_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                add_ln77_1_reg_333 <= add_ln77_1_fu_218_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln91_fu_259_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9))) then
                add_ln93_1_reg_369 <= add_ln93_1_fu_293_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                i_10_reg_346 <= i_10_fu_237_p2;
                    zext_ln88_reg_338(2 downto 0) <= zext_ln88_fu_227_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_310 <= i_fu_162_p2;
                    zext_ln72_reg_302(2 downto 0) <= zext_ln72_fu_152_p1(2 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                j_3_reg_359 <= j_3_fu_265_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_reg_323 <= j_fu_190_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln88_fu_231_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    shl_ln2_reg_351(3 downto 2) <= shl_ln2_fu_247_p3(3 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln72_fu_156_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    shl_ln_reg_315(3 downto 2) <= shl_ln_fu_172_p3(3 downto 2);
            end if;
        end if;
    end process;
    zext_ln72_reg_302(3) <= '0';
    shl_ln_reg_315(1 downto 0) <= "00";
    zext_ln88_reg_338(3) <= '0';
    shl_ln2_reg_351(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln72_fu_156_p2, ap_CS_fsm_state3, icmp_ln75_fu_184_p2, ap_CS_fsm_state8, icmp_ln88_fu_231_p2, ap_CS_fsm_state9, icmp_ln91_fu_259_p2, grp_aes_invMain_fu_133_ap_done, grp_expandKey_fu_141_ap_done, ap_CS_fsm_state7, ap_CS_fsm_state5)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln72_fu_156_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln75_fu_184_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (grp_expandKey_fu_141_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (grp_aes_invMain_fu_133_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state8 => 
                if (((icmp_ln88_fu_231_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln91_fu_259_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    add_ln77_1_fu_218_p2 <= std_logic_vector(unsigned(shl_ln77_1_fu_210_p3) + unsigned(zext_ln72_reg_302));
    add_ln77_fu_196_p2 <= std_logic_vector(unsigned(zext_ln75_fu_180_p1) + unsigned(shl_ln_reg_315));
    add_ln93_1_fu_293_p2 <= std_logic_vector(unsigned(zext_ln91_fu_255_p1) + unsigned(shl_ln2_reg_351));
    add_ln93_fu_283_p2 <= std_logic_vector(unsigned(shl_ln93_1_fu_275_p3) + unsigned(zext_ln88_reg_338));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state8, icmp_ln88_fu_231_p2)
    begin
        if ((((icmp_ln88_fu_231_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state8, icmp_ln88_fu_231_p2)
    begin
        if (((icmp_ln88_fu_231_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    block_address0_assign_proc : process(ap_CS_fsm_state9, grp_aes_invMain_fu_133_state_address0, ap_CS_fsm_state4, ap_CS_fsm_state7, zext_ln77_1_fu_223_p1, zext_ln93_fu_288_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            block_address0 <= zext_ln93_fu_288_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            block_address0 <= zext_ln77_1_fu_223_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            block_address0 <= grp_aes_invMain_fu_133_state_address0;
        else 
            block_address0 <= "XXXX";
        end if; 
    end process;


    block_ce0_assign_proc : process(ap_CS_fsm_state9, grp_aes_invMain_fu_133_state_ce0, ap_CS_fsm_state4, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            block_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            block_ce0 <= grp_aes_invMain_fu_133_state_ce0;
        else 
            block_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    block_ce1_assign_proc : process(grp_aes_invMain_fu_133_state_ce1, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            block_ce1 <= grp_aes_invMain_fu_133_state_ce1;
        else 
            block_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    block_d0_assign_proc : process(input_r_q0, grp_aes_invMain_fu_133_state_d0, ap_CS_fsm_state4, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            block_d0 <= input_r_q0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            block_d0 <= grp_aes_invMain_fu_133_state_d0;
        else 
            block_d0 <= "XXXXXXXX";
        end if; 
    end process;


    block_we0_assign_proc : process(grp_aes_invMain_fu_133_state_we0, ap_CS_fsm_state4, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            block_we0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            block_we0 <= grp_aes_invMain_fu_133_state_we0;
        else 
            block_we0 <= ap_const_logic_0;
        end if; 
    end process;


    block_we1_assign_proc : process(grp_aes_invMain_fu_133_state_we1, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            block_we1 <= grp_aes_invMain_fu_133_state_we1;
        else 
            block_we1 <= ap_const_logic_0;
        end if; 
    end process;


    expandedKey_address0_assign_proc : process(grp_aes_invMain_fu_133_expandedKey_address0, grp_expandKey_fu_141_expandedKey_address0, ap_CS_fsm_state7, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            expandedKey_address0 <= grp_expandKey_fu_141_expandedKey_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            expandedKey_address0 <= grp_aes_invMain_fu_133_expandedKey_address0;
        else 
            expandedKey_address0 <= "XXXXXXXX";
        end if; 
    end process;


    expandedKey_ce0_assign_proc : process(grp_aes_invMain_fu_133_expandedKey_ce0, grp_expandKey_fu_141_expandedKey_ce0, ap_CS_fsm_state7, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            expandedKey_ce0 <= grp_expandKey_fu_141_expandedKey_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            expandedKey_ce0 <= grp_aes_invMain_fu_133_expandedKey_ce0;
        else 
            expandedKey_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    expandedKey_we0_assign_proc : process(grp_expandKey_fu_141_expandedKey_we0, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            expandedKey_we0 <= grp_expandKey_fu_141_expandedKey_we0;
        else 
            expandedKey_we0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_aes_invMain_fu_133_ap_start <= grp_aes_invMain_fu_133_ap_start_reg;
    grp_expandKey_fu_141_ap_start <= grp_expandKey_fu_141_ap_start_reg;
    i_10_fu_237_p2 <= std_logic_vector(unsigned(i_1_reg_111) + unsigned(ap_const_lv3_1));
    i_fu_162_p2 <= std_logic_vector(unsigned(i_0_reg_89) + unsigned(ap_const_lv3_1));
    icmp_ln72_fu_156_p2 <= "1" when (i_0_reg_89 = ap_const_lv3_4) else "0";
    icmp_ln75_fu_184_p2 <= "1" when (j_0_reg_100 = ap_const_lv3_4) else "0";
    icmp_ln88_fu_231_p2 <= "1" when (i_1_reg_111 = ap_const_lv3_4) else "0";
    icmp_ln91_fu_259_p2 <= "1" when (j_1_reg_122 = ap_const_lv3_4) else "0";
    input_r_address0 <= zext_ln77_fu_201_p1(4 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    j_3_fu_265_p2 <= std_logic_vector(unsigned(j_1_reg_122) + unsigned(ap_const_lv3_1));
    j_fu_190_p2 <= std_logic_vector(unsigned(j_0_reg_100) + unsigned(ap_const_lv3_1));
    key_address0 <= grp_expandKey_fu_141_key_address0;
    key_ce0 <= grp_expandKey_fu_141_key_ce0;
    output_r_address0 <= zext_ln93_1_fu_298_p1(4 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= block_q0;

    output_r_we0_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln2_fu_247_p3 <= (trunc_ln93_fu_243_p1 & ap_const_lv2_0);
    shl_ln77_1_fu_210_p3 <= (trunc_ln77_1_fu_206_p1 & ap_const_lv2_0);
    shl_ln93_1_fu_275_p3 <= (trunc_ln93_1_fu_271_p1 & ap_const_lv2_0);
    shl_ln_fu_172_p3 <= (trunc_ln77_fu_168_p1 & ap_const_lv2_0);
    trunc_ln77_1_fu_206_p1 <= j_0_reg_100(2 - 1 downto 0);
    trunc_ln77_fu_168_p1 <= i_0_reg_89(2 - 1 downto 0);
    trunc_ln93_1_fu_271_p1 <= j_1_reg_122(2 - 1 downto 0);
    trunc_ln93_fu_243_p1 <= i_1_reg_111(2 - 1 downto 0);
    zext_ln72_fu_152_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_89),4));
    zext_ln75_fu_180_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_100),4));
    zext_ln77_1_fu_223_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln77_1_reg_333),64));
    zext_ln77_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln77_fu_196_p2),64));
    zext_ln88_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_reg_111),4));
    zext_ln91_fu_255_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_1_reg_122),4));
    zext_ln93_1_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln93_1_reg_369),64));
    zext_ln93_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln93_fu_283_p2),64));
end behav;
