-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity edge_canny_detector_xFFindmax3x3_3_0_0_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    p_i00 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_i01 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_i02 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_i10 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_i11 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_i12 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_i20 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_i21 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_i22 : IN STD_LOGIC_VECTOR (15 downto 0);
    angle : IN STD_LOGIC_VECTOR (7 downto 0);
    p_low_threshold : IN STD_LOGIC_VECTOR (7 downto 0);
    p_high_threshold : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of edge_canny_detector_xFFindmax3x3_3_0_0_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_2D : STD_LOGIC_VECTOR (7 downto 0) := "00101101";
    constant ap_const_lv8_5A : STD_LOGIC_VECTOR (7 downto 0) := "01011010";
    constant ap_const_lv8_87 : STD_LOGIC_VECTOR (7 downto 0) := "10000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";

attribute shreg_extract : string;
    signal icmp_ln886_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_reg_477 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln870_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln870_reg_485 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_1_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_1_reg_492 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln882_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln882_reg_498 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln870_5_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln870_5_reg_503 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_2_fu_152_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_2_reg_510 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_3_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_3_reg_515 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_4_fu_164_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_4_reg_521 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln870_6_fu_170_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln870_6_reg_527 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_5_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_5_reg_534 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln882_1_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln882_1_reg_540 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln870_7_fu_188_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln870_7_reg_545 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_6_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_6_reg_552 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_7_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln886_7_reg_557 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln886_fu_114_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln886_1_fu_148_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal xor_ln870_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln870_fu_228_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln870_1_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln870_1_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln870_2_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln870_2_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln86_1_fu_260_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln86_fu_255_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln86_2_fu_264_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal NMS_fu_211_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln882_1_fu_218_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln870_3_fu_278_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_fu_283_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_1_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal NMS_1_fu_270_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln870_4_fu_302_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln59_fu_307_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln59_1_fu_312_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal NMS_2_fu_294_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln882_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln870_5_fu_325_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln46_fu_329_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln46_1_fu_335_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal NMS_3_fu_317_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal NMS_4_fu_340_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln46_2_fu_355_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln46_fu_360_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln59_2_fu_372_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln59_fu_376_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln59_3_fu_382_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln46_3_fu_366_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln59_fu_388_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal NMS_5_fu_348_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal and_ln73_2_fu_402_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln73_fu_407_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln870_3_fu_419_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln870_4_fu_430_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln870_1_fu_435_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln870_2_fu_440_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln870_3_fu_445_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln870_4_fu_450_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln870_6_fu_424_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln73_3_fu_413_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln870_fu_463_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln870_fu_455_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal NMS_6_fu_394_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal NMS_7_fu_469_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_ce_reg : STD_LOGIC;
    signal ap_return_int_reg : STD_LOGIC_VECTOR (7 downto 0);


