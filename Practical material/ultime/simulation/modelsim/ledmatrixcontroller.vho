-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "05/20/2021 16:11:31"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ledmatrixcontroller IS
    PORT (
	clk : IN std_logic;
	clockout : OUT std_logic;
	dout : OUT std_logic;
	ce : OUT std_logic;
	done : OUT std_logic;
	r1 : IN std_logic_vector(7 DOWNTO 0);
	r2 : IN std_logic_vector(7 DOWNTO 0);
	r3 : IN std_logic_vector(7 DOWNTO 0);
	r4 : IN std_logic_vector(7 DOWNTO 0);
	r5 : IN std_logic_vector(7 DOWNTO 0);
	r6 : IN std_logic_vector(7 DOWNTO 0);
	r7 : IN std_logic_vector(7 DOWNTO 0);
	r8 : IN std_logic_vector(7 DOWNTO 0)
	);
END ledmatrixcontroller;

-- Design Ports Information
-- clockout	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ce	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3[7]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r6[7]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r7[7]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r8[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4[7]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[7]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r6[6]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r7[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r8[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[6]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3[5]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5[5]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r6[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r7[5]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r8[5]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4[5]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r6[4]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r7[4]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r8[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[4]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[4]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3[4]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r6[3]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r7[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r8[3]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4[3]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[3]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[3]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5[2]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r6[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r7[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r8[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4[2]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3[2]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r6[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r7[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r8[1]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4[1]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[1]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5[0]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r6[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r7[0]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r8[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ledmatrixcontroller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clockout : std_logic;
SIGNAL ww_dout : std_logic;
SIGNAL ww_ce : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_r1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r6 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r7 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_r8 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \clockbuffer~0_combout\ : std_logic;
SIGNAL \clockbuffer~q\ : std_logic;
SIGNAL \fsm1|cs.s0~feeder_combout\ : std_logic;
SIGNAL \fsm1|counter[0]~3_combout\ : std_logic;
SIGNAL \fsm1|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fsm1|counter[1]~2_combout\ : std_logic;
SIGNAL \fsm1|counter[2]~1_combout\ : std_logic;
SIGNAL \fsm1|counter[3]~0_combout\ : std_logic;
SIGNAL \fsm1|counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \fsm1|Selector0~0_combout\ : std_logic;
SIGNAL \fsm1|cs.s1~q\ : std_logic;
SIGNAL \fsm1|ns.s2~0_combout\ : std_logic;
SIGNAL \fsm1|cs.s2~q\ : std_logic;
SIGNAL \fsm1|cs.s3~q\ : std_logic;
SIGNAL \fsm1|cs.s4~q\ : std_logic;
SIGNAL \fsm1|cs.s0~q\ : std_logic;
SIGNAL \fsm1|sh~combout\ : std_logic;
SIGNAL \setupCounter~1_combout\ : std_logic;
SIGNAL \setupCounter~0_combout\ : std_logic;
SIGNAL \matrixready~0_combout\ : std_logic;
SIGNAL \matrixready~q\ : std_logic;
SIGNAL \setupCounter~2_combout\ : std_logic;
SIGNAL \setupCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \setupCounter~3_combout\ : std_logic;
SIGNAL \writeval~31_combout\ : std_logic;
SIGNAL \r8[0]~input_o\ : std_logic;
SIGNAL \r5[0]~input_o\ : std_logic;
SIGNAL \r6[0]~input_o\ : std_logic;
SIGNAL \r7[0]~input_o\ : std_logic;
SIGNAL \writeval~29_combout\ : std_logic;
SIGNAL \writeval[7]~5_combout\ : std_logic;
SIGNAL \r3[0]~input_o\ : std_logic;
SIGNAL \writeval[7]~4_combout\ : std_logic;
SIGNAL \r1[0]~input_o\ : std_logic;
SIGNAL \r4[0]~input_o\ : std_logic;
SIGNAL \r2[0]~input_o\ : std_logic;
SIGNAL \writeval~30_combout\ : std_logic;
SIGNAL \writeval~32_combout\ : std_logic;
SIGNAL \writeval[4]~1_combout\ : std_logic;
SIGNAL \shft1|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \r7[1]~input_o\ : std_logic;
SIGNAL \r6[1]~input_o\ : std_logic;
SIGNAL \r8[1]~input_o\ : std_logic;
SIGNAL \r5[1]~input_o\ : std_logic;
SIGNAL \writeval~26_combout\ : std_logic;
SIGNAL \r2[1]~input_o\ : std_logic;
SIGNAL \r1[1]~input_o\ : std_logic;
SIGNAL \r4[1]~input_o\ : std_logic;
SIGNAL \writeval~27_combout\ : std_logic;
SIGNAL \r3[1]~input_o\ : std_logic;
SIGNAL \writeval~21_combout\ : std_logic;
SIGNAL \writeval~28_combout\ : std_logic;
SIGNAL \shft1|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \r1[2]~input_o\ : std_logic;
SIGNAL \r2[2]~input_o\ : std_logic;
SIGNAL \r4[2]~input_o\ : std_logic;
SIGNAL \writeval~24_combout\ : std_logic;
SIGNAL \r6[2]~input_o\ : std_logic;
SIGNAL \r7[2]~input_o\ : std_logic;
SIGNAL \r8[2]~input_o\ : std_logic;
SIGNAL \r5[2]~input_o\ : std_logic;
SIGNAL \writeval~23_combout\ : std_logic;
SIGNAL \r3[2]~input_o\ : std_logic;
SIGNAL \writeval~25_combout\ : std_logic;
SIGNAL \shft1|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \r2[3]~input_o\ : std_logic;
SIGNAL \r1[3]~input_o\ : std_logic;
SIGNAL \r4[3]~input_o\ : std_logic;
SIGNAL \writeval~20_combout\ : std_logic;
SIGNAL \r8[3]~input_o\ : std_logic;
SIGNAL \r5[3]~input_o\ : std_logic;
SIGNAL \r6[3]~input_o\ : std_logic;
SIGNAL \r7[3]~input_o\ : std_logic;
SIGNAL \writeval~19_combout\ : std_logic;
SIGNAL \r3[3]~input_o\ : std_logic;
SIGNAL \writeval~22_combout\ : std_logic;
SIGNAL \shft1|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \r1[4]~input_o\ : std_logic;
SIGNAL \r4[4]~input_o\ : std_logic;
SIGNAL \r2[4]~input_o\ : std_logic;
SIGNAL \writeval~16_combout\ : std_logic;
SIGNAL \r3[4]~input_o\ : std_logic;
SIGNAL \writeval~17_combout\ : std_logic;
SIGNAL \r6[4]~input_o\ : std_logic;
SIGNAL \r8[4]~input_o\ : std_logic;
SIGNAL \r5[4]~input_o\ : std_logic;
SIGNAL \r7[4]~input_o\ : std_logic;
SIGNAL \writeval~15_combout\ : std_logic;
SIGNAL \writeval~18_combout\ : std_logic;
SIGNAL \shft1|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \r3[5]~input_o\ : std_logic;
SIGNAL \r4[5]~input_o\ : std_logic;
SIGNAL \r1[5]~input_o\ : std_logic;
SIGNAL \r2[5]~input_o\ : std_logic;
SIGNAL \writeval~13_combout\ : std_logic;
SIGNAL \r8[5]~input_o\ : std_logic;
SIGNAL \r5[5]~input_o\ : std_logic;
SIGNAL \r7[5]~input_o\ : std_logic;
SIGNAL \r6[5]~input_o\ : std_logic;
SIGNAL \writeval~12_combout\ : std_logic;
SIGNAL \writeval~14_combout\ : std_logic;
SIGNAL \shft1|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \r3[6]~input_o\ : std_logic;
SIGNAL \r6[6]~input_o\ : std_logic;
SIGNAL \r7[6]~input_o\ : std_logic;
SIGNAL \r8[6]~input_o\ : std_logic;
SIGNAL \r5[6]~input_o\ : std_logic;
SIGNAL \writeval~9_combout\ : std_logic;
SIGNAL \r2[6]~input_o\ : std_logic;
SIGNAL \r1[6]~input_o\ : std_logic;
SIGNAL \r4[6]~input_o\ : std_logic;
SIGNAL \writeval~10_combout\ : std_logic;
SIGNAL \writeval~11_combout\ : std_logic;
SIGNAL \shft1|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \r4[7]~input_o\ : std_logic;
SIGNAL \r1[7]~input_o\ : std_logic;
SIGNAL \r2[7]~input_o\ : std_logic;
SIGNAL \writeval~7_combout\ : std_logic;
SIGNAL \r6[7]~input_o\ : std_logic;
SIGNAL \r8[7]~input_o\ : std_logic;
SIGNAL \r5[7]~input_o\ : std_logic;
SIGNAL \r7[7]~input_o\ : std_logic;
SIGNAL \writeval~6_combout\ : std_logic;
SIGNAL \r3[7]~input_o\ : std_logic;
SIGNAL \writeval~8_combout\ : std_logic;
SIGNAL \shft1|tmp[8]~feeder_combout\ : std_logic;
SIGNAL \writeval~3_combout\ : std_logic;
SIGNAL \shft1|tmp[9]~feeder_combout\ : std_logic;
SIGNAL \writeval~2_combout\ : std_logic;
SIGNAL \shft1|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \writeval~33_combout\ : std_logic;
SIGNAL \shft1|tmp[11]~feeder_combout\ : std_logic;
SIGNAL \writeval~0_combout\ : std_logic;
SIGNAL \shft1|tmp~3_combout\ : std_logic;
SIGNAL \shft1|tmp~2_combout\ : std_logic;
SIGNAL \shft1|tmp~1_combout\ : std_logic;
SIGNAL \shft1|tmp~0_combout\ : std_logic;
SIGNAL \fsm1|ce~combout\ : std_logic;
SIGNAL \fsm1|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \shft1|tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL writeval : std_logic_vector(15 DOWNTO 0);
SIGNAL setupCounter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_setupCounter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \fsm1|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \fsm1|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_r3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_r1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_r2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_r4[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_r8[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_r7[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_r6[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_r5[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_r3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_r1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_r2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_r4[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_r8[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_r7[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_r6[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_r5[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_r3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_r1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_r2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_r4[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_r8[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_r7[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_r6[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_r5[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_r3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_r1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_r2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_r4[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_r8[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_r7[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_r6[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_r5[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_r3[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_r1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_r2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_r4[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_r8[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_r7[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_r6[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_r5[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_r1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_r2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_r4[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_r8[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_r7[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_r6[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_r5[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_r3[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_r1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_r2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_r4[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_r8[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_r7[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_r6[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_r5[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_r3[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_r1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_r2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_r4[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_r8[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_r7[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_r6[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_r5[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_r3[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_writeval~31_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~30_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~29_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~27_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~26_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~24_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~23_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~21_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~20_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~19_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~17_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~16_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~15_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~13_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~12_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~10_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~9_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~7_combout\ : std_logic;
SIGNAL \ALT_INV_writeval~6_combout\ : std_logic;
SIGNAL \ALT_INV_writeval[7]~5_combout\ : std_logic;
SIGNAL \ALT_INV_writeval[7]~4_combout\ : std_logic;
SIGNAL ALT_INV_writeval : std_logic_vector(9 DOWNTO 9);
SIGNAL ALT_INV_setupCounter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_matrixready~q\ : std_logic;
SIGNAL \shft1|ALT_INV_tmp\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \fsm1|ALT_INV_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fsm1|ALT_INV_cs.s1~q\ : std_logic;
SIGNAL \fsm1|ALT_INV_cs.s2~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \fsm1|ALT_INV_cs.s4~q\ : std_logic;
SIGNAL \fsm1|ALT_INV_cs.s3~q\ : std_logic;
SIGNAL \fsm1|ALT_INV_cs.s0~q\ : std_logic;
SIGNAL \ALT_INV_clockbuffer~q\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
clockout <= ww_clockout;
dout <= ww_dout;
ce <= ww_ce;
done <= ww_done;
ww_r1 <= r1;
ww_r2 <= r2;
ww_r3 <= r3;
ww_r4 <= r4;
ww_r5 <= r5;
ww_r6 <= r6;
ww_r7 <= r7;
ww_r8 <= r8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_setupCounter[0]~DUPLICATE_q\ <= NOT \setupCounter[0]~DUPLICATE_q\;
\fsm1|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \fsm1|counter[1]~DUPLICATE_q\;
\fsm1|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \fsm1|counter[3]~DUPLICATE_q\;
\ALT_INV_counter[23]~DUPLICATE_q\ <= NOT \counter[23]~DUPLICATE_q\;
\ALT_INV_counter[21]~DUPLICATE_q\ <= NOT \counter[21]~DUPLICATE_q\;
\ALT_INV_counter[20]~DUPLICATE_q\ <= NOT \counter[20]~DUPLICATE_q\;
\ALT_INV_counter[14]~DUPLICATE_q\ <= NOT \counter[14]~DUPLICATE_q\;
\ALT_INV_counter[27]~DUPLICATE_q\ <= NOT \counter[27]~DUPLICATE_q\;
\ALT_INV_counter[26]~DUPLICATE_q\ <= NOT \counter[26]~DUPLICATE_q\;
\ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \counter[2]~DUPLICATE_q\;
\ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \counter[1]~DUPLICATE_q\;
\ALT_INV_counter[6]~DUPLICATE_q\ <= NOT \counter[6]~DUPLICATE_q\;
\ALT_INV_counter[31]~DUPLICATE_q\ <= NOT \counter[31]~DUPLICATE_q\;
\ALT_INV_counter[5]~DUPLICATE_q\ <= NOT \counter[5]~DUPLICATE_q\;
\ALT_INV_r3[0]~input_o\ <= NOT \r3[0]~input_o\;
\ALT_INV_r1[0]~input_o\ <= NOT \r1[0]~input_o\;
\ALT_INV_r2[0]~input_o\ <= NOT \r2[0]~input_o\;
\ALT_INV_r4[0]~input_o\ <= NOT \r4[0]~input_o\;
\ALT_INV_r8[0]~input_o\ <= NOT \r8[0]~input_o\;
\ALT_INV_r7[0]~input_o\ <= NOT \r7[0]~input_o\;
\ALT_INV_r6[0]~input_o\ <= NOT \r6[0]~input_o\;
\ALT_INV_r5[0]~input_o\ <= NOT \r5[0]~input_o\;
\ALT_INV_r3[1]~input_o\ <= NOT \r3[1]~input_o\;
\ALT_INV_r1[1]~input_o\ <= NOT \r1[1]~input_o\;
\ALT_INV_r2[1]~input_o\ <= NOT \r2[1]~input_o\;
\ALT_INV_r4[1]~input_o\ <= NOT \r4[1]~input_o\;
\ALT_INV_r8[1]~input_o\ <= NOT \r8[1]~input_o\;
\ALT_INV_r7[1]~input_o\ <= NOT \r7[1]~input_o\;
\ALT_INV_r6[1]~input_o\ <= NOT \r6[1]~input_o\;
\ALT_INV_r5[1]~input_o\ <= NOT \r5[1]~input_o\;
\ALT_INV_r3[2]~input_o\ <= NOT \r3[2]~input_o\;
\ALT_INV_r1[2]~input_o\ <= NOT \r1[2]~input_o\;
\ALT_INV_r2[2]~input_o\ <= NOT \r2[2]~input_o\;
\ALT_INV_r4[2]~input_o\ <= NOT \r4[2]~input_o\;
\ALT_INV_r8[2]~input_o\ <= NOT \r8[2]~input_o\;
\ALT_INV_r7[2]~input_o\ <= NOT \r7[2]~input_o\;
\ALT_INV_r6[2]~input_o\ <= NOT \r6[2]~input_o\;
\ALT_INV_r5[2]~input_o\ <= NOT \r5[2]~input_o\;
\ALT_INV_r3[3]~input_o\ <= NOT \r3[3]~input_o\;
\ALT_INV_r1[3]~input_o\ <= NOT \r1[3]~input_o\;
\ALT_INV_r2[3]~input_o\ <= NOT \r2[3]~input_o\;
\ALT_INV_r4[3]~input_o\ <= NOT \r4[3]~input_o\;
\ALT_INV_r8[3]~input_o\ <= NOT \r8[3]~input_o\;
\ALT_INV_r7[3]~input_o\ <= NOT \r7[3]~input_o\;
\ALT_INV_r6[3]~input_o\ <= NOT \r6[3]~input_o\;
\ALT_INV_r5[3]~input_o\ <= NOT \r5[3]~input_o\;
\ALT_INV_r3[4]~input_o\ <= NOT \r3[4]~input_o\;
\ALT_INV_r1[4]~input_o\ <= NOT \r1[4]~input_o\;
\ALT_INV_r2[4]~input_o\ <= NOT \r2[4]~input_o\;
\ALT_INV_r4[4]~input_o\ <= NOT \r4[4]~input_o\;
\ALT_INV_r8[4]~input_o\ <= NOT \r8[4]~input_o\;
\ALT_INV_r7[4]~input_o\ <= NOT \r7[4]~input_o\;
\ALT_INV_r6[4]~input_o\ <= NOT \r6[4]~input_o\;
\ALT_INV_r5[4]~input_o\ <= NOT \r5[4]~input_o\;
\ALT_INV_r1[5]~input_o\ <= NOT \r1[5]~input_o\;
\ALT_INV_r2[5]~input_o\ <= NOT \r2[5]~input_o\;
\ALT_INV_r4[5]~input_o\ <= NOT \r4[5]~input_o\;
\ALT_INV_r8[5]~input_o\ <= NOT \r8[5]~input_o\;
\ALT_INV_r7[5]~input_o\ <= NOT \r7[5]~input_o\;
\ALT_INV_r6[5]~input_o\ <= NOT \r6[5]~input_o\;
\ALT_INV_r5[5]~input_o\ <= NOT \r5[5]~input_o\;
\ALT_INV_r3[5]~input_o\ <= NOT \r3[5]~input_o\;
\ALT_INV_r1[6]~input_o\ <= NOT \r1[6]~input_o\;
\ALT_INV_r2[6]~input_o\ <= NOT \r2[6]~input_o\;
\ALT_INV_r4[6]~input_o\ <= NOT \r4[6]~input_o\;
\ALT_INV_r8[6]~input_o\ <= NOT \r8[6]~input_o\;
\ALT_INV_r7[6]~input_o\ <= NOT \r7[6]~input_o\;
\ALT_INV_r6[6]~input_o\ <= NOT \r6[6]~input_o\;
\ALT_INV_r5[6]~input_o\ <= NOT \r5[6]~input_o\;
\ALT_INV_r3[6]~input_o\ <= NOT \r3[6]~input_o\;
\ALT_INV_r1[7]~input_o\ <= NOT \r1[7]~input_o\;
\ALT_INV_r2[7]~input_o\ <= NOT \r2[7]~input_o\;
\ALT_INV_r4[7]~input_o\ <= NOT \r4[7]~input_o\;
\ALT_INV_r8[7]~input_o\ <= NOT \r8[7]~input_o\;
\ALT_INV_r7[7]~input_o\ <= NOT \r7[7]~input_o\;
\ALT_INV_r6[7]~input_o\ <= NOT \r6[7]~input_o\;
\ALT_INV_r5[7]~input_o\ <= NOT \r5[7]~input_o\;
\ALT_INV_r3[7]~input_o\ <= NOT \r3[7]~input_o\;
\ALT_INV_writeval~31_combout\ <= NOT \writeval~31_combout\;
\ALT_INV_writeval~30_combout\ <= NOT \writeval~30_combout\;
\ALT_INV_writeval~29_combout\ <= NOT \writeval~29_combout\;
\ALT_INV_writeval~27_combout\ <= NOT \writeval~27_combout\;
\ALT_INV_writeval~26_combout\ <= NOT \writeval~26_combout\;
\ALT_INV_writeval~24_combout\ <= NOT \writeval~24_combout\;
\ALT_INV_writeval~23_combout\ <= NOT \writeval~23_combout\;
\ALT_INV_writeval~21_combout\ <= NOT \writeval~21_combout\;
\ALT_INV_writeval~20_combout\ <= NOT \writeval~20_combout\;
\ALT_INV_writeval~19_combout\ <= NOT \writeval~19_combout\;
\ALT_INV_writeval~17_combout\ <= NOT \writeval~17_combout\;
\ALT_INV_writeval~16_combout\ <= NOT \writeval~16_combout\;
\ALT_INV_writeval~15_combout\ <= NOT \writeval~15_combout\;
\ALT_INV_writeval~13_combout\ <= NOT \writeval~13_combout\;
\ALT_INV_writeval~12_combout\ <= NOT \writeval~12_combout\;
\ALT_INV_writeval~10_combout\ <= NOT \writeval~10_combout\;
\ALT_INV_writeval~9_combout\ <= NOT \writeval~9_combout\;
\ALT_INV_writeval~7_combout\ <= NOT \writeval~7_combout\;
\ALT_INV_writeval~6_combout\ <= NOT \writeval~6_combout\;
\ALT_INV_writeval[7]~5_combout\ <= NOT \writeval[7]~5_combout\;
\ALT_INV_writeval[7]~4_combout\ <= NOT \writeval[7]~4_combout\;
ALT_INV_writeval(9) <= NOT writeval(9);
ALT_INV_setupCounter(1) <= NOT setupCounter(1);
ALT_INV_setupCounter(0) <= NOT setupCounter(0);
ALT_INV_setupCounter(2) <= NOT setupCounter(2);
ALT_INV_setupCounter(3) <= NOT setupCounter(3);
\ALT_INV_matrixready~q\ <= NOT \matrixready~q\;
\shft1|ALT_INV_tmp\(12) <= NOT \shft1|tmp\(12);
\fsm1|ALT_INV_counter\(0) <= NOT \fsm1|counter\(0);
\fsm1|ALT_INV_counter\(1) <= NOT \fsm1|counter\(1);
\fsm1|ALT_INV_counter\(2) <= NOT \fsm1|counter\(2);
\fsm1|ALT_INV_counter\(3) <= NOT \fsm1|counter\(3);
\fsm1|ALT_INV_cs.s1~q\ <= NOT \fsm1|cs.s1~q\;
\shft1|ALT_INV_tmp\(13) <= NOT \shft1|tmp\(13);
\fsm1|ALT_INV_cs.s2~q\ <= NOT \fsm1|cs.s2~q\;
\shft1|ALT_INV_tmp\(14) <= NOT \shft1|tmp\(14);
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\fsm1|ALT_INV_cs.s4~q\ <= NOT \fsm1|cs.s4~q\;
\fsm1|ALT_INV_cs.s3~q\ <= NOT \fsm1|cs.s3~q\;
\fsm1|ALT_INV_cs.s0~q\ <= NOT \fsm1|cs.s0~q\;
\ALT_INV_clockbuffer~q\ <= NOT \clockbuffer~q\;
\shft1|ALT_INV_tmp\(0) <= NOT \shft1|tmp\(0);
\shft1|ALT_INV_tmp\(1) <= NOT \shft1|tmp\(1);
\shft1|ALT_INV_tmp\(2) <= NOT \shft1|tmp\(2);
\shft1|ALT_INV_tmp\(3) <= NOT \shft1|tmp\(3);
\shft1|ALT_INV_tmp\(4) <= NOT \shft1|tmp\(4);
\shft1|ALT_INV_tmp\(5) <= NOT \shft1|tmp\(5);
\shft1|ALT_INV_tmp\(6) <= NOT \shft1|tmp\(6);
\shft1|ALT_INV_tmp\(7) <= NOT \shft1|tmp\(7);
\shft1|ALT_INV_tmp\(8) <= NOT \shft1|tmp\(8);
\shft1|ALT_INV_tmp\(9) <= NOT \shft1|tmp\(9);
\shft1|ALT_INV_tmp\(10) <= NOT \shft1|tmp\(10);
\shft1|ALT_INV_tmp\(11) <= NOT \shft1|tmp\(11);
ALT_INV_counter(25) <= NOT counter(25);
ALT_INV_counter(24) <= NOT counter(24);
ALT_INV_counter(23) <= NOT counter(23);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(30) <= NOT counter(30);
ALT_INV_counter(29) <= NOT counter(29);
ALT_INV_counter(28) <= NOT counter(28);
ALT_INV_counter(27) <= NOT counter(27);
ALT_INV_counter(26) <= NOT counter(26);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(31) <= NOT counter(31);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(11) <= NOT counter(11);

-- Location: IOOBUF_X19_Y61_N36
\clockout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clockbuffer~q\,
	devoe => ww_devoe,
	o => ww_clockout);

-- Location: IOOBUF_X17_Y0_N42
\dout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \shft1|tmp\(15),
	devoe => ww_devoe,
	o => ww_dout);

-- Location: IOOBUF_X17_Y0_N76
\ce~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|ce~combout\,
	devoe => ww_devoe,
	o => ww_ce);

-- Location: IOOBUF_X19_Y61_N53
\done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fsm1|cs.s4~q\,
	devoe => ww_devoe,
	o => ww_done);

-- Location: IOIBUF_X15_Y61_N18
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: FF_X19_Y60_N7
\counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[2]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y60_N0
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~38\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X19_Y60_N2
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: MLABCELL_X19_Y60_N3
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[1]~DUPLICATE_q\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X19_Y60_N5
\counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y60_N6
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[2]~DUPLICATE_q\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X19_Y60_N8
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: MLABCELL_X19_Y60_N9
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( counter(3) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(3),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X19_Y60_N11
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: MLABCELL_X19_Y60_N12
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( counter(4) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(4),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X19_Y60_N14
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: FF_X19_Y60_N4
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: FF_X19_Y60_N20
\counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[6]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y60_N15
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~10\ = CARRY(( \counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[5]~DUPLICATE_q\,
	cin => \Add1~54\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X19_Y60_N17
\counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[5]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y60_N18
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~34\ = CARRY(( \counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[6]~DUPLICATE_q\,
	cin => \Add1~10\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X19_Y60_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LABCELL_X18_Y60_N18
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !counter(0) & ( !counter(6) & ( (!counter(2) & (!counter(4) & (counter(3) & !counter(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(2),
	datab => ALT_INV_counter(4),
	datac => ALT_INV_counter(3),
	datad => ALT_INV_counter(1),
	datae => ALT_INV_counter(0),
	dataf => ALT_INV_counter(6),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X19_Y60_N21
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~14\ = CARRY(( counter(7) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add1~34\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X19_Y60_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: MLABCELL_X19_Y60_N24
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( counter(8) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(8),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X19_Y60_N26
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: MLABCELL_X19_Y60_N27
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( counter(9) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X19_Y60_N29
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: MLABCELL_X19_Y60_N30
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~30\ = CARRY(( counter(10) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(10),
	cin => \Add1~22\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X19_Y60_N32
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: MLABCELL_X19_Y60_N33
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~2\ = CARRY(( counter(11) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(11),
	cin => \Add1~30\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X19_Y60_N35
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: MLABCELL_X19_Y60_N36
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( counter(12) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(12),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X19_Y60_N38
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: MLABCELL_X19_Y60_N39
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~82\ = CARRY(( counter(13) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(13),
	cin => \Add1~6\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X19_Y60_N41
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: MLABCELL_X19_Y60_N42
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( counter(14) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(14),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X19_Y60_N44
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: MLABCELL_X19_Y60_N45
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~86\ = CARRY(( counter(15) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(15),
	cin => \Add1~78\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X19_Y60_N47
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: MLABCELL_X19_Y60_N48
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~90\ = CARRY(( counter(16) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(16),
	cin => \Add1~86\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X19_Y60_N50
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: MLABCELL_X19_Y60_N51
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~94\ = CARRY(( counter(17) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(17),
	cin => \Add1~90\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X19_Y60_N53
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: MLABCELL_X19_Y60_N54
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~98\ = CARRY(( counter(18) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(18),
	cin => \Add1~94\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X19_Y60_N56
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: MLABCELL_X19_Y60_N57
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( counter(19) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~102\ = CARRY(( counter(19) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(19),
	cin => \Add1~98\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X19_Y60_N59
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LABCELL_X18_Y60_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !counter(16) & ( !counter(19) & ( (!counter(15) & (!counter(18) & (!counter(17) & !counter(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(15),
	datab => ALT_INV_counter(18),
	datac => ALT_INV_counter(17),
	datad => ALT_INV_counter(13),
	datae => ALT_INV_counter(16),
	dataf => ALT_INV_counter(19),
	combout => \Equal0~4_combout\);

-- Location: FF_X19_Y60_N16
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: FF_X19_Y59_N35
\counter[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[31]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y59_N0
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( \counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~106\ = CARRY(( \counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[20]~DUPLICATE_q\,
	cin => \Add1~102\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X19_Y59_N1
\counter[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[20]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y59_N3
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( \counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( \counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[21]~DUPLICATE_q\,
	cin => \Add1~106\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X19_Y59_N4
\counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[21]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y59_N6
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~114\ = CARRY(( counter(22) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(22),
	cin => \Add1~110\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X19_Y59_N8
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: MLABCELL_X19_Y59_N9
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( \counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( \counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[23]~DUPLICATE_q\,
	cin => \Add1~114\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X19_Y59_N11
\counter[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[23]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y59_N12
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( counter(24) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( counter(24) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(24),
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X19_Y59_N14
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: MLABCELL_X19_Y59_N15
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( counter(25) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~126\ = CARRY(( counter(25) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(25),
	cin => \Add1~122\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X19_Y59_N17
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: MLABCELL_X19_Y59_N18
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \counter[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~58\ = CARRY(( \counter[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[26]~DUPLICATE_q\,
	cin => \Add1~126\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X19_Y59_N20
\counter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[26]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y59_N21
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( \counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter[27]~DUPLICATE_q\,
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X19_Y59_N22
\counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[27]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y59_N24
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( counter(28) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( counter(28) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(28),
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X19_Y59_N26
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: MLABCELL_X19_Y59_N27
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( counter(29) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( counter(29) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(29),
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X19_Y59_N29
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: MLABCELL_X19_Y59_N30
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( counter(30) ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~74\ = CARRY(( counter(30) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(30),
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X19_Y59_N32
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: MLABCELL_X19_Y59_N33
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \counter[31]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counter[31]~DUPLICATE_q\,
	cin => \Add1~74\,
	sumout => \Add1~25_sumout\);

-- Location: FF_X19_Y59_N34
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LABCELL_X18_Y60_N6
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( counter(7) & ( !counter(31) & ( (!counter(10) & (!counter(5) & (counter(9) & counter(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(10),
	datab => ALT_INV_counter(5),
	datac => ALT_INV_counter(9),
	datad => ALT_INV_counter(8),
	datae => ALT_INV_counter(7),
	dataf => ALT_INV_counter(31),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X18_Y60_N33
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( counter(12) & ( !counter(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_counter(12),
	dataf => ALT_INV_counter(11),
	combout => \Equal0~0_combout\);

-- Location: FF_X19_Y59_N10
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: FF_X19_Y59_N2
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: FF_X19_Y59_N5
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: MLABCELL_X19_Y59_N48
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !counter(21) & ( !counter(22) & ( (!counter(23) & (!counter(25) & (!counter(20) & !counter(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(23),
	datab => ALT_INV_counter(25),
	datac => ALT_INV_counter(20),
	datad => ALT_INV_counter(24),
	datae => ALT_INV_counter(21),
	dataf => ALT_INV_counter(22),
	combout => \Equal0~5_combout\);

-- Location: FF_X19_Y59_N19
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: FF_X19_Y59_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: FF_X19_Y60_N43
\counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[14]~DUPLICATE_q\);

-- Location: MLABCELL_X19_Y59_N42
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !counter(27) & ( !\counter[14]~DUPLICATE_q\ & ( (!counter(28) & (!counter(26) & (!counter(29) & !counter(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(28),
	datab => ALT_INV_counter(26),
	datac => ALT_INV_counter(29),
	datad => ALT_INV_counter(30),
	datae => ALT_INV_counter(27),
	dataf => \ALT_INV_counter[14]~DUPLICATE_q\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X18_Y60_N48
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~5_combout\ & ( \Equal0~3_combout\ & ( (\Equal0~2_combout\ & (\Equal0~4_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X18_Y60_N24
\clockbuffer~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clockbuffer~0_combout\ = ( !\clockbuffer~q\ & ( \Equal0~6_combout\ ) ) # ( \clockbuffer~q\ & ( !\Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_clockbuffer~q\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \clockbuffer~0_combout\);

-- Location: FF_X18_Y60_N29
clockbuffer : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \clockbuffer~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockbuffer~q\);

-- Location: LABCELL_X18_Y60_N54
\fsm1|cs.s0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm1|cs.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \fsm1|cs.s0~feeder_combout\);

-- Location: LABCELL_X17_Y60_N33
\fsm1|counter[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm1|counter[0]~3_combout\ = !\fsm1|counter\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm1|ALT_INV_counter\(0),
	combout => \fsm1|counter[0]~3_combout\);

-- Location: FF_X18_Y60_N38
\fsm1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \fsm1|counter[0]~3_combout\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|counter\(0));

-- Location: FF_X18_Y60_N32
\fsm1|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \fsm1|counter[1]~2_combout\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y60_N27
\fsm1|counter[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm1|counter[1]~2_combout\ = ( \fsm1|counter[1]~DUPLICATE_q\ & ( !\fsm1|counter\(0) ) ) # ( !\fsm1|counter[1]~DUPLICATE_q\ & ( \fsm1|counter\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \fsm1|ALT_INV_counter\(0),
	dataf => \fsm1|ALT_INV_counter[1]~DUPLICATE_q\,
	combout => \fsm1|counter[1]~2_combout\);

-- Location: FF_X18_Y60_N31
\fsm1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \fsm1|counter[1]~2_combout\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|counter\(1));

-- Location: LABCELL_X18_Y60_N39
\fsm1|counter[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm1|counter[2]~1_combout\ = ( \fsm1|counter\(1) & ( !\fsm1|counter\(2) $ (!\fsm1|counter\(0)) ) ) # ( !\fsm1|counter\(1) & ( \fsm1|counter\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm1|ALT_INV_counter\(2),
	datad => \fsm1|ALT_INV_counter\(0),
	dataf => \fsm1|ALT_INV_counter\(1),
	combout => \fsm1|counter[2]~1_combout\);

-- Location: FF_X18_Y60_N47
\fsm1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \fsm1|counter[2]~1_combout\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|counter\(2));

-- Location: FF_X18_Y60_N52
\fsm1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \fsm1|counter[3]~0_combout\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|counter\(3));

-- Location: LABCELL_X18_Y60_N57
\fsm1|counter[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm1|counter[3]~0_combout\ = ( \fsm1|counter\(1) & ( !\fsm1|counter\(3) $ (((!\fsm1|counter\(0)) # (!\fsm1|counter\(2)))) ) ) # ( !\fsm1|counter\(1) & ( \fsm1|counter\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|ALT_INV_counter\(0),
	datac => \fsm1|ALT_INV_counter\(3),
	datad => \fsm1|ALT_INV_counter\(2),
	dataf => \fsm1|ALT_INV_counter\(1),
	combout => \fsm1|counter[3]~0_combout\);

-- Location: FF_X18_Y60_N53
\fsm1|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \fsm1|counter[3]~0_combout\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y60_N42
\fsm1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm1|Selector0~0_combout\ = ( \fsm1|counter\(2) & ( \fsm1|counter[3]~DUPLICATE_q\ & ( (!\fsm1|cs.s0~q\) # ((\fsm1|cs.s1~q\ & ((!\fsm1|counter\(0)) # (!\fsm1|counter[1]~DUPLICATE_q\)))) ) ) ) # ( !\fsm1|counter\(2) & ( \fsm1|counter[3]~DUPLICATE_q\ & ( 
-- (!\fsm1|cs.s0~q\) # (\fsm1|cs.s1~q\) ) ) ) # ( \fsm1|counter\(2) & ( !\fsm1|counter[3]~DUPLICATE_q\ & ( (!\fsm1|cs.s0~q\) # (\fsm1|cs.s1~q\) ) ) ) # ( !\fsm1|counter\(2) & ( !\fsm1|counter[3]~DUPLICATE_q\ & ( (!\fsm1|cs.s0~q\) # (\fsm1|cs.s1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111100111111001111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|ALT_INV_counter\(0),
	datab => \fsm1|ALT_INV_cs.s1~q\,
	datac => \fsm1|ALT_INV_cs.s0~q\,
	datad => \fsm1|ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \fsm1|ALT_INV_counter\(2),
	dataf => \fsm1|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \fsm1|Selector0~0_combout\);

-- Location: FF_X18_Y60_N41
\fsm1|cs.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \fsm1|Selector0~0_combout\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|cs.s1~q\);

-- Location: LABCELL_X18_Y60_N0
\fsm1|ns.s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm1|ns.s2~0_combout\ = ( \fsm1|counter[3]~DUPLICATE_q\ & ( (\fsm1|counter\(0) & (\fsm1|counter\(2) & (\fsm1|cs.s1~q\ & \fsm1|counter\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|ALT_INV_counter\(0),
	datab => \fsm1|ALT_INV_counter\(2),
	datac => \fsm1|ALT_INV_cs.s1~q\,
	datad => \fsm1|ALT_INV_counter\(1),
	dataf => \fsm1|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \fsm1|ns.s2~0_combout\);

-- Location: FF_X18_Y60_N1
\fsm1|cs.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \fsm1|ns.s2~0_combout\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|cs.s2~q\);

-- Location: FF_X18_Y60_N50
\fsm1|cs.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \fsm1|cs.s2~q\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|cs.s3~q\);

-- Location: FF_X18_Y60_N5
\fsm1|cs.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \fsm1|cs.s3~q\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|cs.s4~q\);

-- Location: FF_X18_Y60_N56
\fsm1|cs.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \fsm1|cs.s0~feeder_combout\,
	clrn => \fsm1|ALT_INV_cs.s4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm1|cs.s0~q\);

-- Location: LABCELL_X18_Y58_N18
\fsm1|sh\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm1|sh~combout\ = ( \fsm1|cs.s1~q\ ) # ( !\fsm1|cs.s1~q\ & ( \fsm1|cs.s2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \fsm1|ALT_INV_cs.s2~q\,
	dataf => \fsm1|ALT_INV_cs.s1~q\,
	combout => \fsm1|sh~combout\);

-- Location: FF_X18_Y58_N56
\setupCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	asdata => \setupCounter~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => setupCounter(0));

-- Location: LABCELL_X18_Y58_N51
\setupCounter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \setupCounter~1_combout\ = ( setupCounter(3) & ( (!\matrixready~q\ & (!setupCounter(2) $ (((!\setupCounter[0]~DUPLICATE_q\) # (!setupCounter(1)))))) ) ) # ( !setupCounter(3) & ( !setupCounter(2) $ (((!\setupCounter[0]~DUPLICATE_q\) # (!setupCounter(1)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000100010001010000010001000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrixready~q\,
	datab => ALT_INV_setupCounter(2),
	datac => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datad => ALT_INV_setupCounter(1),
	dataf => ALT_INV_setupCounter(3),
	combout => \setupCounter~1_combout\);

-- Location: FF_X18_Y58_N32
\setupCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	asdata => \setupCounter~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => setupCounter(2));

-- Location: LABCELL_X18_Y58_N24
\setupCounter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \setupCounter~0_combout\ = ( setupCounter(3) & ( (!\matrixready~q\ & ((!setupCounter(1)) # ((!setupCounter(2)) # (!setupCounter(0))))) ) ) # ( !setupCounter(3) & ( (setupCounter(1) & (setupCounter(2) & setupCounter(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000111111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => ALT_INV_setupCounter(2),
	datac => ALT_INV_setupCounter(0),
	datad => \ALT_INV_matrixready~q\,
	dataf => ALT_INV_setupCounter(3),
	combout => \setupCounter~0_combout\);

-- Location: FF_X18_Y58_N11
\setupCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	asdata => \setupCounter~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => setupCounter(3));

-- Location: LABCELL_X17_Y58_N33
\matrixready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \matrixready~0_combout\ = ( setupCounter(3) & ( setupCounter(2) & ( ((setupCounter(0) & !setupCounter(1))) # (\matrixready~q\) ) ) ) # ( !setupCounter(3) & ( setupCounter(2) & ( \matrixready~q\ ) ) ) # ( setupCounter(3) & ( !setupCounter(2) & ( 
-- \matrixready~q\ ) ) ) # ( !setupCounter(3) & ( !setupCounter(2) & ( \matrixready~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_setupCounter(0),
	datac => ALT_INV_setupCounter(1),
	datad => \ALT_INV_matrixready~q\,
	datae => ALT_INV_setupCounter(3),
	dataf => ALT_INV_setupCounter(2),
	combout => \matrixready~0_combout\);

-- Location: FF_X18_Y58_N2
matrixready : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	asdata => \matrixready~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrixready~q\);

-- Location: LABCELL_X18_Y58_N45
\setupCounter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \setupCounter~2_combout\ = ( setupCounter(3) & ( (!\setupCounter[0]~DUPLICATE_q\ & !\matrixready~q\) ) ) # ( !setupCounter(3) & ( !\setupCounter[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datad => \ALT_INV_matrixready~q\,
	dataf => ALT_INV_setupCounter(3),
	combout => \setupCounter~2_combout\);

-- Location: FF_X18_Y58_N55
\setupCounter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	asdata => \setupCounter~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \setupCounter[0]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y58_N6
\setupCounter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \setupCounter~3_combout\ = (!\matrixready~q\ & (!setupCounter(1) $ ((!\setupCounter[0]~DUPLICATE_q\)))) # (\matrixready~q\ & (!setupCounter(3) & (!setupCounter(1) $ (!\setupCounter[0]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100000011001100110000001100110011000000110011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datac => \ALT_INV_matrixready~q\,
	datad => ALT_INV_setupCounter(3),
	combout => \setupCounter~3_combout\);

-- Location: FF_X18_Y58_N38
\setupCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	asdata => \setupCounter~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => setupCounter(1));

-- Location: LABCELL_X18_Y58_N30
\writeval~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~31_combout\ = ( !setupCounter(3) & ( (!\matrixready~q\ & (!setupCounter(2) & ((\setupCounter[0]~DUPLICATE_q\) # (setupCounter(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datac => \ALT_INV_matrixready~q\,
	datad => ALT_INV_setupCounter(2),
	dataf => ALT_INV_setupCounter(3),
	combout => \writeval~31_combout\);

-- Location: IOIBUF_X18_Y0_N1
\r8[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r8(0),
	o => \r8[0]~input_o\);

-- Location: IOIBUF_X17_Y0_N92
\r5[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r5(0),
	o => \r5[0]~input_o\);

-- Location: IOIBUF_X2_Y61_N41
\r6[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r6(0),
	o => \r6[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\r7[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r7(0),
	o => \r7[0]~input_o\);

-- Location: LABCELL_X18_Y58_N36
\writeval~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~29_combout\ = ( setupCounter(1) & ( \r7[0]~input_o\ & ( (!\setupCounter[0]~DUPLICATE_q\) # (\r8[0]~input_o\) ) ) ) # ( !setupCounter(1) & ( \r7[0]~input_o\ & ( (!\setupCounter[0]~DUPLICATE_q\ & (\r5[0]~input_o\)) # (\setupCounter[0]~DUPLICATE_q\ 
-- & ((\r6[0]~input_o\))) ) ) ) # ( setupCounter(1) & ( !\r7[0]~input_o\ & ( (\r8[0]~input_o\ & \setupCounter[0]~DUPLICATE_q\) ) ) ) # ( !setupCounter(1) & ( !\r7[0]~input_o\ & ( (!\setupCounter[0]~DUPLICATE_q\ & (\r5[0]~input_o\)) # 
-- (\setupCounter[0]~DUPLICATE_q\ & ((\r6[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r8[0]~input_o\,
	datab => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datac => \ALT_INV_r5[0]~input_o\,
	datad => \ALT_INV_r6[0]~input_o\,
	datae => ALT_INV_setupCounter(1),
	dataf => \ALT_INV_r7[0]~input_o\,
	combout => \writeval~29_combout\);

-- Location: LABCELL_X18_Y58_N42
\writeval[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval[7]~5_combout\ = ( !setupCounter(3) & ( (\matrixready~q\ & (((setupCounter(1) & !\setupCounter[0]~DUPLICATE_q\)) # (setupCounter(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010001000101010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrixready~q\,
	datab => ALT_INV_setupCounter(2),
	datac => ALT_INV_setupCounter(1),
	datad => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	dataf => ALT_INV_setupCounter(3),
	combout => \writeval[7]~5_combout\);

-- Location: IOIBUF_X15_Y0_N35
\r3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r3(0),
	o => \r3[0]~input_o\);

-- Location: LABCELL_X18_Y58_N27
\writeval[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval[7]~4_combout\ = ( \matrixready~q\ & ( (!setupCounter(3) & ((!setupCounter(1)) # ((\setupCounter[0]~DUPLICATE_q\) # (setupCounter(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110000111100001011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => ALT_INV_setupCounter(2),
	datac => ALT_INV_setupCounter(3),
	datad => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	dataf => \ALT_INV_matrixready~q\,
	combout => \writeval[7]~4_combout\);

-- Location: IOIBUF_X68_Y13_N38
\r1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r1(0),
	o => \r1[0]~input_o\);

-- Location: IOIBUF_X15_Y0_N18
\r4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r4(0),
	o => \r4[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N52
\r2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r2(0),
	o => \r2[0]~input_o\);

-- Location: LABCELL_X17_Y58_N57
\writeval~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~30_combout\ = ( setupCounter(0) & ( (!setupCounter(1) & ((\r2[0]~input_o\))) # (setupCounter(1) & (\r4[0]~input_o\)) ) ) # ( !setupCounter(0) & ( (!setupCounter(1) & (\r1[0]~input_o\)) # (setupCounter(1) & ((\r4[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r1[0]~input_o\,
	datab => \ALT_INV_r4[0]~input_o\,
	datac => ALT_INV_setupCounter(1),
	datad => \ALT_INV_r2[0]~input_o\,
	dataf => ALT_INV_setupCounter(0),
	combout => \writeval~30_combout\);

-- Location: LABCELL_X18_Y58_N12
\writeval~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~32_combout\ = ( \writeval[7]~4_combout\ & ( \writeval~30_combout\ & ( (!\writeval[7]~5_combout\) # (\writeval~29_combout\) ) ) ) # ( !\writeval[7]~4_combout\ & ( \writeval~30_combout\ & ( (!\writeval[7]~5_combout\ & (\writeval~31_combout\)) # 
-- (\writeval[7]~5_combout\ & ((\r3[0]~input_o\))) ) ) ) # ( \writeval[7]~4_combout\ & ( !\writeval~30_combout\ & ( (\writeval~29_combout\ & \writeval[7]~5_combout\) ) ) ) # ( !\writeval[7]~4_combout\ & ( !\writeval~30_combout\ & ( (!\writeval[7]~5_combout\ 
-- & (\writeval~31_combout\)) # (\writeval[7]~5_combout\ & ((\r3[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111000000110000001101010000010111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeval~31_combout\,
	datab => \ALT_INV_writeval~29_combout\,
	datac => \ALT_INV_writeval[7]~5_combout\,
	datad => \ALT_INV_r3[0]~input_o\,
	datae => \ALT_INV_writeval[7]~4_combout\,
	dataf => \ALT_INV_writeval~30_combout\,
	combout => \writeval~32_combout\);

-- Location: LABCELL_X18_Y58_N21
\writeval[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval[4]~1_combout\ = ( setupCounter(3) & ( ((!\setupCounter[0]~DUPLICATE_q\) # ((!setupCounter(2)) # (\matrixready~q\))) # (setupCounter(1)) ) ) # ( !setupCounter(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111101111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datac => ALT_INV_setupCounter(2),
	datad => \ALT_INV_matrixready~q\,
	dataf => ALT_INV_setupCounter(3),
	combout => \writeval[4]~1_combout\);

-- Location: FF_X18_Y58_N13
\writeval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~32_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(0));

-- Location: FF_X18_Y58_N19
\shft1|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \fsm1|sh~combout\,
	asdata => writeval(0),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(0));

-- Location: LABCELL_X17_Y58_N54
\shft1|tmp[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[1]~feeder_combout\ = ( \shft1|tmp\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft1|ALT_INV_tmp\(0),
	combout => \shft1|tmp[1]~feeder_combout\);

-- Location: IOIBUF_X2_Y61_N92
\r7[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r7(1),
	o => \r7[1]~input_o\);

-- Location: IOIBUF_X4_Y61_N35
\r6[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r6(1),
	o => \r6[1]~input_o\);

-- Location: IOIBUF_X4_Y61_N1
\r8[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r8(1),
	o => \r8[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\r5[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r5(1),
	o => \r5[1]~input_o\);

-- Location: LABCELL_X17_Y58_N24
\writeval~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~26_combout\ = ( \r5[1]~input_o\ & ( setupCounter(0) & ( (!setupCounter(1) & (\r6[1]~input_o\)) # (setupCounter(1) & ((\r8[1]~input_o\))) ) ) ) # ( !\r5[1]~input_o\ & ( setupCounter(0) & ( (!setupCounter(1) & (\r6[1]~input_o\)) # (setupCounter(1) 
-- & ((\r8[1]~input_o\))) ) ) ) # ( \r5[1]~input_o\ & ( !setupCounter(0) & ( (!setupCounter(1)) # (\r7[1]~input_o\) ) ) ) # ( !\r5[1]~input_o\ & ( !setupCounter(0) & ( (\r7[1]~input_o\ & setupCounter(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r7[1]~input_o\,
	datab => ALT_INV_setupCounter(1),
	datac => \ALT_INV_r6[1]~input_o\,
	datad => \ALT_INV_r8[1]~input_o\,
	datae => \ALT_INV_r5[1]~input_o\,
	dataf => ALT_INV_setupCounter(0),
	combout => \writeval~26_combout\);

-- Location: IOIBUF_X7_Y0_N1
\r2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r2(1),
	o => \r2[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\r1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r1(1),
	o => \r1[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\r4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r4(1),
	o => \r4[1]~input_o\);

-- Location: LABCELL_X17_Y58_N45
\writeval~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~27_combout\ = ( setupCounter(0) & ( (!setupCounter(1) & (\r2[1]~input_o\)) # (setupCounter(1) & ((\r4[1]~input_o\))) ) ) # ( !setupCounter(0) & ( (!setupCounter(1) & (\r1[1]~input_o\)) # (setupCounter(1) & ((\r4[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r2[1]~input_o\,
	datab => ALT_INV_setupCounter(1),
	datac => \ALT_INV_r1[1]~input_o\,
	datad => \ALT_INV_r4[1]~input_o\,
	dataf => ALT_INV_setupCounter(0),
	combout => \writeval~27_combout\);

-- Location: IOIBUF_X12_Y0_N1
\r3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r3(1),
	o => \r3[1]~input_o\);

-- Location: MLABCELL_X19_Y58_N18
\writeval~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~21_combout\ = (setupCounter(1) & (!setupCounter(2) & (!\matrixready~q\ & !setupCounter(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => ALT_INV_setupCounter(2),
	datac => \ALT_INV_matrixready~q\,
	datad => ALT_INV_setupCounter(3),
	combout => \writeval~21_combout\);

-- Location: LABCELL_X17_Y58_N36
\writeval~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~28_combout\ = ( \r3[1]~input_o\ & ( \writeval~21_combout\ & ( (!\writeval[7]~4_combout\) # ((!\writeval[7]~5_combout\ & ((\writeval~27_combout\))) # (\writeval[7]~5_combout\ & (\writeval~26_combout\))) ) ) ) # ( !\r3[1]~input_o\ & ( 
-- \writeval~21_combout\ & ( (!\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\) # (\writeval~27_combout\)))) # (\writeval[7]~5_combout\ & (\writeval~26_combout\ & ((\writeval[7]~4_combout\)))) ) ) ) # ( \r3[1]~input_o\ & ( !\writeval~21_combout\ & ( 
-- (!\writeval[7]~5_combout\ & (((\writeval~27_combout\ & \writeval[7]~4_combout\)))) # (\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\)) # (\writeval~26_combout\))) ) ) ) # ( !\r3[1]~input_o\ & ( !\writeval~21_combout\ & ( (\writeval[7]~4_combout\ & 
-- ((!\writeval[7]~5_combout\ & ((\writeval~27_combout\))) # (\writeval[7]~5_combout\ & (\writeval~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeval~26_combout\,
	datab => \ALT_INV_writeval~27_combout\,
	datac => \ALT_INV_writeval[7]~5_combout\,
	datad => \ALT_INV_writeval[7]~4_combout\,
	datae => \ALT_INV_r3[1]~input_o\,
	dataf => \ALT_INV_writeval~21_combout\,
	combout => \writeval~28_combout\);

-- Location: FF_X17_Y58_N37
\writeval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~28_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(1));

-- Location: FF_X17_Y58_N55
\shft1|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[1]~feeder_combout\,
	asdata => writeval(1),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(1));

-- Location: MLABCELL_X19_Y58_N39
\shft1|tmp[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[2]~feeder_combout\ = ( \shft1|tmp\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft1|ALT_INV_tmp\(1),
	combout => \shft1|tmp[2]~feeder_combout\);

-- Location: IOIBUF_X36_Y0_N18
\r1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r1(2),
	o => \r1[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N58
\r2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r2(2),
	o => \r2[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\r4[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r4(2),
	o => \r4[2]~input_o\);

-- Location: MLABCELL_X19_Y58_N51
\writeval~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~24_combout\ = ( \r2[2]~input_o\ & ( \r4[2]~input_o\ & ( ((setupCounter(1)) # (\r1[2]~input_o\)) # (\setupCounter[0]~DUPLICATE_q\) ) ) ) # ( !\r2[2]~input_o\ & ( \r4[2]~input_o\ & ( ((!\setupCounter[0]~DUPLICATE_q\ & \r1[2]~input_o\)) # 
-- (setupCounter(1)) ) ) ) # ( \r2[2]~input_o\ & ( !\r4[2]~input_o\ & ( (!setupCounter(1) & ((\r1[2]~input_o\) # (\setupCounter[0]~DUPLICATE_q\))) ) ) ) # ( !\r2[2]~input_o\ & ( !\r4[2]~input_o\ & ( (!\setupCounter[0]~DUPLICATE_q\ & (\r1[2]~input_o\ & 
-- !setupCounter(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000010111110000000000001010111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datac => \ALT_INV_r1[2]~input_o\,
	datad => ALT_INV_setupCounter(1),
	datae => \ALT_INV_r2[2]~input_o\,
	dataf => \ALT_INV_r4[2]~input_o\,
	combout => \writeval~24_combout\);

-- Location: IOIBUF_X32_Y0_N92
\r6[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r6(2),
	o => \r6[2]~input_o\);

-- Location: IOIBUF_X68_Y11_N4
\r7[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r7(2),
	o => \r7[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\r8[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r8(2),
	o => \r8[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N52
\r5[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r5(2),
	o => \r5[2]~input_o\);

-- Location: MLABCELL_X19_Y58_N30
\writeval~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~23_combout\ = ( \r5[2]~input_o\ & ( setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\ & (\r7[2]~input_o\)) # (\setupCounter[0]~DUPLICATE_q\ & ((\r8[2]~input_o\))) ) ) ) # ( !\r5[2]~input_o\ & ( setupCounter(1) & ( 
-- (!\setupCounter[0]~DUPLICATE_q\ & (\r7[2]~input_o\)) # (\setupCounter[0]~DUPLICATE_q\ & ((\r8[2]~input_o\))) ) ) ) # ( \r5[2]~input_o\ & ( !setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\) # (\r6[2]~input_o\) ) ) ) # ( !\r5[2]~input_o\ & ( 
-- !setupCounter(1) & ( (\r6[2]~input_o\ & \setupCounter[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r6[2]~input_o\,
	datab => \ALT_INV_r7[2]~input_o\,
	datac => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datad => \ALT_INV_r8[2]~input_o\,
	datae => \ALT_INV_r5[2]~input_o\,
	dataf => ALT_INV_setupCounter(1),
	combout => \writeval~23_combout\);

-- Location: IOIBUF_X36_Y0_N35
\r3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r3(2),
	o => \r3[2]~input_o\);

-- Location: MLABCELL_X19_Y58_N24
\writeval~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~25_combout\ = ( \r3[2]~input_o\ & ( \writeval~21_combout\ & ( (!\writeval[7]~4_combout\) # ((!\writeval[7]~5_combout\ & (\writeval~24_combout\)) # (\writeval[7]~5_combout\ & ((\writeval~23_combout\)))) ) ) ) # ( !\r3[2]~input_o\ & ( 
-- \writeval~21_combout\ & ( (!\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\)) # (\writeval~24_combout\))) # (\writeval[7]~5_combout\ & (((\writeval~23_combout\ & \writeval[7]~4_combout\)))) ) ) ) # ( \r3[2]~input_o\ & ( !\writeval~21_combout\ & ( 
-- (!\writeval[7]~5_combout\ & (\writeval~24_combout\ & ((\writeval[7]~4_combout\)))) # (\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\) # (\writeval~23_combout\)))) ) ) ) # ( !\r3[2]~input_o\ & ( !\writeval~21_combout\ & ( (\writeval[7]~4_combout\ & 
-- ((!\writeval[7]~5_combout\ & (\writeval~24_combout\)) # (\writeval[7]~5_combout\ & ((\writeval~23_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeval~24_combout\,
	datab => \ALT_INV_writeval~23_combout\,
	datac => \ALT_INV_writeval[7]~5_combout\,
	datad => \ALT_INV_writeval[7]~4_combout\,
	datae => \ALT_INV_r3[2]~input_o\,
	dataf => \ALT_INV_writeval~21_combout\,
	combout => \writeval~25_combout\);

-- Location: FF_X19_Y58_N25
\writeval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~25_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(2));

-- Location: FF_X19_Y58_N40
\shft1|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[2]~feeder_combout\,
	asdata => writeval(2),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(2));

-- Location: MLABCELL_X19_Y58_N21
\shft1|tmp[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[3]~feeder_combout\ = ( \shft1|tmp\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft1|ALT_INV_tmp\(2),
	combout => \shft1|tmp[3]~feeder_combout\);

-- Location: IOIBUF_X36_Y0_N52
\r2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r2(3),
	o => \r2[3]~input_o\);

-- Location: IOIBUF_X68_Y12_N21
\r1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r1(3),
	o => \r1[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N75
\r4[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r4(3),
	o => \r4[3]~input_o\);

-- Location: MLABCELL_X19_Y58_N36
\writeval~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~20_combout\ = ( setupCounter(1) & ( \r4[3]~input_o\ ) ) # ( !setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\ & ((\r1[3]~input_o\))) # (\setupCounter[0]~DUPLICATE_q\ & (\r2[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r2[3]~input_o\,
	datab => \ALT_INV_r1[3]~input_o\,
	datac => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datad => \ALT_INV_r4[3]~input_o\,
	dataf => ALT_INV_setupCounter(1),
	combout => \writeval~20_combout\);

-- Location: IOIBUF_X34_Y0_N1
\r8[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r8(3),
	o => \r8[3]~input_o\);

-- Location: IOIBUF_X68_Y12_N55
\r5[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r5(3),
	o => \r5[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N41
\r6[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r6(3),
	o => \r6[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\r7[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r7(3),
	o => \r7[3]~input_o\);

-- Location: MLABCELL_X19_Y58_N42
\writeval~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~19_combout\ = ( \r7[3]~input_o\ & ( setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\) # (\r8[3]~input_o\) ) ) ) # ( !\r7[3]~input_o\ & ( setupCounter(1) & ( (\setupCounter[0]~DUPLICATE_q\ & \r8[3]~input_o\) ) ) ) # ( \r7[3]~input_o\ & ( 
-- !setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\ & (\r5[3]~input_o\)) # (\setupCounter[0]~DUPLICATE_q\ & ((\r6[3]~input_o\))) ) ) ) # ( !\r7[3]~input_o\ & ( !setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\ & (\r5[3]~input_o\)) # 
-- (\setupCounter[0]~DUPLICATE_q\ & ((\r6[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datab => \ALT_INV_r8[3]~input_o\,
	datac => \ALT_INV_r5[3]~input_o\,
	datad => \ALT_INV_r6[3]~input_o\,
	datae => \ALT_INV_r7[3]~input_o\,
	dataf => ALT_INV_setupCounter(1),
	combout => \writeval~19_combout\);

-- Location: IOIBUF_X19_Y0_N1
\r3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r3(3),
	o => \r3[3]~input_o\);

-- Location: MLABCELL_X19_Y58_N54
\writeval~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~22_combout\ = ( \r3[3]~input_o\ & ( \writeval~21_combout\ & ( (!\writeval[7]~4_combout\) # ((!\writeval[7]~5_combout\ & (\writeval~20_combout\)) # (\writeval[7]~5_combout\ & ((\writeval~19_combout\)))) ) ) ) # ( !\r3[3]~input_o\ & ( 
-- \writeval~21_combout\ & ( (!\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\)) # (\writeval~20_combout\))) # (\writeval[7]~5_combout\ & (((\writeval~19_combout\ & \writeval[7]~4_combout\)))) ) ) ) # ( \r3[3]~input_o\ & ( !\writeval~21_combout\ & ( 
-- (!\writeval[7]~5_combout\ & (\writeval~20_combout\ & ((\writeval[7]~4_combout\)))) # (\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\) # (\writeval~19_combout\)))) ) ) ) # ( !\r3[3]~input_o\ & ( !\writeval~21_combout\ & ( (\writeval[7]~4_combout\ & 
-- ((!\writeval[7]~5_combout\ & (\writeval~20_combout\)) # (\writeval[7]~5_combout\ & ((\writeval~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeval~20_combout\,
	datab => \ALT_INV_writeval~19_combout\,
	datac => \ALT_INV_writeval[7]~5_combout\,
	datad => \ALT_INV_writeval[7]~4_combout\,
	datae => \ALT_INV_r3[3]~input_o\,
	dataf => \ALT_INV_writeval~21_combout\,
	combout => \writeval~22_combout\);

-- Location: FF_X19_Y58_N55
\writeval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~22_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(3));

-- Location: FF_X19_Y58_N22
\shft1|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[3]~feeder_combout\,
	asdata => writeval(3),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(3));

-- Location: MLABCELL_X19_Y58_N9
\shft1|tmp[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[4]~feeder_combout\ = ( \shft1|tmp\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft1|ALT_INV_tmp\(3),
	combout => \shft1|tmp[4]~feeder_combout\);

-- Location: IOIBUF_X18_Y0_N35
\r1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r1(4),
	o => \r1[4]~input_o\);

-- Location: IOIBUF_X4_Y61_N18
\r4[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r4(4),
	o => \r4[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\r2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r2(4),
	o => \r2[4]~input_o\);

-- Location: MLABCELL_X19_Y58_N6
\writeval~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~16_combout\ = ( setupCounter(1) & ( \r4[4]~input_o\ ) ) # ( !setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\ & (\r1[4]~input_o\)) # (\setupCounter[0]~DUPLICATE_q\ & ((\r2[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r1[4]~input_o\,
	datab => \ALT_INV_r4[4]~input_o\,
	datac => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datad => \ALT_INV_r2[4]~input_o\,
	dataf => ALT_INV_setupCounter(1),
	combout => \writeval~16_combout\);

-- Location: IOIBUF_X34_Y0_N35
\r3[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r3(4),
	o => \r3[4]~input_o\);

-- Location: LABCELL_X18_Y58_N48
\writeval~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~17_combout\ = ( !setupCounter(1) & ( (!\matrixready~q\ & (!setupCounter(2) & (setupCounter(3) & \setupCounter[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_matrixready~q\,
	datab => ALT_INV_setupCounter(2),
	datac => ALT_INV_setupCounter(3),
	datad => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	dataf => ALT_INV_setupCounter(1),
	combout => \writeval~17_combout\);

-- Location: IOIBUF_X34_Y0_N52
\r6[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r6(4),
	o => \r6[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\r8[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r8(4),
	o => \r8[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\r5[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r5(4),
	o => \r5[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N35
\r7[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r7(4),
	o => \r7[4]~input_o\);

-- Location: MLABCELL_X19_Y58_N0
\writeval~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~15_combout\ = ( \r7[4]~input_o\ & ( setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\) # (\r8[4]~input_o\) ) ) ) # ( !\r7[4]~input_o\ & ( setupCounter(1) & ( (\setupCounter[0]~DUPLICATE_q\ & \r8[4]~input_o\) ) ) ) # ( \r7[4]~input_o\ & ( 
-- !setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\ & ((\r5[4]~input_o\))) # (\setupCounter[0]~DUPLICATE_q\ & (\r6[4]~input_o\)) ) ) ) # ( !\r7[4]~input_o\ & ( !setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\ & ((\r5[4]~input_o\))) # 
-- (\setupCounter[0]~DUPLICATE_q\ & (\r6[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datab => \ALT_INV_r6[4]~input_o\,
	datac => \ALT_INV_r8[4]~input_o\,
	datad => \ALT_INV_r5[4]~input_o\,
	datae => \ALT_INV_r7[4]~input_o\,
	dataf => ALT_INV_setupCounter(1),
	combout => \writeval~15_combout\);

-- Location: MLABCELL_X19_Y58_N12
\writeval~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~18_combout\ = ( \writeval~17_combout\ & ( \writeval~15_combout\ & ( (!\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\)) # (\writeval~16_combout\))) # (\writeval[7]~5_combout\ & (((\r3[4]~input_o\) # (\writeval[7]~4_combout\)))) ) ) ) # ( 
-- !\writeval~17_combout\ & ( \writeval~15_combout\ & ( (!\writeval[7]~5_combout\ & (\writeval~16_combout\ & (\writeval[7]~4_combout\))) # (\writeval[7]~5_combout\ & (((\r3[4]~input_o\) # (\writeval[7]~4_combout\)))) ) ) ) # ( \writeval~17_combout\ & ( 
-- !\writeval~15_combout\ & ( (!\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\)) # (\writeval~16_combout\))) # (\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\ & \r3[4]~input_o\)))) ) ) ) # ( !\writeval~17_combout\ & ( !\writeval~15_combout\ & ( 
-- (!\writeval[7]~5_combout\ & (\writeval~16_combout\ & (\writeval[7]~4_combout\))) # (\writeval[7]~5_combout\ & (((!\writeval[7]~4_combout\ & \r3[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeval[7]~5_combout\,
	datab => \ALT_INV_writeval~16_combout\,
	datac => \ALT_INV_writeval[7]~4_combout\,
	datad => \ALT_INV_r3[4]~input_o\,
	datae => \ALT_INV_writeval~17_combout\,
	dataf => \ALT_INV_writeval~15_combout\,
	combout => \writeval~18_combout\);

-- Location: FF_X19_Y58_N13
\writeval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~18_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(4));

-- Location: FF_X19_Y58_N10
\shft1|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[4]~feeder_combout\,
	asdata => writeval(4),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(4));

-- Location: LABCELL_X17_Y58_N15
\shft1|tmp[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[5]~feeder_combout\ = \shft1|tmp\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \shft1|ALT_INV_tmp\(4),
	combout => \shft1|tmp[5]~feeder_combout\);

-- Location: IOIBUF_X14_Y0_N35
\r3[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r3(5),
	o => \r3[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N58
\r4[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r4(5),
	o => \r4[5]~input_o\);

-- Location: IOIBUF_X21_Y61_N18
\r1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r1(5),
	o => \r1[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\r2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r2(5),
	o => \r2[5]~input_o\);

-- Location: LABCELL_X18_Y58_N33
\writeval~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~13_combout\ = ( \r2[5]~input_o\ & ( (!setupCounter(1) & (((\r1[5]~input_o\)) # (\setupCounter[0]~DUPLICATE_q\))) # (setupCounter(1) & (((\r4[5]~input_o\)))) ) ) # ( !\r2[5]~input_o\ & ( (!setupCounter(1) & (!\setupCounter[0]~DUPLICATE_q\ & 
-- ((\r1[5]~input_o\)))) # (setupCounter(1) & (((\r4[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datac => \ALT_INV_r4[5]~input_o\,
	datad => \ALT_INV_r1[5]~input_o\,
	dataf => \ALT_INV_r2[5]~input_o\,
	combout => \writeval~13_combout\);

-- Location: IOIBUF_X12_Y0_N35
\r8[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r8(5),
	o => \r8[5]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\r5[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r5(5),
	o => \r5[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\r7[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r7(5),
	o => \r7[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\r6[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r6(5),
	o => \r6[5]~input_o\);

-- Location: LABCELL_X17_Y58_N48
\writeval~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~12_combout\ = ( \r7[5]~input_o\ & ( \r6[5]~input_o\ & ( (!setupCounter(0) & (((setupCounter(1)) # (\r5[5]~input_o\)))) # (setupCounter(0) & (((!setupCounter(1))) # (\r8[5]~input_o\))) ) ) ) # ( !\r7[5]~input_o\ & ( \r6[5]~input_o\ & ( 
-- (!setupCounter(0) & (((\r5[5]~input_o\ & !setupCounter(1))))) # (setupCounter(0) & (((!setupCounter(1))) # (\r8[5]~input_o\))) ) ) ) # ( \r7[5]~input_o\ & ( !\r6[5]~input_o\ & ( (!setupCounter(0) & (((setupCounter(1)) # (\r5[5]~input_o\)))) # 
-- (setupCounter(0) & (\r8[5]~input_o\ & ((setupCounter(1))))) ) ) ) # ( !\r7[5]~input_o\ & ( !\r6[5]~input_o\ & ( (!setupCounter(0) & (((\r5[5]~input_o\ & !setupCounter(1))))) # (setupCounter(0) & (\r8[5]~input_o\ & ((setupCounter(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r8[5]~input_o\,
	datab => ALT_INV_setupCounter(0),
	datac => \ALT_INV_r5[5]~input_o\,
	datad => ALT_INV_setupCounter(1),
	datae => \ALT_INV_r7[5]~input_o\,
	dataf => \ALT_INV_r6[5]~input_o\,
	combout => \writeval~12_combout\);

-- Location: LABCELL_X17_Y58_N9
\writeval~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~14_combout\ = ( \writeval~12_combout\ & ( (!\writeval[7]~5_combout\ & (\writeval[7]~4_combout\ & ((\writeval~13_combout\)))) # (\writeval[7]~5_combout\ & (((\r3[5]~input_o\)) # (\writeval[7]~4_combout\))) ) ) # ( !\writeval~12_combout\ & ( 
-- (!\writeval[7]~5_combout\ & (\writeval[7]~4_combout\ & ((\writeval~13_combout\)))) # (\writeval[7]~5_combout\ & (!\writeval[7]~4_combout\ & (\r3[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeval[7]~5_combout\,
	datab => \ALT_INV_writeval[7]~4_combout\,
	datac => \ALT_INV_r3[5]~input_o\,
	datad => \ALT_INV_writeval~13_combout\,
	dataf => \ALT_INV_writeval~12_combout\,
	combout => \writeval~14_combout\);

-- Location: FF_X17_Y58_N10
\writeval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~14_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(5));

-- Location: FF_X17_Y58_N17
\shft1|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[5]~feeder_combout\,
	asdata => writeval(5),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(5));

-- Location: LABCELL_X17_Y58_N0
\shft1|tmp[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[6]~feeder_combout\ = ( \shft1|tmp\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft1|ALT_INV_tmp\(5),
	combout => \shft1|tmp[6]~feeder_combout\);

-- Location: IOIBUF_X14_Y0_N18
\r3[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r3(6),
	o => \r3[6]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\r6[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r6(6),
	o => \r6[6]~input_o\);

-- Location: IOIBUF_X21_Y61_N1
\r7[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r7(6),
	o => \r7[6]~input_o\);

-- Location: IOIBUF_X68_Y13_N21
\r8[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r8(6),
	o => \r8[6]~input_o\);

-- Location: IOIBUF_X21_Y0_N35
\r5[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r5(6),
	o => \r5[6]~input_o\);

-- Location: LABCELL_X18_Y58_N57
\writeval~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~9_combout\ = ( \r5[6]~input_o\ & ( setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\ & (\r7[6]~input_o\)) # (\setupCounter[0]~DUPLICATE_q\ & ((\r8[6]~input_o\))) ) ) ) # ( !\r5[6]~input_o\ & ( setupCounter(1) & ( 
-- (!\setupCounter[0]~DUPLICATE_q\ & (\r7[6]~input_o\)) # (\setupCounter[0]~DUPLICATE_q\ & ((\r8[6]~input_o\))) ) ) ) # ( \r5[6]~input_o\ & ( !setupCounter(1) & ( (!\setupCounter[0]~DUPLICATE_q\) # (\r6[6]~input_o\) ) ) ) # ( !\r5[6]~input_o\ & ( 
-- !setupCounter(1) & ( (\r6[6]~input_o\ & \setupCounter[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r6[6]~input_o\,
	datab => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datac => \ALT_INV_r7[6]~input_o\,
	datad => \ALT_INV_r8[6]~input_o\,
	datae => \ALT_INV_r5[6]~input_o\,
	dataf => ALT_INV_setupCounter(1),
	combout => \writeval~9_combout\);

-- Location: IOIBUF_X7_Y0_N18
\r2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r2(6),
	o => \r2[6]~input_o\);

-- Location: IOIBUF_X2_Y61_N58
\r1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r1(6),
	o => \r1[6]~input_o\);

-- Location: IOIBUF_X68_Y13_N4
\r4[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r4(6),
	o => \r4[6]~input_o\);

-- Location: LABCELL_X18_Y58_N9
\writeval~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~10_combout\ = ( \r4[6]~input_o\ & ( ((!\setupCounter[0]~DUPLICATE_q\ & ((\r1[6]~input_o\))) # (\setupCounter[0]~DUPLICATE_q\ & (\r2[6]~input_o\))) # (setupCounter(1)) ) ) # ( !\r4[6]~input_o\ & ( (!setupCounter(1) & 
-- ((!\setupCounter[0]~DUPLICATE_q\ & ((\r1[6]~input_o\))) # (\setupCounter[0]~DUPLICATE_q\ & (\r2[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datac => \ALT_INV_r2[6]~input_o\,
	datad => \ALT_INV_r1[6]~input_o\,
	dataf => \ALT_INV_r4[6]~input_o\,
	combout => \writeval~10_combout\);

-- Location: LABCELL_X17_Y58_N21
\writeval~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~11_combout\ = ( \writeval~9_combout\ & ( \writeval~10_combout\ & ( ((\writeval[7]~5_combout\ & \r3[6]~input_o\)) # (\writeval[7]~4_combout\) ) ) ) # ( !\writeval~9_combout\ & ( \writeval~10_combout\ & ( (!\writeval[7]~5_combout\ & 
-- (\writeval[7]~4_combout\)) # (\writeval[7]~5_combout\ & (!\writeval[7]~4_combout\ & \r3[6]~input_o\)) ) ) ) # ( \writeval~9_combout\ & ( !\writeval~10_combout\ & ( (\writeval[7]~5_combout\ & ((\r3[6]~input_o\) # (\writeval[7]~4_combout\))) ) ) ) # ( 
-- !\writeval~9_combout\ & ( !\writeval~10_combout\ & ( (\writeval[7]~5_combout\ & (!\writeval[7]~4_combout\ & \r3[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000100010101010100100010011001100011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeval[7]~5_combout\,
	datab => \ALT_INV_writeval[7]~4_combout\,
	datad => \ALT_INV_r3[6]~input_o\,
	datae => \ALT_INV_writeval~9_combout\,
	dataf => \ALT_INV_writeval~10_combout\,
	combout => \writeval~11_combout\);

-- Location: FF_X17_Y58_N22
\writeval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~11_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(6));

-- Location: FF_X17_Y58_N2
\shft1|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[6]~feeder_combout\,
	asdata => writeval(6),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(6));

-- Location: LABCELL_X17_Y58_N12
\shft1|tmp[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[7]~feeder_combout\ = ( \shft1|tmp\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft1|ALT_INV_tmp\(6),
	combout => \shft1|tmp[7]~feeder_combout\);

-- Location: IOIBUF_X4_Y61_N52
\r4[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r4(7),
	o => \r4[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\r1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r1(7),
	o => \r1[7]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\r2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r2(7),
	o => \r2[7]~input_o\);

-- Location: LABCELL_X17_Y58_N3
\writeval~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~7_combout\ = ( setupCounter(0) & ( (!setupCounter(1) & ((\r2[7]~input_o\))) # (setupCounter(1) & (\r4[7]~input_o\)) ) ) # ( !setupCounter(0) & ( (!setupCounter(1) & ((\r1[7]~input_o\))) # (setupCounter(1) & (\r4[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_r4[7]~input_o\,
	datab => ALT_INV_setupCounter(1),
	datac => \ALT_INV_r1[7]~input_o\,
	datad => \ALT_INV_r2[7]~input_o\,
	dataf => ALT_INV_setupCounter(0),
	combout => \writeval~7_combout\);

-- Location: IOIBUF_X21_Y0_N18
\r6[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r6(7),
	o => \r6[7]~input_o\);

-- Location: IOIBUF_X15_Y0_N52
\r8[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r8(7),
	o => \r8[7]~input_o\);

-- Location: IOIBUF_X15_Y61_N1
\r5[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r5(7),
	o => \r5[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\r7[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r7(7),
	o => \r7[7]~input_o\);

-- Location: LABCELL_X18_Y58_N0
\writeval~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~6_combout\ = ( \r5[7]~input_o\ & ( \r7[7]~input_o\ & ( (!\setupCounter[0]~DUPLICATE_q\) # ((!setupCounter(1) & (\r6[7]~input_o\)) # (setupCounter(1) & ((\r8[7]~input_o\)))) ) ) ) # ( !\r5[7]~input_o\ & ( \r7[7]~input_o\ & ( (!setupCounter(1) & 
-- (\r6[7]~input_o\ & ((\setupCounter[0]~DUPLICATE_q\)))) # (setupCounter(1) & (((!\setupCounter[0]~DUPLICATE_q\) # (\r8[7]~input_o\)))) ) ) ) # ( \r5[7]~input_o\ & ( !\r7[7]~input_o\ & ( (!setupCounter(1) & (((!\setupCounter[0]~DUPLICATE_q\)) # 
-- (\r6[7]~input_o\))) # (setupCounter(1) & (((\r8[7]~input_o\ & \setupCounter[0]~DUPLICATE_q\)))) ) ) ) # ( !\r5[7]~input_o\ & ( !\r7[7]~input_o\ & ( (\setupCounter[0]~DUPLICATE_q\ & ((!setupCounter(1) & (\r6[7]~input_o\)) # (setupCounter(1) & 
-- ((\r8[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => \ALT_INV_r6[7]~input_o\,
	datac => \ALT_INV_r8[7]~input_o\,
	datad => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datae => \ALT_INV_r5[7]~input_o\,
	dataf => \ALT_INV_r7[7]~input_o\,
	combout => \writeval~6_combout\);

-- Location: IOIBUF_X10_Y0_N41
\r3[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r3(7),
	o => \r3[7]~input_o\);

-- Location: LABCELL_X17_Y58_N6
\writeval~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~8_combout\ = ( \r3[7]~input_o\ & ( (!\writeval[7]~5_combout\ & (\writeval[7]~4_combout\ & (\writeval~7_combout\))) # (\writeval[7]~5_combout\ & ((!\writeval[7]~4_combout\) # ((\writeval~6_combout\)))) ) ) # ( !\r3[7]~input_o\ & ( 
-- (\writeval[7]~4_combout\ & ((!\writeval[7]~5_combout\ & (\writeval~7_combout\)) # (\writeval[7]~5_combout\ & ((\writeval~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writeval[7]~5_combout\,
	datab => \ALT_INV_writeval[7]~4_combout\,
	datac => \ALT_INV_writeval~7_combout\,
	datad => \ALT_INV_writeval~6_combout\,
	dataf => \ALT_INV_r3[7]~input_o\,
	combout => \writeval~8_combout\);

-- Location: FF_X17_Y58_N7
\writeval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~8_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(7));

-- Location: FF_X17_Y58_N14
\shft1|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[7]~feeder_combout\,
	asdata => writeval(7),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(7));

-- Location: LABCELL_X17_Y60_N30
\shft1|tmp[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[8]~feeder_combout\ = ( \shft1|tmp\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \shft1|ALT_INV_tmp\(7),
	combout => \shft1|tmp[8]~feeder_combout\);

-- Location: LABCELL_X17_Y60_N51
\writeval~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~3_combout\ = ( !\setupCounter[0]~DUPLICATE_q\ & ( \matrixready~q\ & ( !setupCounter(3) ) ) ) # ( \setupCounter[0]~DUPLICATE_q\ & ( !\matrixready~q\ & ( (setupCounter(3) & (!setupCounter(2) & setupCounter(1))) ) ) ) # ( 
-- !\setupCounter[0]~DUPLICATE_q\ & ( !\matrixready~q\ & ( !setupCounter(3) $ (((!setupCounter(2) & !setupCounter(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010000000000101000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(3),
	datac => ALT_INV_setupCounter(2),
	datad => ALT_INV_setupCounter(1),
	datae => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	dataf => \ALT_INV_matrixready~q\,
	combout => \writeval~3_combout\);

-- Location: FF_X17_Y60_N52
\writeval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~3_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(8));

-- Location: FF_X17_Y60_N32
\shft1|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[8]~feeder_combout\,
	asdata => writeval(8),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(8));

-- Location: LABCELL_X17_Y60_N24
\shft1|tmp[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[9]~feeder_combout\ = \shft1|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \shft1|ALT_INV_tmp\(8),
	combout => \shft1|tmp[9]~feeder_combout\);

-- Location: LABCELL_X17_Y60_N45
\writeval~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~2_combout\ = ( setupCounter(1) & ( \matrixready~q\ & ( (!setupCounter(0) & !setupCounter(3)) ) ) ) # ( !setupCounter(1) & ( \matrixready~q\ & ( (setupCounter(0) & !setupCounter(3)) ) ) ) # ( setupCounter(1) & ( !\matrixready~q\ & ( 
-- (!setupCounter(0) & ((!setupCounter(3)))) # (setupCounter(0) & (!setupCounter(2))) ) ) ) # ( !setupCounter(1) & ( !\matrixready~q\ & ( (setupCounter(0) & ((!setupCounter(2) & ((setupCounter(3)))) # (setupCounter(2) & ((!setupCounter(3)) # 
-- (writeval(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110001111111000011000000110011000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_writeval(9),
	datab => ALT_INV_setupCounter(0),
	datac => ALT_INV_setupCounter(2),
	datad => ALT_INV_setupCounter(3),
	datae => ALT_INV_setupCounter(1),
	dataf => \ALT_INV_matrixready~q\,
	combout => \writeval~2_combout\);

-- Location: FF_X17_Y60_N7
\writeval[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	asdata => \writeval~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(9));

-- Location: FF_X17_Y60_N26
\shft1|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[9]~feeder_combout\,
	asdata => writeval(9),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(9));

-- Location: LABCELL_X17_Y60_N15
\shft1|tmp[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[10]~feeder_combout\ = \shft1|tmp\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \shft1|ALT_INV_tmp\(9),
	combout => \shft1|tmp[10]~feeder_combout\);

-- Location: LABCELL_X17_Y60_N0
\writeval~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~33_combout\ = ( !setupCounter(3) & ( \matrixready~q\ & ( !setupCounter(2) $ (((!setupCounter(1)) # (!\setupCounter[0]~DUPLICATE_q\))) ) ) ) # ( setupCounter(3) & ( !\matrixready~q\ & ( (!setupCounter(2) & ((!setupCounter(1)) # 
-- (\setupCounter[0]~DUPLICATE_q\))) ) ) ) # ( !setupCounter(3) & ( !\matrixready~q\ & ( (\setupCounter[0]~DUPLICATE_q\ & (!setupCounter(1) $ (setupCounter(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001100011001000110000110110001101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(1),
	datab => ALT_INV_setupCounter(2),
	datac => \ALT_INV_setupCounter[0]~DUPLICATE_q\,
	datae => ALT_INV_setupCounter(3),
	dataf => \ALT_INV_matrixready~q\,
	combout => \writeval~33_combout\);

-- Location: FF_X17_Y60_N1
\writeval[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~33_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(10));

-- Location: FF_X17_Y60_N16
\shft1|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[10]~feeder_combout\,
	asdata => writeval(10),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(10));

-- Location: LABCELL_X17_Y60_N12
\shft1|tmp[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp[11]~feeder_combout\ = \shft1|tmp\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \shft1|ALT_INV_tmp\(10),
	combout => \shft1|tmp[11]~feeder_combout\);

-- Location: LABCELL_X17_Y60_N21
\writeval~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \writeval~0_combout\ = ( \matrixready~q\ & ( (!setupCounter(3) & (setupCounter(0) & (setupCounter(2) & setupCounter(1)))) ) ) # ( !\matrixready~q\ & ( (!setupCounter(3) & (!setupCounter(2) & ((setupCounter(1)) # (setupCounter(0))))) # (setupCounter(3) & 
-- (((setupCounter(2) & !setupCounter(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010110100000000000000000001000100101101000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_setupCounter(3),
	datab => ALT_INV_setupCounter(0),
	datac => ALT_INV_setupCounter(2),
	datad => ALT_INV_setupCounter(1),
	datae => \ALT_INV_matrixready~q\,
	combout => \writeval~0_combout\);

-- Location: FF_X17_Y60_N22
\writeval[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fsm1|cs.s4~q\,
	d => \writeval~0_combout\,
	ena => \writeval[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeval(11));

-- Location: FF_X17_Y60_N13
\shft1|tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp[11]~feeder_combout\,
	asdata => writeval(11),
	sload => \fsm1|ALT_INV_cs.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(11));

-- Location: LABCELL_X17_Y60_N57
\shft1|tmp~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp~3_combout\ = ( \fsm1|cs.s0~q\ & ( \shft1|tmp\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \fsm1|ALT_INV_cs.s0~q\,
	dataf => \shft1|ALT_INV_tmp\(11),
	combout => \shft1|tmp~3_combout\);

-- Location: FF_X18_Y60_N8
\shft1|tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \shft1|tmp~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(12));

-- Location: LABCELL_X18_Y60_N3
\shft1|tmp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp~2_combout\ = ( \fsm1|cs.s0~q\ & ( \shft1|tmp\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \shft1|ALT_INV_tmp\(12),
	dataf => \fsm1|ALT_INV_cs.s0~q\,
	combout => \shft1|tmp~2_combout\);

-- Location: FF_X18_Y60_N19
\shft1|tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	asdata => \shft1|tmp~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(13));

-- Location: LABCELL_X17_Y60_N39
\shft1|tmp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp~1_combout\ = ( \fsm1|cs.s0~q\ & ( \shft1|tmp\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \shft1|ALT_INV_tmp\(13),
	dataf => \fsm1|ALT_INV_cs.s0~q\,
	combout => \shft1|tmp~1_combout\);

-- Location: FF_X17_Y60_N40
\shft1|tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(14));

-- Location: LABCELL_X17_Y60_N36
\shft1|tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shft1|tmp~0_combout\ = ( \shft1|tmp\(14) & ( \fsm1|cs.s0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm1|ALT_INV_cs.s0~q\,
	dataf => \shft1|ALT_INV_tmp\(14),
	combout => \shft1|tmp~0_combout\);

-- Location: FF_X17_Y60_N37
\shft1|tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockbuffer~q\,
	d => \shft1|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shft1|tmp\(15));

-- Location: LABCELL_X18_Y60_N36
\fsm1|ce\ : cyclonev_lcell_comb
-- Equation(s):
-- \fsm1|ce~combout\ = (!\fsm1|cs.s0~q\) # (\fsm1|cs.s3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm1|ALT_INV_cs.s3~q\,
	datac => \fsm1|ALT_INV_cs.s0~q\,
	combout => \fsm1|ce~combout\);

-- Location: MLABCELL_X14_Y21_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


