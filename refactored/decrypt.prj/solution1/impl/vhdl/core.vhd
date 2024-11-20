-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity core is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    word_0_read : IN STD_LOGIC_VECTOR (7 downto 0);
    word_1_read : IN STD_LOGIC_VECTOR (7 downto 0);
    word_2_read : IN STD_LOGIC_VECTOR (7 downto 0);
    word_3_read : IN STD_LOGIC_VECTOR (7 downto 0);
    iteration : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of core is 
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
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sbox_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal sbox_ce0 : STD_LOGIC;
    signal sbox_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal Rcon_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal Rcon_ce0 : STD_LOGIC;
    signal Rcon_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_5_fu_227_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_5_reg_501 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal write_flag_0_be_i_fu_233_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal write_flag_0_be_i_reg_506 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln86_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal word12_0_be_i_fu_292_p6 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal word2_0_be_i_fu_306_p6 : STD_LOGIC_VECTOR (7 downto 0);
    signal word_03_be_i_fu_320_p6 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_fu_340_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_585 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal trunc_ln105_fu_358_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln105_reg_590 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln103_fu_334_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal write_flag_0_i_reg_142 : STD_LOGIC_VECTOR (0 downto 0);
    signal word_03_i_reg_153 : STD_LOGIC_VECTOR (7 downto 0);
    signal word2_0_i_reg_165 : STD_LOGIC_VECTOR (7 downto 0);
    signal word12_0_i_reg_175 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_mux_i_0_i_phi_fu_189_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_0_i_reg_185 : STD_LOGIC_VECTOR (1 downto 0);
    signal phi_ln87_reg_197 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_0_reg_210 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal zext_ln43_fu_376_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln92_fu_384_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal word_load_fu_54 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln89_fu_247_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal empty_13_fu_58 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_14_fu_62 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_15_fu_66 : STD_LOGIC_VECTOR (7 downto 0);
    signal empty_16_fu_70 : STD_LOGIC_VECTOR (7 downto 0);
    signal word_1_0_fu_74 : STD_LOGIC_VECTOR (7 downto 0);
    signal word_2_0_fu_78 : STD_LOGIC_VECTOR (7 downto 0);
    signal word_3_0_fu_82 : STD_LOGIC_VECTOR (7 downto 0);
    signal num_assign_1_fu_362_p5 : STD_LOGIC_VECTOR (1 downto 0);
    signal num_assign_1_fu_362_p6 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln109_fu_381_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln109_fu_441_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_return_0_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal ap_return_1_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal ap_return_2_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal ap_return_3_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component decrypt_dut_mux_4bkb IS
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
        din0 : IN STD_LOGIC_VECTOR (0 downto 0);
        din1 : IN STD_LOGIC_VECTOR (0 downto 0);
        din2 : IN STD_LOGIC_VECTOR (0 downto 0);
        din3 : IN STD_LOGIC_VECTOR (0 downto 0);
        din4 : IN STD_LOGIC_VECTOR (1 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component decrypt_dut_mux_4cud IS
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


    component core_sbox IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component core_Rcon IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    sbox_U : component core_sbox
    generic map (
        DataWidth => 8,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => sbox_address0,
        ce0 => sbox_ce0,
        q0 => sbox_q0);

    Rcon_U : component core_Rcon
    generic map (
        DataWidth => 8,
        AddressRange => 255,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => Rcon_address0,
        ce0 => Rcon_ce0,
        q0 => Rcon_q0);

    decrypt_dut_mux_4bkb_U1 : component decrypt_dut_mux_4bkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 1,
        din1_WIDTH => 1,
        din2_WIDTH => 1,
        din3_WIDTH => 1,
        din4_WIDTH => 2,
        dout_WIDTH => 1)
    port map (
        din0 => ap_const_lv1_1,
        din1 => write_flag_0_i_reg_142,
        din2 => write_flag_0_i_reg_142,
        din3 => write_flag_0_i_reg_142,
        din4 => i_0_i_reg_185,
        dout => write_flag_0_be_i_fu_233_p6);

    decrypt_dut_mux_4cud_U2 : component decrypt_dut_mux_4cud
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
        din0 => word12_0_i_reg_175,
        din1 => phi_ln87_reg_197,
        din2 => word12_0_i_reg_175,
        din3 => word12_0_i_reg_175,
        din4 => i_0_i_reg_185,
        dout => word12_0_be_i_fu_292_p6);

    decrypt_dut_mux_4cud_U3 : component decrypt_dut_mux_4cud
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
        din0 => word2_0_i_reg_165,
        din1 => word2_0_i_reg_165,
        din2 => phi_ln87_reg_197,
        din3 => phi_ln87_reg_197,
        din4 => i_0_i_reg_185,
        dout => word2_0_be_i_fu_306_p6);

    decrypt_dut_mux_4cud_U4 : component decrypt_dut_mux_4cud
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
        din0 => phi_ln87_reg_197,
        din1 => word_03_i_reg_153,
        din2 => word_03_i_reg_153,
        din3 => word_03_i_reg_153,
        din4 => i_0_i_reg_185,
        dout => word_03_be_i_fu_320_p6);

    decrypt_dut_mux_4cud_U5 : component decrypt_dut_mux_4cud
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
        din0 => empty_13_fu_58,
        din1 => empty_14_fu_62,
        din2 => empty_15_fu_66,
        din3 => empty_16_fu_70,
        din4 => num_assign_1_fu_362_p5,
        dout => num_assign_1_fu_362_p6);





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
                ap_return_0_preg <= ap_const_lv8_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_0_preg <= word_1_0_fu_74;
                end if; 
            end if;
        end if;
    end process;


    ap_return_1_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_1_preg <= ap_const_lv8_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_1_preg <= word_2_0_fu_78;
                end if; 
            end if;
        end if;
    end process;


    ap_return_2_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_2_preg <= ap_const_lv8_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_2_preg <= word_3_0_fu_82;
                end if; 
            end if;
        end if;
    end process;


    ap_return_3_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_3_preg <= ap_const_lv8_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                    ap_return_3_preg <= xor_ln109_fu_441_p2;
                end if; 
            end if;
        end if;
    end process;


    empty_13_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln105_reg_590 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                empty_13_fu_58 <= sbox_q0;
            elsif (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                empty_13_fu_58 <= select_ln89_fu_247_p3;
            end if; 
        end if;
    end process;

    empty_14_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln105_reg_590 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                empty_14_fu_62 <= sbox_q0;
            elsif (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                empty_14_fu_62 <= word12_0_i_reg_175;
            end if; 
        end if;
    end process;

    empty_15_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln105_reg_590 = ap_const_lv2_2) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                empty_15_fu_66 <= sbox_q0;
            elsif (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                empty_15_fu_66 <= word2_0_i_reg_165;
            end if; 
        end if;
    end process;

    empty_16_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln105_reg_590 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                empty_16_fu_70 <= sbox_q0;
            elsif (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                empty_16_fu_70 <= word_0_read;
            end if; 
        end if;
    end process;

    i_0_i_reg_185_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_0_i_reg_185 <= i_5_reg_501;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_i_reg_185 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    i_0_reg_210_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_0_reg_210 <= i_reg_585;
            elsif (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_0_reg_210 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    phi_ln87_reg_197_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln86_fu_221_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                if ((ap_phi_mux_i_0_i_phi_fu_189_p4 = ap_const_lv2_0)) then 
                    phi_ln87_reg_197 <= word12_0_i_reg_175;
                elsif ((not((ap_phi_mux_i_0_i_phi_fu_189_p4 = ap_const_lv2_0)) and not((ap_phi_mux_i_0_i_phi_fu_189_p4 = ap_const_lv2_1)))) then 
                    phi_ln87_reg_197 <= word_3_read;
                elsif ((ap_phi_mux_i_0_i_phi_fu_189_p4 = ap_const_lv2_1)) then 
                    phi_ln87_reg_197 <= word2_0_i_reg_165;
                end if;
            end if; 
        end if;
    end process;

    word12_0_i_reg_175_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                word12_0_i_reg_175 <= word12_0_be_i_fu_292_p6;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                word12_0_i_reg_175 <= word_1_read;
            end if; 
        end if;
    end process;

    word2_0_i_reg_165_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                word2_0_i_reg_165 <= word2_0_be_i_fu_306_p6;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                word2_0_i_reg_165 <= word_2_read;
            end if; 
        end if;
    end process;

    word_1_0_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln105_reg_590 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                word_1_0_fu_74 <= sbox_q0;
            elsif (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                word_1_0_fu_74 <= word12_0_i_reg_175;
            end if; 
        end if;
    end process;

    word_2_0_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln105_reg_590 = ap_const_lv2_2) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                word_2_0_fu_78 <= sbox_q0;
            elsif (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                word_2_0_fu_78 <= word2_0_i_reg_165;
            end if; 
        end if;
    end process;

    word_3_0_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln105_reg_590 = ap_const_lv2_3) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                word_3_0_fu_82 <= sbox_q0;
            elsif (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                word_3_0_fu_82 <= word_0_read;
            end if; 
        end if;
    end process;

    word_load_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln105_reg_590 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                word_load_fu_54 <= sbox_q0;
            elsif (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                word_load_fu_54 <= select_ln89_fu_247_p3;
            end if; 
        end if;
    end process;

    write_flag_0_i_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                write_flag_0_i_reg_142 <= write_flag_0_be_i_reg_506;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                write_flag_0_i_reg_142 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_5_reg_501 <= i_5_fu_227_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_reg_585 <= i_fu_340_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln103_fu_334_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                trunc_ln105_reg_590 <= trunc_ln105_fu_358_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                word_03_i_reg_153 <= word_03_be_i_fu_320_p6;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln86_fu_221_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                write_flag_0_be_i_reg_506 <= write_flag_0_be_i_fu_233_p6;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln86_fu_221_p2, ap_CS_fsm_state4, icmp_ln103_fu_334_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln86_fu_221_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state4 => 
                if (((icmp_ln103_fu_334_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    Rcon_address0 <= zext_ln92_fu_384_p1(8 - 1 downto 0);

    Rcon_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            Rcon_ce0 <= ap_const_logic_1;
        else 
            Rcon_ce0 <= ap_const_logic_0;
        end if; 
    end process;

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

    ap_phi_mux_i_0_i_phi_fu_189_p4 <= i_0_i_reg_185;

    ap_ready_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_0_assign_proc : process(ap_CS_fsm_state6, word_1_0_fu_74, ap_return_0_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_0 <= word_1_0_fu_74;
        else 
            ap_return_0 <= ap_return_0_preg;
        end if; 
    end process;


    ap_return_1_assign_proc : process(ap_CS_fsm_state6, word_2_0_fu_78, ap_return_1_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_1 <= word_2_0_fu_78;
        else 
            ap_return_1 <= ap_return_1_preg;
        end if; 
    end process;


    ap_return_2_assign_proc : process(ap_CS_fsm_state6, word_3_0_fu_82, ap_return_2_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_2 <= word_3_0_fu_82;
        else 
            ap_return_2 <= ap_return_2_preg;
        end if; 
    end process;


    ap_return_3_assign_proc : process(ap_CS_fsm_state6, xor_ln109_fu_441_p2, ap_return_3_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_return_3 <= xor_ln109_fu_441_p2;
        else 
            ap_return_3 <= ap_return_3_preg;
        end if; 
    end process;

    i_5_fu_227_p2 <= std_logic_vector(unsigned(i_0_i_reg_185) + unsigned(ap_const_lv2_1));
    i_fu_340_p2 <= std_logic_vector(unsigned(i_0_reg_210) + unsigned(ap_const_lv3_1));
    icmp_ln103_fu_334_p2 <= "1" when (i_0_reg_210 = ap_const_lv3_4) else "0";
    icmp_ln86_fu_221_p2 <= "1" when (i_0_i_reg_185 = ap_const_lv2_3) else "0";
    num_assign_1_fu_362_p5 <= i_0_reg_210(2 - 1 downto 0);
    sbox_address0 <= zext_ln43_fu_376_p1(8 - 1 downto 0);

    sbox_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            sbox_ce0 <= ap_const_logic_1;
        else 
            sbox_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln89_fu_247_p3 <= 
        word_03_i_reg_153 when (write_flag_0_i_reg_142(0) = '1') else 
        word_0_read;
    trunc_ln105_fu_358_p1 <= i_0_reg_210(2 - 1 downto 0);
    trunc_ln109_fu_381_p1 <= iteration(8 - 1 downto 0);
    xor_ln109_fu_441_p2 <= (word_load_fu_54 xor Rcon_q0);
    zext_ln43_fu_376_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(num_assign_1_fu_362_p6),64));
    zext_ln92_fu_384_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln109_fu_381_p1),64));
end behav;