begin




    ap_ce_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_ce_reg <= ap_ce;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce_reg)) then
                ap_return_int_reg <= NMS_7_fu_469_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln870_5_reg_503 <= icmp_ln870_5_fu_142_p2;
                icmp_ln870_6_reg_527 <= icmp_ln870_6_fu_170_p2;
                icmp_ln870_7_reg_545 <= icmp_ln870_7_fu_188_p2;
                icmp_ln870_reg_485 <= icmp_ln870_fu_124_p2;
                icmp_ln882_1_reg_540 <= icmp_ln882_1_fu_182_p2;
                icmp_ln882_reg_498 <= icmp_ln882_fu_136_p2;
                icmp_ln886_1_reg_492 <= icmp_ln886_1_fu_130_p2;
                icmp_ln886_2_reg_510 <= icmp_ln886_2_fu_152_p2;
                icmp_ln886_3_reg_515 <= icmp_ln886_3_fu_158_p2;
                icmp_ln886_4_reg_521 <= icmp_ln886_4_fu_164_p2;
                icmp_ln886_5_reg_534 <= icmp_ln886_5_fu_176_p2;
                icmp_ln886_6_reg_552 <= icmp_ln886_6_fu_194_p2;
                icmp_ln886_7_reg_557 <= icmp_ln886_7_fu_200_p2;
                icmp_ln886_reg_477 <= icmp_ln886_fu_118_p2;
            end if;
        end if;
    end process;
    NMS_1_fu_270_p3 <= 
        NMS_fu_211_p3 when (and_ln86_2_fu_264_p2(0) = '1') else 
        ap_const_lv8_FF;
    NMS_2_fu_294_p3 <= 
        NMS_fu_211_p3 when (and_ln73_1_fu_289_p2(0) = '1') else 
        NMS_1_fu_270_p3;
    NMS_3_fu_317_p3 <= 
        NMS_fu_211_p3 when (and_ln59_1_fu_312_p2(0) = '1') else 
        NMS_2_fu_294_p3;
    NMS_4_fu_340_p3 <= 
        NMS_fu_211_p3 when (and_ln46_1_fu_335_p2(0) = '1') else 
        NMS_3_fu_317_p3;
    NMS_5_fu_348_p3 <= 
        NMS_4_fu_340_p3 when (icmp_ln886_reg_477(0) = '1') else 
        ap_const_lv8_FF;
    NMS_6_fu_394_p3 <= 
        ap_const_lv8_FF when (or_ln59_fu_388_p2(0) = '1') else 
        NMS_5_fu_348_p3;
    NMS_7_fu_469_p3 <= 
        select_ln870_fu_455_p3 when (or_ln870_fu_463_p2(0) = '1') else 
        NMS_6_fu_394_p3;
    NMS_fu_211_p3 <= 
        ap_const_lv8_0 when (icmp_ln886_2_reg_510(0) = '1') else 
        ap_const_lv8_80;
    and_ln46_1_fu_335_p2 <= (icmp_ln886_1_reg_492 and and_ln46_fu_329_p2);
    and_ln46_2_fu_355_p2 <= (xor_ln882_fu_206_p2 and icmp_ln886_1_reg_492);
    and_ln46_3_fu_366_p2 <= (xor_ln46_fu_360_p2 and and_ln870_5_fu_325_p2);
    and_ln46_fu_329_p2 <= (xor_ln882_fu_206_p2 and and_ln870_5_fu_325_p2);
    and_ln59_1_fu_312_p2 <= (icmp_ln886_3_reg_515 and and_ln59_fu_307_p2);
    and_ln59_2_fu_372_p2 <= (icmp_ln886_4_reg_521 and icmp_ln886_3_reg_515);
    and_ln59_3_fu_382_p2 <= (xor_ln59_fu_376_p2 and and_ln870_4_fu_302_p2);
    and_ln59_fu_307_p2 <= (icmp_ln886_4_reg_521 and and_ln870_4_fu_302_p2);
    and_ln73_1_fu_289_p2 <= (icmp_ln886_5_reg_534 and and_ln73_fu_283_p2);
    and_ln73_2_fu_402_p2 <= (xor_ln882_1_fu_218_p2 and icmp_ln886_5_reg_534);
    and_ln73_3_fu_413_p2 <= (xor_ln73_fu_407_p2 and and_ln870_3_fu_278_p2);
    and_ln73_fu_283_p2 <= (xor_ln882_1_fu_218_p2 and and_ln870_3_fu_278_p2);
    and_ln86_1_fu_260_p2 <= (icmp_ln886_7_reg_557 and icmp_ln886_6_reg_552);
    and_ln86_2_fu_264_p2 <= (and_ln86_fu_255_p2 and and_ln86_1_fu_260_p2);
    and_ln86_fu_255_p2 <= (icmp_ln870_7_reg_545 and and_ln870_2_fu_249_p2);
    and_ln870_1_fu_238_p2 <= (xor_ln870_1_fu_233_p2 and and_ln870_fu_228_p2);
    and_ln870_2_fu_249_p2 <= (xor_ln870_2_fu_244_p2 and and_ln870_1_fu_238_p2);
    and_ln870_3_fu_278_p2 <= (icmp_ln870_6_reg_527 and and_ln870_1_fu_238_p2);
    and_ln870_4_fu_302_p2 <= (icmp_ln870_5_reg_503 and and_ln870_fu_228_p2);
    and_ln870_5_fu_325_p2 <= (icmp_ln886_reg_477 and icmp_ln870_reg_485);
    and_ln870_6_fu_424_p2 <= (xor_ln870_3_fu_419_p2 and and_ln870_2_fu_249_p2);
    and_ln870_fu_228_p2 <= (xor_ln870_fu_223_p2 and icmp_ln886_reg_477);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_return_assign_proc : process(NMS_7_fu_469_p3, ap_ce_reg, ap_return_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return <= ap_return_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return <= NMS_7_fu_469_p3;
        end if; 
    end process;

    icmp_ln870_5_fu_142_p2 <= "1" when (angle = ap_const_lv8_2D) else "0";
    icmp_ln870_6_fu_170_p2 <= "1" when (angle = ap_const_lv8_5A) else "0";
    icmp_ln870_7_fu_188_p2 <= "1" when (angle = ap_const_lv8_87) else "0";
    icmp_ln870_fu_124_p2 <= "1" when (angle = ap_const_lv8_0) else "0";
    icmp_ln882_1_fu_182_p2 <= "1" when (signed(p_i11) < signed(p_i21)) else "0";
    icmp_ln882_fu_136_p2 <= "1" when (signed(p_i11) < signed(p_i12)) else "0";
    icmp_ln886_1_fu_130_p2 <= "1" when (signed(p_i11) > signed(p_i10)) else "0";
    icmp_ln886_2_fu_152_p2 <= "1" when (signed(zext_ln886_1_fu_148_p1) < signed(p_i11)) else "0";
    icmp_ln886_3_fu_158_p2 <= "1" when (signed(p_i11) > signed(p_i02)) else "0";
    icmp_ln886_4_fu_164_p2 <= "1" when (signed(p_i11) > signed(p_i20)) else "0";
    icmp_ln886_5_fu_176_p2 <= "1" when (signed(p_i11) > signed(p_i01)) else "0";
    icmp_ln886_6_fu_194_p2 <= "1" when (signed(p_i11) > signed(p_i00)) else "0";
    icmp_ln886_7_fu_200_p2 <= "1" when (signed(p_i11) > signed(p_i22)) else "0";
    icmp_ln886_fu_118_p2 <= "1" when (signed(zext_ln886_fu_114_p1) < signed(p_i11)) else "0";
    or_ln59_fu_388_p2 <= (and_ln59_3_fu_382_p2 or and_ln46_3_fu_366_p2);
    or_ln870_1_fu_435_p2 <= (xor_ln870_4_fu_430_p2 or icmp_ln870_reg_485);
    or_ln870_2_fu_440_p2 <= (or_ln870_1_fu_435_p2 or icmp_ln870_5_reg_503);
    or_ln870_3_fu_445_p2 <= (or_ln870_2_fu_440_p2 or icmp_ln870_6_reg_527);
    or_ln870_4_fu_450_p2 <= (or_ln870_3_fu_445_p2 or icmp_ln870_7_reg_545);
    or_ln870_fu_463_p2 <= (and_ln870_6_fu_424_p2 or and_ln73_3_fu_413_p2);
    select_ln870_fu_455_p3 <= 
        ap_const_lv8_FF when (or_ln870_4_fu_450_p2(0) = '1') else 
        ap_const_lv8_0;
    xor_ln46_fu_360_p2 <= (ap_const_lv1_1 xor and_ln46_2_fu_355_p2);
    xor_ln59_fu_376_p2 <= (ap_const_lv1_1 xor and_ln59_2_fu_372_p2);
    xor_ln73_fu_407_p2 <= (ap_const_lv1_1 xor and_ln73_2_fu_402_p2);
    xor_ln870_1_fu_233_p2 <= (icmp_ln870_5_reg_503 xor ap_const_lv1_1);
    xor_ln870_2_fu_244_p2 <= (icmp_ln870_6_reg_527 xor ap_const_lv1_1);
    xor_ln870_3_fu_419_p2 <= (icmp_ln870_7_reg_545 xor ap_const_lv1_1);
    xor_ln870_4_fu_430_p2 <= (icmp_ln886_reg_477 xor ap_const_lv1_1);
    xor_ln870_fu_223_p2 <= (icmp_ln870_reg_485 xor ap_const_lv1_1);
    xor_ln882_1_fu_218_p2 <= (icmp_ln882_1_reg_540 xor ap_const_lv1_1);
    xor_ln882_fu_206_p2 <= (icmp_ln882_reg_498 xor ap_const_lv1_1);
    zext_ln886_1_fu_148_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_high_threshold),16));
    zext_ln886_fu_114_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_low_threshold),16));
end behav;