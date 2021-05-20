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

-- DATE "05/11/2021 15:35:09"

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
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	spi_master IS
    PORT (
	clock : IN std_logic;
	reset_n : IN std_logic;
	enable : IN std_logic;
	cpol : IN std_logic;
	cpha : IN std_logic;
	cont : IN std_logic;
	clk_div : IN STD.STANDARD.integer;
	addr : IN STD.STANDARD.integer;
	tx_data : IN std_logic_vector(1 DOWNTO 0);
	miso : IN std_logic;
	sclk : BUFFER std_logic;
	ss_n : BUFFER std_logic_vector(3 DOWNTO 0);
	mosi : OUT std_logic;
	busy : OUT std_logic;
	rx_data : OUT std_logic_vector(1 DOWNTO 0)
	);
END spi_master;

-- Design Ports Information
-- sclk	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_n[0]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_n[1]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_n[2]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_n[3]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpol	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[31]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[26]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[27]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[28]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[29]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[30]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[20]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[21]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[22]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[23]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[24]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[25]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[16]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[17]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[18]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[19]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[15]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[16]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[17]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[12]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[13]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[14]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[9]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[10]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[11]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[6]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[7]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[8]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[0]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[31]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[25]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[26]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[27]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[28]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[29]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[30]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[19]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[20]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[21]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[22]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[23]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[24]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[18]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[1]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[2]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[3]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[4]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[5]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpha	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi_master IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_cpol : std_logic;
SIGNAL ww_cpha : std_logic;
SIGNAL ww_cont : std_logic;
SIGNAL ww_clk_div : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_tx_data : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_miso : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_ss_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mosi : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_rx_data : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \cpha~input_o\ : std_logic;
SIGNAL \last_bit_rx[0]~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \clk_div[24]~input_o\ : std_logic;
SIGNAL \clk_div[20]~input_o\ : std_logic;
SIGNAL \clk_div[23]~input_o\ : std_logic;
SIGNAL \clk_div[22]~input_o\ : std_logic;
SIGNAL \clk_div[19]~input_o\ : std_logic;
SIGNAL \clk_div[21]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \clk_div[31]~input_o\ : std_logic;
SIGNAL \clk_div[14]~input_o\ : std_logic;
SIGNAL \clk_div[18]~input_o\ : std_logic;
SIGNAL \clk_div[15]~input_o\ : std_logic;
SIGNAL \clk_div[13]~input_o\ : std_logic;
SIGNAL \clk_div[17]~input_o\ : std_logic;
SIGNAL \clk_div[16]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \clk_div[27]~input_o\ : std_logic;
SIGNAL \clk_div[26]~input_o\ : std_logic;
SIGNAL \clk_div[29]~input_o\ : std_logic;
SIGNAL \clk_div[25]~input_o\ : std_logic;
SIGNAL \clk_div[28]~input_o\ : std_logic;
SIGNAL \clk_div[30]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk_div[2]~input_o\ : std_logic;
SIGNAL \clk_div[4]~input_o\ : std_logic;
SIGNAL \clk_div[6]~input_o\ : std_logic;
SIGNAL \clk_div[3]~input_o\ : std_logic;
SIGNAL \clk_div[5]~input_o\ : std_logic;
SIGNAL \clk_div[1]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \clk_div[7]~input_o\ : std_logic;
SIGNAL \clk_div[11]~input_o\ : std_logic;
SIGNAL \clk_div[10]~input_o\ : std_logic;
SIGNAL \clk_div[8]~input_o\ : std_logic;
SIGNAL \clk_div[9]~input_o\ : std_logic;
SIGNAL \clk_div[12]~input_o\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \clk_div[0]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \clk_ratio~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \count[31]~0_combout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \rx_data[0]~1_combout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~65_sumout\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~69_sumout\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~105_sumout\ : std_logic;
SIGNAL \Add5~106\ : std_logic;
SIGNAL \Add5~109_sumout\ : std_logic;
SIGNAL \Add5~110\ : std_logic;
SIGNAL \Add5~113_sumout\ : std_logic;
SIGNAL \Add5~114\ : std_logic;
SIGNAL \Add5~117_sumout\ : std_logic;
SIGNAL \Add5~118\ : std_logic;
SIGNAL \Add5~121_sumout\ : std_logic;
SIGNAL \Add5~122\ : std_logic;
SIGNAL \Add5~125_sumout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \Add5~126\ : std_logic;
SIGNAL \Add5~93_sumout\ : std_logic;
SIGNAL \Add5~94\ : std_logic;
SIGNAL \Add5~97_sumout\ : std_logic;
SIGNAL \Add5~98\ : std_logic;
SIGNAL \Add5~101_sumout\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~81_sumout\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~85_sumout\ : std_logic;
SIGNAL \Add5~86\ : std_logic;
SIGNAL \Add5~89_sumout\ : std_logic;
SIGNAL \Add5~90\ : std_logic;
SIGNAL \Add5~73_sumout\ : std_logic;
SIGNAL \Add5~74\ : std_logic;
SIGNAL \Add5~77_sumout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \clk_ratio[31]~3_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \clk_ratio[20]~feeder_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Equal1~12_combout\ : std_logic;
SIGNAL \cont~input_o\ : std_logic;
SIGNAL \clk_toggles~3_combout\ : std_logic;
SIGNAL \clk_toggles[2]~2_combout\ : std_logic;
SIGNAL \clk_toggles~1_combout\ : std_logic;
SIGNAL \clk_toggles~4_combout\ : std_logic;
SIGNAL \clk_toggles~0_combout\ : std_logic;
SIGNAL \ss_n~8_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \clk_ratio[31]~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \tx_buffer[0]~3_combout\ : std_logic;
SIGNAL \cpha~_wirecell_combout\ : std_logic;
SIGNAL \assert_data~_wirecell_combout\ : std_logic;
SIGNAL \assert_data~q\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \tx_buffer[1]~1_combout\ : std_logic;
SIGNAL \tx_buffer[1]~2_combout\ : std_logic;
SIGNAL \tx_buffer[1]~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \mosi~1_combout\ : std_logic;
SIGNAL \mosi~reg0_q\ : std_logic;
SIGNAL \mosi~2_combout\ : std_logic;
SIGNAL \mosi~en_q\ : std_logic;
SIGNAL \cpol~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \addr[18]~input_o\ : std_logic;
SIGNAL \addr[16]~input_o\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr[19]~input_o\ : std_logic;
SIGNAL \addr[17]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \addr[23]~input_o\ : std_logic;
SIGNAL \addr[24]~input_o\ : std_logic;
SIGNAL \addr[22]~input_o\ : std_logic;
SIGNAL \addr[20]~input_o\ : std_logic;
SIGNAL \addr[25]~input_o\ : std_logic;
SIGNAL \addr[21]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \addr[31]~input_o\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \addr[26]~input_o\ : std_logic;
SIGNAL \addr[30]~input_o\ : std_logic;
SIGNAL \addr[28]~input_o\ : std_logic;
SIGNAL \addr[29]~input_o\ : std_logic;
SIGNAL \addr[27]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \slave~0_combout\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \slave~1_combout\ : std_logic;
SIGNAL \ss_n~6_combout\ : std_logic;
SIGNAL \ss_n~7_combout\ : std_logic;
SIGNAL \ss_n[3]~reg0_q\ : std_logic;
SIGNAL \ss_n~0_combout\ : std_logic;
SIGNAL \ss_n~1_combout\ : std_logic;
SIGNAL \ss_n[0]~reg0_q\ : std_logic;
SIGNAL \ss_n~4_combout\ : std_logic;
SIGNAL \ss_n~5_combout\ : std_logic;
SIGNAL \ss_n[2]~reg0_q\ : std_logic;
SIGNAL \ss_n~2_combout\ : std_logic;
SIGNAL \ss_n~3_combout\ : std_logic;
SIGNAL \ss_n[1]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \sclk~0_combout\ : std_logic;
SIGNAL \sclk~1_combout\ : std_logic;
SIGNAL \sclk~2_combout\ : std_logic;
SIGNAL \sclk~reg0_q\ : std_logic;
SIGNAL \continue~0_combout\ : std_logic;
SIGNAL \continue~q\ : std_logic;
SIGNAL \busy~0_combout\ : std_logic;
SIGNAL \enable~_wirecell_combout\ : std_logic;
SIGNAL \busy~reg0_q\ : std_logic;
SIGNAL \miso~input_o\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \rx_buffer[0]~0_combout\ : std_logic;
SIGNAL \rx_buffer[0]~1_combout\ : std_logic;
SIGNAL \rx_data[0]~0_combout\ : std_logic;
SIGNAL \rx_data[0]~reg0_q\ : std_logic;
SIGNAL \rx_data[1]~reg0_q\ : std_logic;
SIGNAL clk_toggles : std_logic_vector(2 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL slave : std_logic_vector(31 DOWNTO 0);
SIGNAL clk_ratio : std_logic_vector(31 DOWNTO 0);
SIGNAL rx_buffer : std_logic_vector(1 DOWNTO 0);
SIGNAL last_bit_rx : std_logic_vector(2 DOWNTO 0);
SIGNAL tx_buffer : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_ss_n[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_sclk~reg0_q\ : std_logic;
SIGNAL \ALT_INV_assert_data~q\ : std_logic;
SIGNAL \ALT_INV_Add5~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~49_sumout\ : std_logic;
SIGNAL \ALT_INV_continue~q\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_clk_toggles : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_state~q\ : std_logic;
SIGNAL \ALT_INV_busy~reg0_q\ : std_logic;
SIGNAL \ALT_INV_tx_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_tx_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_cpha~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_div[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_cont~input_o\ : std_logic;
SIGNAL \ALT_INV_cpol~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \ALT_INV_tx_buffer[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL ALT_INV_tx_buffer : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_rx_buffer[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rx_data[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_last_bit_rx : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_clk_toggles~0_combout\ : std_logic;
SIGNAL \ALT_INV_ss_n~6_combout\ : std_logic;
SIGNAL \ALT_INV_ss_n~4_combout\ : std_logic;
SIGNAL \ALT_INV_ss_n~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ss_n~0_combout\ : std_logic;
SIGNAL \ALT_INV_sclk~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~11_combout\ : std_logic;
SIGNAL ALT_INV_clk_ratio : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL ALT_INV_slave : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_sclk~0_combout\ : std_logic;
SIGNAL \ALT_INV_ss_n[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ss_n[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ss_n[1]~reg0_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset_n <= reset_n;
ww_enable <= enable;
ww_cpol <= cpol;
ww_cpha <= cpha;
ww_cont <= cont;
ww_clk_div <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(clk_div, 32);
ww_addr <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(addr, 32);
ww_tx_data <= tx_data;
ww_miso <= miso;
sclk <= ww_sclk;
ss_n <= ww_ss_n;
mosi <= ww_mosi;
busy <= ww_busy;
rx_data <= ww_rx_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ss_n[0]~reg0_q\ <= NOT \ss_n[0]~reg0_q\;
\ALT_INV_sclk~reg0_q\ <= NOT \sclk~reg0_q\;
\ALT_INV_assert_data~q\ <= NOT \assert_data~q\;
\ALT_INV_Add5~77_sumout\ <= NOT \Add5~77_sumout\;
\ALT_INV_Add5~49_sumout\ <= NOT \Add5~49_sumout\;
\ALT_INV_continue~q\ <= NOT \continue~q\;
ALT_INV_count(23) <= NOT count(23);
ALT_INV_count(22) <= NOT count(22);
ALT_INV_count(21) <= NOT count(21);
ALT_INV_count(20) <= NOT count(20);
ALT_INV_count(19) <= NOT count(19);
ALT_INV_count(18) <= NOT count(18);
ALT_INV_count(26) <= NOT count(26);
ALT_INV_count(25) <= NOT count(25);
ALT_INV_count(24) <= NOT count(24);
ALT_INV_count(29) <= NOT count(29);
ALT_INV_count(28) <= NOT count(28);
ALT_INV_count(27) <= NOT count(27);
ALT_INV_count(30) <= NOT count(30);
ALT_INV_count(5) <= NOT count(5);
ALT_INV_count(4) <= NOT count(4);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(8) <= NOT count(8);
ALT_INV_count(7) <= NOT count(7);
ALT_INV_count(6) <= NOT count(6);
ALT_INV_count(11) <= NOT count(11);
ALT_INV_count(10) <= NOT count(10);
ALT_INV_count(9) <= NOT count(9);
ALT_INV_count(14) <= NOT count(14);
ALT_INV_count(13) <= NOT count(13);
ALT_INV_count(12) <= NOT count(12);
ALT_INV_count(17) <= NOT count(17);
ALT_INV_count(16) <= NOT count(16);
ALT_INV_count(15) <= NOT count(15);
ALT_INV_clk_toggles(1) <= NOT clk_toggles(1);
ALT_INV_clk_toggles(2) <= NOT clk_toggles(2);
\ALT_INV_state~q\ <= NOT \state~q\;
\ALT_INV_busy~reg0_q\ <= NOT \busy~reg0_q\;
\ALT_INV_tx_data[0]~input_o\ <= NOT \tx_data[0]~input_o\;
\ALT_INV_tx_data[1]~input_o\ <= NOT \tx_data[1]~input_o\;
\ALT_INV_cpha~input_o\ <= NOT \cpha~input_o\;
\ALT_INV_clk_div[5]~input_o\ <= NOT \clk_div[5]~input_o\;
\ALT_INV_clk_div[4]~input_o\ <= NOT \clk_div[4]~input_o\;
\ALT_INV_clk_div[3]~input_o\ <= NOT \clk_div[3]~input_o\;
\ALT_INV_clk_div[2]~input_o\ <= NOT \clk_div[2]~input_o\;
\ALT_INV_clk_div[1]~input_o\ <= NOT \clk_div[1]~input_o\;
\ALT_INV_clk_div[18]~input_o\ <= NOT \clk_div[18]~input_o\;
\ALT_INV_clk_div[24]~input_o\ <= NOT \clk_div[24]~input_o\;
\ALT_INV_clk_div[23]~input_o\ <= NOT \clk_div[23]~input_o\;
\ALT_INV_clk_div[22]~input_o\ <= NOT \clk_div[22]~input_o\;
\ALT_INV_clk_div[21]~input_o\ <= NOT \clk_div[21]~input_o\;
\ALT_INV_clk_div[20]~input_o\ <= NOT \clk_div[20]~input_o\;
\ALT_INV_clk_div[19]~input_o\ <= NOT \clk_div[19]~input_o\;
\ALT_INV_clk_div[30]~input_o\ <= NOT \clk_div[30]~input_o\;
\ALT_INV_clk_div[29]~input_o\ <= NOT \clk_div[29]~input_o\;
\ALT_INV_clk_div[28]~input_o\ <= NOT \clk_div[28]~input_o\;
\ALT_INV_clk_div[27]~input_o\ <= NOT \clk_div[27]~input_o\;
\ALT_INV_clk_div[26]~input_o\ <= NOT \clk_div[26]~input_o\;
\ALT_INV_clk_div[25]~input_o\ <= NOT \clk_div[25]~input_o\;
\ALT_INV_clk_div[31]~input_o\ <= NOT \clk_div[31]~input_o\;
\ALT_INV_clk_div[0]~input_o\ <= NOT \clk_div[0]~input_o\;
\ALT_INV_clk_div[8]~input_o\ <= NOT \clk_div[8]~input_o\;
\ALT_INV_clk_div[7]~input_o\ <= NOT \clk_div[7]~input_o\;
\ALT_INV_clk_div[6]~input_o\ <= NOT \clk_div[6]~input_o\;
\ALT_INV_clk_div[11]~input_o\ <= NOT \clk_div[11]~input_o\;
\ALT_INV_clk_div[10]~input_o\ <= NOT \clk_div[10]~input_o\;
\ALT_INV_clk_div[9]~input_o\ <= NOT \clk_div[9]~input_o\;
\ALT_INV_clk_div[14]~input_o\ <= NOT \clk_div[14]~input_o\;
\ALT_INV_clk_div[13]~input_o\ <= NOT \clk_div[13]~input_o\;
\ALT_INV_clk_div[12]~input_o\ <= NOT \clk_div[12]~input_o\;
\ALT_INV_clk_div[17]~input_o\ <= NOT \clk_div[17]~input_o\;
\ALT_INV_clk_div[16]~input_o\ <= NOT \clk_div[16]~input_o\;
\ALT_INV_clk_div[15]~input_o\ <= NOT \clk_div[15]~input_o\;
\ALT_INV_addr[1]~input_o\ <= NOT \addr[1]~input_o\;
\ALT_INV_addr[13]~input_o\ <= NOT \addr[13]~input_o\;
\ALT_INV_addr[12]~input_o\ <= NOT \addr[12]~input_o\;
\ALT_INV_addr[11]~input_o\ <= NOT \addr[11]~input_o\;
\ALT_INV_addr[10]~input_o\ <= NOT \addr[10]~input_o\;
\ALT_INV_addr[9]~input_o\ <= NOT \addr[9]~input_o\;
\ALT_INV_addr[8]~input_o\ <= NOT \addr[8]~input_o\;
\ALT_INV_addr[7]~input_o\ <= NOT \addr[7]~input_o\;
\ALT_INV_addr[6]~input_o\ <= NOT \addr[6]~input_o\;
\ALT_INV_addr[5]~input_o\ <= NOT \addr[5]~input_o\;
\ALT_INV_addr[4]~input_o\ <= NOT \addr[4]~input_o\;
\ALT_INV_addr[3]~input_o\ <= NOT \addr[3]~input_o\;
\ALT_INV_addr[2]~input_o\ <= NOT \addr[2]~input_o\;
\ALT_INV_addr[19]~input_o\ <= NOT \addr[19]~input_o\;
\ALT_INV_addr[18]~input_o\ <= NOT \addr[18]~input_o\;
\ALT_INV_addr[17]~input_o\ <= NOT \addr[17]~input_o\;
\ALT_INV_addr[16]~input_o\ <= NOT \addr[16]~input_o\;
\ALT_INV_addr[15]~input_o\ <= NOT \addr[15]~input_o\;
\ALT_INV_addr[14]~input_o\ <= NOT \addr[14]~input_o\;
\ALT_INV_addr[25]~input_o\ <= NOT \addr[25]~input_o\;
\ALT_INV_addr[24]~input_o\ <= NOT \addr[24]~input_o\;
\ALT_INV_addr[23]~input_o\ <= NOT \addr[23]~input_o\;
\ALT_INV_addr[22]~input_o\ <= NOT \addr[22]~input_o\;
\ALT_INV_addr[21]~input_o\ <= NOT \addr[21]~input_o\;
\ALT_INV_addr[20]~input_o\ <= NOT \addr[20]~input_o\;
\ALT_INV_addr[30]~input_o\ <= NOT \addr[30]~input_o\;
\ALT_INV_addr[29]~input_o\ <= NOT \addr[29]~input_o\;
\ALT_INV_addr[28]~input_o\ <= NOT \addr[28]~input_o\;
\ALT_INV_addr[27]~input_o\ <= NOT \addr[27]~input_o\;
\ALT_INV_addr[26]~input_o\ <= NOT \addr[26]~input_o\;
\ALT_INV_addr[31]~input_o\ <= NOT \addr[31]~input_o\;
\ALT_INV_addr[0]~input_o\ <= NOT \addr[0]~input_o\;
\ALT_INV_cont~input_o\ <= NOT \cont~input_o\;
\ALT_INV_cpol~input_o\ <= NOT \cpol~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\ALT_INV_tx_buffer[1]~1_combout\ <= NOT \tx_buffer[1]~1_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
ALT_INV_tx_buffer(0) <= NOT tx_buffer(0);
\ALT_INV_rx_buffer[0]~0_combout\ <= NOT \rx_buffer[0]~0_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_rx_data[0]~1_combout\ <= NOT \rx_data[0]~1_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_last_bit_rx(2) <= NOT last_bit_rx(2);
ALT_INV_last_bit_rx(0) <= NOT last_bit_rx(0);
\ALT_INV_clk_toggles~0_combout\ <= NOT \clk_toggles~0_combout\;
\ALT_INV_ss_n~6_combout\ <= NOT \ss_n~6_combout\;
\ALT_INV_ss_n~4_combout\ <= NOT \ss_n~4_combout\;
\ALT_INV_ss_n~2_combout\ <= NOT \ss_n~2_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_ss_n~0_combout\ <= NOT \ss_n~0_combout\;
\ALT_INV_sclk~1_combout\ <= NOT \sclk~1_combout\;
\ALT_INV_Equal1~12_combout\ <= NOT \Equal1~12_combout\;
\ALT_INV_Equal1~11_combout\ <= NOT \Equal1~11_combout\;
ALT_INV_clk_ratio(23) <= NOT clk_ratio(23);
ALT_INV_clk_ratio(22) <= NOT clk_ratio(22);
ALT_INV_clk_ratio(21) <= NOT clk_ratio(21);
\ALT_INV_Equal1~10_combout\ <= NOT \Equal1~10_combout\;
ALT_INV_clk_ratio(20) <= NOT clk_ratio(20);
ALT_INV_clk_ratio(19) <= NOT clk_ratio(19);
ALT_INV_clk_ratio(18) <= NOT clk_ratio(18);
\ALT_INV_Equal1~9_combout\ <= NOT \Equal1~9_combout\;
ALT_INV_clk_ratio(26) <= NOT clk_ratio(26);
ALT_INV_clk_ratio(25) <= NOT clk_ratio(25);
ALT_INV_clk_ratio(24) <= NOT clk_ratio(24);
\ALT_INV_Equal1~8_combout\ <= NOT \Equal1~8_combout\;
ALT_INV_clk_ratio(29) <= NOT clk_ratio(29);
ALT_INV_clk_ratio(28) <= NOT clk_ratio(28);
ALT_INV_clk_ratio(27) <= NOT clk_ratio(27);
\ALT_INV_Equal1~7_combout\ <= NOT \Equal1~7_combout\;
ALT_INV_count(31) <= NOT count(31);
ALT_INV_clk_ratio(31) <= NOT clk_ratio(31);
ALT_INV_clk_ratio(30) <= NOT clk_ratio(30);
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
ALT_INV_clk_ratio(5) <= NOT clk_ratio(5);
ALT_INV_clk_ratio(4) <= NOT clk_ratio(4);
ALT_INV_clk_ratio(3) <= NOT clk_ratio(3);
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
ALT_INV_clk_ratio(2) <= NOT clk_ratio(2);
ALT_INV_clk_ratio(1) <= NOT clk_ratio(1);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_clk_ratio(0) <= NOT clk_ratio(0);
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
ALT_INV_clk_ratio(8) <= NOT clk_ratio(8);
ALT_INV_clk_ratio(7) <= NOT clk_ratio(7);
ALT_INV_clk_ratio(6) <= NOT clk_ratio(6);
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
ALT_INV_clk_ratio(11) <= NOT clk_ratio(11);
ALT_INV_clk_ratio(10) <= NOT clk_ratio(10);
ALT_INV_clk_ratio(9) <= NOT clk_ratio(9);
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
ALT_INV_clk_ratio(14) <= NOT clk_ratio(14);
ALT_INV_clk_ratio(13) <= NOT clk_ratio(13);
ALT_INV_clk_ratio(12) <= NOT clk_ratio(12);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_clk_ratio(17) <= NOT clk_ratio(17);
ALT_INV_clk_ratio(16) <= NOT clk_ratio(16);
ALT_INV_clk_ratio(15) <= NOT clk_ratio(15);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_slave(1) <= NOT slave(1);
ALT_INV_slave(0) <= NOT slave(0);
\ALT_INV_sclk~0_combout\ <= NOT \sclk~0_combout\;
ALT_INV_clk_toggles(0) <= NOT clk_toggles(0);
\ALT_INV_ss_n[3]~reg0_q\ <= NOT \ss_n[3]~reg0_q\;
\ALT_INV_ss_n[2]~reg0_q\ <= NOT \ss_n[2]~reg0_q\;
\ALT_INV_ss_n[1]~reg0_q\ <= NOT \ss_n[1]~reg0_q\;

-- Location: IOOBUF_X18_Y0_N2
\mosi~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mosi~reg0_q\,
	oe => \mosi~en_q\,
	devoe => ww_devoe,
	o => ww_mosi);

-- Location: IOOBUF_X32_Y0_N76
\sclk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sclk~reg0_q\,
	devoe => ww_devoe,
	o => ww_sclk);

-- Location: IOOBUF_X34_Y0_N53
\ss_n[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ss_n[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ss_n(0));

-- Location: IOOBUF_X21_Y0_N53
\ss_n[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ss_n[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ss_n(1));

-- Location: IOOBUF_X7_Y0_N53
\ss_n[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ss_n[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ss_n(2));

-- Location: IOOBUF_X21_Y0_N19
\ss_n[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ss_n[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ss_n(3));

-- Location: IOOBUF_X15_Y0_N36
\busy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busy~reg0_q\,
	devoe => ww_devoe,
	o => ww_busy);

-- Location: IOOBUF_X14_Y0_N2
\rx_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(0));

-- Location: IOOBUF_X34_Y0_N19
\rx_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_rx_data(1));

-- Location: IOIBUF_X15_Y61_N18
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G12
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N18
\tx_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(1),
	o => \tx_data[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N35
\cpha~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpha,
	o => \cpha~input_o\);

-- Location: MLABCELL_X19_Y6_N42
\last_bit_rx[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \last_bit_rx[0]~0_combout\ = !\cpha~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cpha~input_o\,
	combout => \last_bit_rx[0]~0_combout\);

-- Location: IOIBUF_X19_Y0_N1
\reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LABCELL_X17_Y7_N0
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( !count(0) ) + ( VCC ) + ( !VCC ))
-- \Add5~50\ = CARRY(( !count(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(0),
	cin => GND,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: IOIBUF_X6_Y0_N18
\clk_div[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(24),
	o => \clk_div[24]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\clk_div[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(20),
	o => \clk_div[20]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\clk_div[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(23),
	o => \clk_div[23]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\clk_div[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(22),
	o => \clk_div[22]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\clk_div[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(19),
	o => \clk_div[19]~input_o\);

-- Location: IOIBUF_X15_Y0_N18
\clk_div[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(21),
	o => \clk_div[21]~input_o\);

-- Location: LABCELL_X17_Y5_N9
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\clk_div[19]~input_o\ & ( !\clk_div[21]~input_o\ & ( (!\clk_div[24]~input_o\ & (!\clk_div[20]~input_o\ & (!\clk_div[23]~input_o\ & !\clk_div[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_div[24]~input_o\,
	datab => \ALT_INV_clk_div[20]~input_o\,
	datac => \ALT_INV_clk_div[23]~input_o\,
	datad => \ALT_INV_clk_div[22]~input_o\,
	datae => \ALT_INV_clk_div[19]~input_o\,
	dataf => \ALT_INV_clk_div[21]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X19_Y0_N52
\clk_div[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(31),
	o => \clk_div[31]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\clk_div[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(14),
	o => \clk_div[14]~input_o\);

-- Location: IOIBUF_X17_Y0_N41
\clk_div[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(18),
	o => \clk_div[18]~input_o\);

-- Location: IOIBUF_X17_Y0_N92
\clk_div[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(15),
	o => \clk_div[15]~input_o\);

-- Location: IOIBUF_X32_Y0_N92
\clk_div[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(13),
	o => \clk_div[13]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\clk_div[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(17),
	o => \clk_div[17]~input_o\);

-- Location: IOIBUF_X32_Y0_N58
\clk_div[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(16),
	o => \clk_div[16]~input_o\);

-- Location: LABCELL_X18_Y7_N42
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\clk_div[17]~input_o\ & ( !\clk_div[16]~input_o\ & ( (!\clk_div[14]~input_o\ & (!\clk_div[18]~input_o\ & (!\clk_div[15]~input_o\ & !\clk_div[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_div[14]~input_o\,
	datab => \ALT_INV_clk_div[18]~input_o\,
	datac => \ALT_INV_clk_div[15]~input_o\,
	datad => \ALT_INV_clk_div[13]~input_o\,
	datae => \ALT_INV_clk_div[17]~input_o\,
	dataf => \ALT_INV_clk_div[16]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X10_Y0_N58
\clk_div[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(27),
	o => \clk_div[27]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\clk_div[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(26),
	o => \clk_div[26]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\clk_div[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(29),
	o => \clk_div[29]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\clk_div[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(25),
	o => \clk_div[25]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\clk_div[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(28),
	o => \clk_div[28]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\clk_div[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(30),
	o => \clk_div[30]~input_o\);

-- Location: LABCELL_X15_Y6_N24
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\clk_div[28]~input_o\ & ( !\clk_div[30]~input_o\ & ( (!\clk_div[27]~input_o\ & (!\clk_div[26]~input_o\ & (!\clk_div[29]~input_o\ & !\clk_div[25]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_div[27]~input_o\,
	datab => \ALT_INV_clk_div[26]~input_o\,
	datac => \ALT_INV_clk_div[29]~input_o\,
	datad => \ALT_INV_clk_div[25]~input_o\,
	datae => \ALT_INV_clk_div[28]~input_o\,
	dataf => \ALT_INV_clk_div[30]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X7_Y0_N18
\clk_div[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(2),
	o => \clk_div[2]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\clk_div[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(4),
	o => \clk_div[4]~input_o\);

-- Location: IOIBUF_X17_Y0_N58
\clk_div[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(6),
	o => \clk_div[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\clk_div[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(3),
	o => \clk_div[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\clk_div[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(5),
	o => \clk_div[5]~input_o\);

-- Location: IOIBUF_X15_Y0_N52
\clk_div[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(1),
	o => \clk_div[1]~input_o\);

-- Location: LABCELL_X18_Y7_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\clk_div[5]~input_o\ & ( !\clk_div[1]~input_o\ & ( (!\clk_div[2]~input_o\ & (!\clk_div[4]~input_o\ & (!\clk_div[6]~input_o\ & !\clk_div[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_div[2]~input_o\,
	datab => \ALT_INV_clk_div[4]~input_o\,
	datac => \ALT_INV_clk_div[6]~input_o\,
	datad => \ALT_INV_clk_div[3]~input_o\,
	datae => \ALT_INV_clk_div[5]~input_o\,
	dataf => \ALT_INV_clk_div[1]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X18_Y0_N35
\clk_div[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(7),
	o => \clk_div[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\clk_div[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(11),
	o => \clk_div[11]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\clk_div[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(10),
	o => \clk_div[10]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\clk_div[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(8),
	o => \clk_div[8]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\clk_div[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(9),
	o => \clk_div[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N41
\clk_div[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(12),
	o => \clk_div[12]~input_o\);

-- Location: LABCELL_X18_Y7_N24
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\clk_div[9]~input_o\ & ( !\clk_div[12]~input_o\ & ( (!\clk_div[7]~input_o\ & (!\clk_div[11]~input_o\ & (!\clk_div[10]~input_o\ & !\clk_div[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_div[7]~input_o\,
	datab => \ALT_INV_clk_div[11]~input_o\,
	datac => \ALT_INV_clk_div[10]~input_o\,
	datad => \ALT_INV_clk_div[8]~input_o\,
	datae => \ALT_INV_clk_div[9]~input_o\,
	dataf => \ALT_INV_clk_div[12]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X18_Y7_N51
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~3_combout\ & ( \Equal0~4_combout\ & ( (\Equal0~1_combout\ & (!\clk_div[31]~input_o\ & (\Equal0~2_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_clk_div[31]~input_o\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: IOIBUF_X7_Y0_N35
\clk_div[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(0),
	o => \clk_div[0]~input_o\);

-- Location: FF_X18_Y7_N55
\clk_ratio[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[13]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(13));

-- Location: FF_X18_Y7_N29
\clk_ratio[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[12]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(12));

-- Location: FF_X18_Y7_N53
\clk_ratio[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[14]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(14));

-- Location: LABCELL_X18_Y7_N3
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( clk_ratio(12) & ( clk_ratio(14) & ( (count(12) & (count(14) & (!count(13) $ (clk_ratio(13))))) ) ) ) # ( !clk_ratio(12) & ( clk_ratio(14) & ( (!count(12) & (count(14) & (!count(13) $ (clk_ratio(13))))) ) ) ) # ( clk_ratio(12) & ( 
-- !clk_ratio(14) & ( (count(12) & (!count(14) & (!count(13) $ (clk_ratio(13))))) ) ) ) # ( !clk_ratio(12) & ( !clk_ratio(14) & ( (!count(12) & (!count(14) & (!count(13) $ (clk_ratio(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(13),
	datab => ALT_INV_clk_ratio(13),
	datac => ALT_INV_count(12),
	datad => ALT_INV_count(14),
	datae => ALT_INV_clk_ratio(12),
	dataf => ALT_INV_clk_ratio(14),
	combout => \Equal1~1_combout\);

-- Location: FF_X17_Y6_N50
\clk_ratio[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[3]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(3));

-- Location: FF_X18_Y6_N5
\clk_ratio[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[4]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(4));

-- Location: FF_X18_Y6_N17
\clk_ratio[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[5]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(5));

-- Location: LABCELL_X17_Y6_N42
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( clk_ratio(5) & ( count(5) & ( (!clk_ratio(3) & (!count(3) & (!clk_ratio(4) $ (count(4))))) # (clk_ratio(3) & (count(3) & (!clk_ratio(4) $ (count(4))))) ) ) ) # ( !clk_ratio(5) & ( !count(5) & ( (!clk_ratio(3) & (!count(3) & 
-- (!clk_ratio(4) $ (count(4))))) # (clk_ratio(3) & (count(3) & (!clk_ratio(4) $ (count(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_ratio(3),
	datab => ALT_INV_count(3),
	datac => ALT_INV_clk_ratio(4),
	datad => ALT_INV_count(4),
	datae => ALT_INV_clk_ratio(5),
	dataf => ALT_INV_count(5),
	combout => \Equal1~5_combout\);

-- Location: FF_X18_Y6_N23
\clk_ratio[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[2]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(2));

-- Location: LABCELL_X18_Y6_N36
\clk_ratio~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_ratio~1_combout\ = ( !\Equal0~5_combout\ & ( !\clk_div[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk_div[0]~input_o\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \clk_ratio~1_combout\);

-- Location: FF_X18_Y6_N8
\clk_ratio[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_ratio~1_combout\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(0));

-- Location: FF_X18_Y6_N11
\clk_ratio[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[1]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(1));

-- Location: LABCELL_X18_Y6_N18
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( count(0) & ( count(2) & ( (clk_ratio(2) & (clk_ratio(0) & (!clk_ratio(1) $ (count(1))))) ) ) ) # ( !count(0) & ( count(2) & ( (clk_ratio(2) & (!clk_ratio(0) & (!clk_ratio(1) $ (count(1))))) ) ) ) # ( count(0) & ( !count(2) & ( 
-- (!clk_ratio(2) & (clk_ratio(0) & (!clk_ratio(1) $ (count(1))))) ) ) ) # ( !count(0) & ( !count(2) & ( (!clk_ratio(2) & (!clk_ratio(0) & (!clk_ratio(1) $ (count(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_ratio(2),
	datab => ALT_INV_clk_ratio(0),
	datac => ALT_INV_clk_ratio(1),
	datad => ALT_INV_count(1),
	datae => ALT_INV_count(0),
	dataf => ALT_INV_count(2),
	combout => \Equal1~4_combout\);

-- Location: FF_X18_Y6_N2
\clk_ratio[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[8]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(8));

-- Location: FF_X18_Y6_N28
\clk_ratio[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[7]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(7));

-- Location: FF_X18_Y6_N35
\clk_ratio[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[6]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(6));

-- Location: LABCELL_X18_Y6_N9
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( count(7) & ( count(6) & ( (clk_ratio(7) & (clk_ratio(6) & (!clk_ratio(8) $ (count(8))))) ) ) ) # ( !count(7) & ( count(6) & ( (!clk_ratio(7) & (clk_ratio(6) & (!clk_ratio(8) $ (count(8))))) ) ) ) # ( count(7) & ( !count(6) & ( 
-- (clk_ratio(7) & (!clk_ratio(6) & (!clk_ratio(8) $ (count(8))))) ) ) ) # ( !count(7) & ( !count(6) & ( (!clk_ratio(7) & (!clk_ratio(6) & (!clk_ratio(8) $ (count(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_ratio(8),
	datab => ALT_INV_clk_ratio(7),
	datac => ALT_INV_count(8),
	datad => ALT_INV_clk_ratio(6),
	datae => ALT_INV_count(7),
	dataf => ALT_INV_count(6),
	combout => \Equal1~3_combout\);

-- Location: FF_X18_Y7_N23
\clk_ratio[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[11]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(11));

-- Location: FF_X18_Y7_N47
\clk_ratio[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[9]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(9));

-- Location: FF_X18_Y7_N2
\clk_ratio[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[10]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(10));

-- Location: LABCELL_X18_Y7_N18
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( clk_ratio(10) & ( count(10) & ( (!clk_ratio(11) & (!count(11) & (!count(9) $ (clk_ratio(9))))) # (clk_ratio(11) & (count(11) & (!count(9) $ (clk_ratio(9))))) ) ) ) # ( !clk_ratio(10) & ( !count(10) & ( (!clk_ratio(11) & (!count(11) 
-- & (!count(9) $ (clk_ratio(9))))) # (clk_ratio(11) & (count(11) & (!count(9) $ (clk_ratio(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_ratio(11),
	datab => ALT_INV_count(11),
	datac => ALT_INV_count(9),
	datad => ALT_INV_clk_ratio(9),
	datae => ALT_INV_clk_ratio(10),
	dataf => ALT_INV_count(10),
	combout => \Equal1~2_combout\);

-- Location: FF_X18_Y7_N44
\clk_ratio[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[16]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(16));

-- Location: FF_X18_Y7_N50
\clk_ratio[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[17]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(17));

-- Location: FF_X18_Y7_N14
\clk_ratio[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[15]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(15));

-- Location: LABCELL_X18_Y7_N9
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( count(16) & ( clk_ratio(15) & ( (count(15) & (clk_ratio(16) & (!count(17) $ (clk_ratio(17))))) ) ) ) # ( !count(16) & ( clk_ratio(15) & ( (count(15) & (!clk_ratio(16) & (!count(17) $ (clk_ratio(17))))) ) ) ) # ( count(16) & ( 
-- !clk_ratio(15) & ( (!count(15) & (clk_ratio(16) & (!count(17) $ (clk_ratio(17))))) ) ) ) # ( !count(16) & ( !clk_ratio(15) & ( (!count(15) & (!clk_ratio(16) & (!count(17) $ (clk_ratio(17))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(15),
	datab => ALT_INV_clk_ratio(16),
	datac => ALT_INV_count(17),
	datad => ALT_INV_clk_ratio(17),
	datae => ALT_INV_count(16),
	dataf => ALT_INV_clk_ratio(15),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X18_Y6_N30
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~2_combout\ & ( \Equal1~0_combout\ & ( (\Equal1~1_combout\ & (\Equal1~5_combout\ & (\Equal1~4_combout\ & \Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_Equal1~5_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X18_Y6_N54
\count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~1_combout\ = ( \state~q\ & ( \Equal1~6_combout\ & ( (!\Add5~49_sumout\ & !\Equal1~12_combout\) ) ) ) # ( !\state~q\ & ( \Equal1~6_combout\ & ( (!\Equal0~5_combout\ & !\clk_div[0]~input_o\) ) ) ) # ( \state~q\ & ( !\Equal1~6_combout\ & ( 
-- !\Add5~49_sumout\ ) ) ) # ( !\state~q\ & ( !\Equal1~6_combout\ & ( (!\Equal0~5_combout\ & !\clk_div[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000101010101010101011110000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~49_sumout\,
	datab => \ALT_INV_Equal1~12_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_clk_div[0]~input_o\,
	datae => \ALT_INV_state~q\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \count~1_combout\);

-- Location: LABCELL_X18_Y5_N57
\count[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[31]~0_combout\ = ( \state~q\ & ( \reset_n~input_o\ ) ) # ( !\state~q\ & ( (\enable~input_o\ & \reset_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datac => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_state~q\,
	combout => \count[31]~0_combout\);

-- Location: FF_X18_Y6_N56
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \count~1_combout\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LABCELL_X17_Y7_N3
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( count(1) ) + ( GND ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( count(1) ) + ( GND ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(1),
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: LABCELL_X18_Y6_N51
\rx_data[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[0]~1_combout\ = ( \Equal1~6_combout\ & ( (\state~q\ & \Equal1~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~q\,
	datac => \ALT_INV_Equal1~12_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \rx_data[0]~1_combout\);

-- Location: FF_X17_Y7_N5
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~53_sumout\,
	asdata => \clk_div[1]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LABCELL_X17_Y7_N6
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( count(2) ) + ( GND ) + ( \Add5~54\ ))
-- \Add5~58\ = CARRY(( count(2) ) + ( GND ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(2),
	cin => \Add5~54\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: FF_X17_Y7_N8
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~57_sumout\,
	asdata => \clk_div[2]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LABCELL_X17_Y7_N9
\Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( count(3) ) + ( GND ) + ( \Add5~58\ ))
-- \Add5~62\ = CARRY(( count(3) ) + ( GND ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(3),
	cin => \Add5~58\,
	sumout => \Add5~61_sumout\,
	cout => \Add5~62\);

-- Location: FF_X17_Y7_N11
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~61_sumout\,
	asdata => \clk_div[3]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LABCELL_X17_Y7_N12
\Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~65_sumout\ = SUM(( count(4) ) + ( GND ) + ( \Add5~62\ ))
-- \Add5~66\ = CARRY(( count(4) ) + ( GND ) + ( \Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(4),
	cin => \Add5~62\,
	sumout => \Add5~65_sumout\,
	cout => \Add5~66\);

-- Location: FF_X17_Y7_N14
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~65_sumout\,
	asdata => \clk_div[4]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LABCELL_X17_Y7_N15
\Add5~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~69_sumout\ = SUM(( count(5) ) + ( GND ) + ( \Add5~66\ ))
-- \Add5~70\ = CARRY(( count(5) ) + ( GND ) + ( \Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(5),
	cin => \Add5~66\,
	sumout => \Add5~69_sumout\,
	cout => \Add5~70\);

-- Location: FF_X17_Y7_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~69_sumout\,
	asdata => \clk_div[5]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LABCELL_X17_Y7_N18
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( count(6) ) + ( GND ) + ( \Add5~70\ ))
-- \Add5~38\ = CARRY(( count(6) ) + ( GND ) + ( \Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(6),
	cin => \Add5~70\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X17_Y7_N20
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~37_sumout\,
	asdata => \clk_div[6]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LABCELL_X17_Y7_N21
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( count(7) ) + ( GND ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( count(7) ) + ( GND ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(7),
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X17_Y7_N23
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~41_sumout\,
	asdata => \clk_div[7]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LABCELL_X17_Y7_N24
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( count(8) ) + ( GND ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( count(8) ) + ( GND ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(8),
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: FF_X17_Y7_N26
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~45_sumout\,
	asdata => \clk_div[8]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LABCELL_X17_Y7_N27
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( count(9) ) + ( GND ) + ( \Add5~46\ ))
-- \Add5~26\ = CARRY(( count(9) ) + ( GND ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(9),
	cin => \Add5~46\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X17_Y7_N29
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~25_sumout\,
	asdata => \clk_div[9]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LABCELL_X17_Y7_N30
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( count(10) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( count(10) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(10),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X17_Y7_N32
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~29_sumout\,
	asdata => \clk_div[10]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LABCELL_X17_Y7_N33
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( count(11) ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( count(11) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(11),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X17_Y7_N35
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~33_sumout\,
	asdata => \clk_div[11]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LABCELL_X17_Y7_N36
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( count(12) ) + ( GND ) + ( \Add5~34\ ))
-- \Add5~14\ = CARRY(( count(12) ) + ( GND ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(12),
	cin => \Add5~34\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X17_Y7_N38
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~13_sumout\,
	asdata => \clk_div[12]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LABCELL_X17_Y7_N39
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( count(13) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( count(13) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(13),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X17_Y7_N41
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~17_sumout\,
	asdata => \clk_div[13]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LABCELL_X17_Y7_N42
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( count(14) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( count(14) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(14),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X17_Y7_N44
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~21_sumout\,
	asdata => \clk_div[14]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LABCELL_X17_Y7_N45
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( count(15) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~2\ = CARRY(( count(15) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(15),
	cin => \Add5~22\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: FF_X17_Y7_N47
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~1_sumout\,
	asdata => \clk_div[15]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LABCELL_X17_Y7_N48
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( count(16) ) + ( GND ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( count(16) ) + ( GND ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(16),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X17_Y7_N50
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~5_sumout\,
	asdata => \clk_div[16]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LABCELL_X17_Y7_N51
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( count(17) ) + ( GND ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( count(17) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(17),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X17_Y7_N53
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~9_sumout\,
	asdata => \clk_div[17]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LABCELL_X17_Y7_N54
\Add5~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~105_sumout\ = SUM(( count(18) ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~106\ = CARRY(( count(18) ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(18),
	cin => \Add5~10\,
	sumout => \Add5~105_sumout\,
	cout => \Add5~106\);

-- Location: FF_X17_Y7_N56
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~105_sumout\,
	asdata => \clk_div[18]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LABCELL_X17_Y7_N57
\Add5~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~109_sumout\ = SUM(( count(19) ) + ( GND ) + ( \Add5~106\ ))
-- \Add5~110\ = CARRY(( count(19) ) + ( GND ) + ( \Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(19),
	cin => \Add5~106\,
	sumout => \Add5~109_sumout\,
	cout => \Add5~110\);

-- Location: FF_X17_Y7_N59
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~109_sumout\,
	asdata => \clk_div[19]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LABCELL_X17_Y6_N0
\Add5~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~113_sumout\ = SUM(( count(20) ) + ( GND ) + ( \Add5~110\ ))
-- \Add5~114\ = CARRY(( count(20) ) + ( GND ) + ( \Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(20),
	cin => \Add5~110\,
	sumout => \Add5~113_sumout\,
	cout => \Add5~114\);

-- Location: FF_X17_Y6_N2
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~113_sumout\,
	asdata => \clk_div[20]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LABCELL_X17_Y6_N3
\Add5~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~117_sumout\ = SUM(( count(21) ) + ( GND ) + ( \Add5~114\ ))
-- \Add5~118\ = CARRY(( count(21) ) + ( GND ) + ( \Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(21),
	cin => \Add5~114\,
	sumout => \Add5~117_sumout\,
	cout => \Add5~118\);

-- Location: FF_X17_Y6_N5
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~117_sumout\,
	asdata => \clk_div[21]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LABCELL_X17_Y6_N6
\Add5~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~121_sumout\ = SUM(( count(22) ) + ( GND ) + ( \Add5~118\ ))
-- \Add5~122\ = CARRY(( count(22) ) + ( GND ) + ( \Add5~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(22),
	cin => \Add5~118\,
	sumout => \Add5~121_sumout\,
	cout => \Add5~122\);

-- Location: FF_X17_Y6_N8
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~121_sumout\,
	asdata => \clk_div[22]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LABCELL_X17_Y6_N9
\Add5~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~125_sumout\ = SUM(( count(23) ) + ( GND ) + ( \Add5~122\ ))
-- \Add5~126\ = CARRY(( count(23) ) + ( GND ) + ( \Add5~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(23),
	cin => \Add5~122\,
	sumout => \Add5~125_sumout\,
	cout => \Add5~126\);

-- Location: FF_X17_Y6_N11
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~125_sumout\,
	asdata => \clk_div[23]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: FF_X17_Y6_N58
\clk_ratio[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[22]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(22));

-- Location: FF_X17_Y6_N47
\clk_ratio[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[21]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(21));

-- Location: FF_X18_Y6_N20
\clk_ratio[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[23]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(23));

-- Location: LABCELL_X17_Y6_N39
\Equal1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = ( clk_ratio(21) & ( clk_ratio(23) & ( (count(21) & (count(23) & (!count(22) $ (clk_ratio(22))))) ) ) ) # ( !clk_ratio(21) & ( clk_ratio(23) & ( (!count(21) & (count(23) & (!count(22) $ (clk_ratio(22))))) ) ) ) # ( clk_ratio(21) & ( 
-- !clk_ratio(23) & ( (count(21) & (!count(23) & (!count(22) $ (clk_ratio(22))))) ) ) ) # ( !clk_ratio(21) & ( !clk_ratio(23) & ( (!count(21) & (!count(23) & (!count(22) $ (clk_ratio(22))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(21),
	datab => ALT_INV_count(22),
	datac => ALT_INV_count(23),
	datad => ALT_INV_clk_ratio(22),
	datae => ALT_INV_clk_ratio(21),
	dataf => ALT_INV_clk_ratio(23),
	combout => \Equal1~11_combout\);

-- Location: LABCELL_X17_Y6_N12
\Add5~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~93_sumout\ = SUM(( count(24) ) + ( GND ) + ( \Add5~126\ ))
-- \Add5~94\ = CARRY(( count(24) ) + ( GND ) + ( \Add5~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(24),
	cin => \Add5~126\,
	sumout => \Add5~93_sumout\,
	cout => \Add5~94\);

-- Location: FF_X17_Y6_N14
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~93_sumout\,
	asdata => \clk_div[24]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LABCELL_X17_Y6_N15
\Add5~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~97_sumout\ = SUM(( count(25) ) + ( GND ) + ( \Add5~94\ ))
-- \Add5~98\ = CARRY(( count(25) ) + ( GND ) + ( \Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(25),
	cin => \Add5~94\,
	sumout => \Add5~97_sumout\,
	cout => \Add5~98\);

-- Location: FF_X17_Y6_N17
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~97_sumout\,
	asdata => \clk_div[25]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LABCELL_X17_Y6_N18
\Add5~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~101_sumout\ = SUM(( count(26) ) + ( GND ) + ( \Add5~98\ ))
-- \Add5~102\ = CARRY(( count(26) ) + ( GND ) + ( \Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(26),
	cin => \Add5~98\,
	sumout => \Add5~101_sumout\,
	cout => \Add5~102\);

-- Location: FF_X17_Y6_N20
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~101_sumout\,
	asdata => \clk_div[26]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LABCELL_X17_Y6_N21
\Add5~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~81_sumout\ = SUM(( count(27) ) + ( GND ) + ( \Add5~102\ ))
-- \Add5~82\ = CARRY(( count(27) ) + ( GND ) + ( \Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(27),
	cin => \Add5~102\,
	sumout => \Add5~81_sumout\,
	cout => \Add5~82\);

-- Location: FF_X17_Y6_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~81_sumout\,
	asdata => \clk_div[27]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LABCELL_X17_Y6_N24
\Add5~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~85_sumout\ = SUM(( count(28) ) + ( GND ) + ( \Add5~82\ ))
-- \Add5~86\ = CARRY(( count(28) ) + ( GND ) + ( \Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(28),
	cin => \Add5~82\,
	sumout => \Add5~85_sumout\,
	cout => \Add5~86\);

-- Location: FF_X17_Y6_N26
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~85_sumout\,
	asdata => \clk_div[28]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LABCELL_X17_Y6_N27
\Add5~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~89_sumout\ = SUM(( count(29) ) + ( GND ) + ( \Add5~86\ ))
-- \Add5~90\ = CARRY(( count(29) ) + ( GND ) + ( \Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(29),
	cin => \Add5~86\,
	sumout => \Add5~89_sumout\,
	cout => \Add5~90\);

-- Location: FF_X17_Y6_N29
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~89_sumout\,
	asdata => \clk_div[29]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LABCELL_X17_Y6_N30
\Add5~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~73_sumout\ = SUM(( count(30) ) + ( GND ) + ( \Add5~90\ ))
-- \Add5~74\ = CARRY(( count(30) ) + ( GND ) + ( \Add5~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_count(30),
	cin => \Add5~90\,
	sumout => \Add5~73_sumout\,
	cout => \Add5~74\);

-- Location: FF_X17_Y6_N32
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add5~73_sumout\,
	asdata => \clk_div[30]~input_o\,
	sclr => \rx_data[0]~1_combout\,
	sload => \ALT_INV_state~q\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LABCELL_X17_Y6_N33
\Add5~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~77_sumout\ = SUM(( !count(31) ) + ( GND ) + ( \Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_count(31),
	cin => \Add5~74\,
	sumout => \Add5~77_sumout\);

-- Location: LABCELL_X18_Y6_N48
\count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count~2_combout\ = ( \Add5~77_sumout\ & ( (!\state~q\ & ((!\clk_div[31]~input_o\))) # (\state~q\ & (\rx_data[0]~1_combout\)) ) ) # ( !\Add5~77_sumout\ & ( (!\clk_div[31]~input_o\) # (\state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~q\,
	datac => \ALT_INV_rx_data[0]~1_combout\,
	datad => \ALT_INV_clk_div[31]~input_o\,
	dataf => \ALT_INV_Add5~77_sumout\,
	combout => \count~2_combout\);

-- Location: FF_X18_Y6_N50
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \count~2_combout\,
	ena => \count[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LABCELL_X18_Y6_N12
\clk_ratio[31]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_ratio[31]~3_combout\ = !\clk_div[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk_div[31]~input_o\,
	combout => \clk_ratio[31]~3_combout\);

-- Location: FF_X18_Y6_N14
\clk_ratio[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clk_ratio[31]~3_combout\,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(31));

-- Location: FF_X18_Y6_N25
\clk_ratio[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[30]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(30));

-- Location: LABCELL_X18_Y6_N39
\Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = ( count(30) & ( (clk_ratio(30) & (!count(31) $ (clk_ratio(31)))) ) ) # ( !count(30) & ( (!clk_ratio(30) & (!count(31) $ (clk_ratio(31)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(31),
	datac => ALT_INV_clk_ratio(31),
	datad => ALT_INV_clk_ratio(30),
	dataf => ALT_INV_count(30),
	combout => \Equal1~7_combout\);

-- Location: FF_X17_Y6_N37
\clk_ratio[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[28]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(28));

-- Location: FF_X17_Y6_N44
\clk_ratio[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[27]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(27));

-- Location: FF_X18_Y6_N37
\clk_ratio[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[29]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(29));

-- Location: LABCELL_X17_Y6_N57
\Equal1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = ( count(27) & ( clk_ratio(29) & ( (clk_ratio(27) & (count(29) & (!count(28) $ (clk_ratio(28))))) ) ) ) # ( !count(27) & ( clk_ratio(29) & ( (!clk_ratio(27) & (count(29) & (!count(28) $ (clk_ratio(28))))) ) ) ) # ( count(27) & ( 
-- !clk_ratio(29) & ( (clk_ratio(27) & (!count(29) & (!count(28) $ (clk_ratio(28))))) ) ) ) # ( !count(27) & ( !clk_ratio(29) & ( (!clk_ratio(27) & (!count(29) & (!count(28) $ (clk_ratio(28))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_count(28),
	datab => ALT_INV_clk_ratio(28),
	datac => ALT_INV_clk_ratio(27),
	datad => ALT_INV_count(29),
	datae => ALT_INV_count(27),
	dataf => ALT_INV_clk_ratio(29),
	combout => \Equal1~8_combout\);

-- Location: FF_X17_Y6_N53
\clk_ratio[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[24]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(24));

-- Location: FF_X17_Y6_N41
\clk_ratio[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[25]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(25));

-- Location: FF_X17_Y6_N56
\clk_ratio[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[26]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(26));

-- Location: LABCELL_X17_Y6_N48
\Equal1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = ( clk_ratio(26) & ( count(25) & ( (clk_ratio(25) & (count(26) & (!clk_ratio(24) $ (count(24))))) ) ) ) # ( !clk_ratio(26) & ( count(25) & ( (clk_ratio(25) & (!count(26) & (!clk_ratio(24) $ (count(24))))) ) ) ) # ( clk_ratio(26) & ( 
-- !count(25) & ( (!clk_ratio(25) & (count(26) & (!clk_ratio(24) $ (count(24))))) ) ) ) # ( !clk_ratio(26) & ( !count(25) & ( (!clk_ratio(25) & (!count(26) & (!clk_ratio(24) $ (count(24))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_ratio(24),
	datab => ALT_INV_clk_ratio(25),
	datac => ALT_INV_count(26),
	datad => ALT_INV_count(24),
	datae => ALT_INV_clk_ratio(26),
	dataf => ALT_INV_count(25),
	combout => \Equal1~9_combout\);

-- Location: FF_X18_Y7_N58
\clk_ratio[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[19]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(19));

-- Location: FF_X18_Y7_N8
\clk_ratio[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \clk_div[18]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(18));

-- Location: LABCELL_X18_Y7_N39
\clk_ratio[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_ratio[20]~feeder_combout\ = ( \clk_div[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_clk_div[20]~input_o\,
	combout => \clk_ratio[20]~feeder_combout\);

-- Location: FF_X18_Y7_N41
\clk_ratio[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clk_ratio[20]~feeder_combout\,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(20));

-- Location: LABCELL_X18_Y7_N33
\Equal1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = ( count(18) & ( count(19) & ( (clk_ratio(19) & (clk_ratio(18) & (!clk_ratio(20) $ (count(20))))) ) ) ) # ( !count(18) & ( count(19) & ( (clk_ratio(19) & (!clk_ratio(18) & (!clk_ratio(20) $ (count(20))))) ) ) ) # ( count(18) & ( 
-- !count(19) & ( (!clk_ratio(19) & (clk_ratio(18) & (!clk_ratio(20) $ (count(20))))) ) ) ) # ( !count(18) & ( !count(19) & ( (!clk_ratio(19) & (!clk_ratio(18) & (!clk_ratio(20) $ (count(20))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_ratio(19),
	datab => ALT_INV_clk_ratio(18),
	datac => ALT_INV_clk_ratio(20),
	datad => ALT_INV_count(20),
	datae => ALT_INV_count(18),
	dataf => ALT_INV_count(19),
	combout => \Equal1~10_combout\);

-- Location: LABCELL_X18_Y6_N15
\Equal1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~12_combout\ = ( \Equal1~10_combout\ & ( (\Equal1~11_combout\ & (\Equal1~7_combout\ & (\Equal1~8_combout\ & \Equal1~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~11_combout\,
	datab => \ALT_INV_Equal1~7_combout\,
	datac => \ALT_INV_Equal1~8_combout\,
	datad => \ALT_INV_Equal1~9_combout\,
	dataf => \ALT_INV_Equal1~10_combout\,
	combout => \Equal1~12_combout\);

-- Location: IOIBUF_X21_Y0_N1
\cont~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cont,
	o => \cont~input_o\);

-- Location: FF_X19_Y6_N2
\last_bit_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \cpha~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_bit_rx(2));

-- Location: MLABCELL_X19_Y6_N48
\clk_toggles~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_toggles~3_combout\ = ( !clk_toggles(0) & ( \state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_clk_toggles(0),
	dataf => \ALT_INV_state~q\,
	combout => \clk_toggles~3_combout\);

-- Location: LABCELL_X18_Y6_N45
\clk_toggles[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_toggles[2]~2_combout\ = ( \Equal1~6_combout\ & ( (\reset_n~input_o\ & ((!\state~q\ & (\enable~input_o\)) # (\state~q\ & ((\Equal1~12_combout\))))) ) ) # ( !\Equal1~6_combout\ & ( (!\state~q\ & (\enable~input_o\ & \reset_n~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001001110000000000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state~q\,
	datab => \ALT_INV_enable~input_o\,
	datac => \ALT_INV_Equal1~12_combout\,
	datad => \ALT_INV_reset_n~input_o\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \clk_toggles[2]~2_combout\);

-- Location: FF_X19_Y6_N50
\clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clk_toggles~3_combout\,
	ena => \clk_toggles[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_toggles(0));

-- Location: MLABCELL_X19_Y6_N36
\clk_toggles~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_toggles~1_combout\ = ( clk_toggles(2) & ( clk_toggles(0) & ( (last_bit_rx(2) & (last_bit_rx(0) & (clk_toggles(1) & \cont~input_o\))) ) ) ) # ( !clk_toggles(2) & ( clk_toggles(0) & ( (clk_toggles(1) & (((!last_bit_rx(0)) # (!\cont~input_o\)) # 
-- (last_bit_rx(2)))) ) ) ) # ( clk_toggles(2) & ( !clk_toggles(0) & ( (!last_bit_rx(2)) # (((!\cont~input_o\) # (clk_toggles(1))) # (last_bit_rx(0))) ) ) ) # ( !clk_toggles(2) & ( !clk_toggles(0) & ( (!last_bit_rx(2) & (!last_bit_rx(0) & (!clk_toggles(1) & 
-- \cont~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000111111111011111100001111000011010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_bit_rx(2),
	datab => ALT_INV_last_bit_rx(0),
	datac => ALT_INV_clk_toggles(1),
	datad => \ALT_INV_cont~input_o\,
	datae => ALT_INV_clk_toggles(2),
	dataf => ALT_INV_clk_toggles(0),
	combout => \clk_toggles~1_combout\);

-- Location: FF_X19_Y6_N38
\clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clk_toggles~1_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \clk_toggles[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_toggles(2));

-- Location: MLABCELL_X19_Y6_N54
\clk_toggles~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_toggles~4_combout\ = ( clk_toggles(0) & ( (!clk_toggles(2) & !clk_toggles(1)) ) ) # ( !clk_toggles(0) & ( clk_toggles(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_toggles(2),
	datad => ALT_INV_clk_toggles(1),
	dataf => ALT_INV_clk_toggles(0),
	combout => \clk_toggles~4_combout\);

-- Location: FF_X19_Y6_N56
\clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \clk_toggles~4_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \clk_toggles[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_toggles(1));

-- Location: LABCELL_X18_Y5_N6
\clk_toggles~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_toggles~0_combout\ = ( !clk_toggles(1) & ( clk_toggles(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_clk_toggles(1),
	dataf => ALT_INV_clk_toggles(0),
	combout => \clk_toggles~0_combout\);

-- Location: LABCELL_X18_Y4_N45
\ss_n~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ss_n~8_combout\ = ( \Equal1~6_combout\ & ( (!\Equal1~12_combout\) # (((!\clk_toggles~0_combout\) # (!clk_toggles(2))) # (\cont~input_o\)) ) ) # ( !\Equal1~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~12_combout\,
	datab => \ALT_INV_cont~input_o\,
	datac => \ALT_INV_clk_toggles~0_combout\,
	datad => ALT_INV_clk_toggles(2),
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \ss_n~8_combout\);

-- Location: FF_X18_Y4_N47
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ss_n~8_combout\,
	asdata => \enable~input_o\,
	clrn => \reset_n~input_o\,
	sload => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: LABCELL_X18_Y5_N3
\clk_ratio[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_ratio[31]~0_combout\ = ( !\state~q\ & ( (\reset_n~input_o\ & \enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset_n~input_o\,
	datad => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_state~q\,
	combout => \clk_ratio[31]~0_combout\);

-- Location: FF_X19_Y6_N44
\last_bit_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \last_bit_rx[0]~0_combout\,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_bit_rx(0));

-- Location: LABCELL_X18_Y5_N24
\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = ( \cont~input_o\ & ( clk_toggles(2) & ( (last_bit_rx(2) & ((!last_bit_rx(0) & (!clk_toggles(1) & !clk_toggles(0))) # (last_bit_rx(0) & (clk_toggles(1) & clk_toggles(0))))) ) ) ) # ( \cont~input_o\ & ( !clk_toggles(2) & ( 
-- (!last_bit_rx(2) & ((!last_bit_rx(0) & (!clk_toggles(1) & !clk_toggles(0))) # (last_bit_rx(0) & (clk_toggles(1) & clk_toggles(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000010000000000000000000010000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_bit_rx(0),
	datab => ALT_INV_last_bit_rx(2),
	datac => ALT_INV_clk_toggles(1),
	datad => ALT_INV_clk_toggles(0),
	datae => \ALT_INV_cont~input_o\,
	dataf => ALT_INV_clk_toggles(2),
	combout => \process_0~2_combout\);

-- Location: IOIBUF_X7_Y0_N1
\tx_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(0),
	o => \tx_data[0]~input_o\);

-- Location: MLABCELL_X19_Y6_N30
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !clk_toggles(1) & ( last_bit_rx(0) ) ) # ( clk_toggles(1) & ( !last_bit_rx(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_clk_toggles(1),
	dataf => ALT_INV_last_bit_rx(0),
	combout => \Equal2~1_combout\);

-- Location: MLABCELL_X19_Y6_N45
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = !last_bit_rx(2) $ (!clk_toggles(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_bit_rx(2),
	datad => ALT_INV_clk_toggles(2),
	combout => \Equal2~2_combout\);

-- Location: MLABCELL_X19_Y6_N57
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( last_bit_rx(0) & ( !clk_toggles(0) ) ) # ( !last_bit_rx(0) & ( clk_toggles(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_toggles(0),
	dataf => ALT_INV_last_bit_rx(0),
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X19_Y6_N24
\tx_buffer[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer[0]~3_combout\ = ( \Equal2~0_combout\ & ( \cont~input_o\ & ( (\tx_data[0]~input_o\ & !\state~q\) ) ) ) # ( !\Equal2~0_combout\ & ( \cont~input_o\ & ( (\tx_data[0]~input_o\ & ((!\state~q\) # ((!\Equal2~1_combout\ & !\Equal2~2_combout\)))) ) ) ) # 
-- ( \Equal2~0_combout\ & ( !\cont~input_o\ & ( (\tx_data[0]~input_o\ & !\state~q\) ) ) ) # ( !\Equal2~0_combout\ & ( !\cont~input_o\ & ( (\tx_data[0]~input_o\ & !\state~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010100010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_data[0]~input_o\,
	datab => \ALT_INV_Equal2~1_combout\,
	datac => \ALT_INV_state~q\,
	datad => \ALT_INV_Equal2~2_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_cont~input_o\,
	combout => \tx_buffer[0]~3_combout\);

-- Location: LABCELL_X18_Y6_N42
\cpha~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpha~_wirecell_combout\ = !\cpha~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cpha~input_o\,
	combout => \cpha~_wirecell_combout\);

-- Location: LABCELL_X18_Y6_N27
\assert_data~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \assert_data~_wirecell_combout\ = !\assert_data~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_assert_data~q\,
	combout => \assert_data~_wirecell_combout\);

-- Location: FF_X18_Y6_N44
assert_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \cpha~_wirecell_combout\,
	asdata => \assert_data~_wirecell_combout\,
	sload => \state~q\,
	ena => \clk_toggles[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assert_data~q\);

-- Location: MLABCELL_X19_Y6_N3
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( clk_toggles(2) & ( clk_toggles(0) & ( (last_bit_rx(2) & (last_bit_rx(0) & (\assert_data~q\ & !clk_toggles(1)))) ) ) ) # ( !clk_toggles(2) & ( clk_toggles(0) & ( (\assert_data~q\ & (((last_bit_rx(0) & !clk_toggles(1))) # 
-- (last_bit_rx(2)))) ) ) ) # ( clk_toggles(2) & ( !clk_toggles(0) & ( (last_bit_rx(2) & (last_bit_rx(0) & \assert_data~q\)) ) ) ) # ( !clk_toggles(2) & ( !clk_toggles(0) & ( (\assert_data~q\ & ((last_bit_rx(0)) # (last_bit_rx(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000000010000000100000111000001010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_bit_rx(2),
	datab => ALT_INV_last_bit_rx(0),
	datac => \ALT_INV_assert_data~q\,
	datad => ALT_INV_clk_toggles(1),
	datae => ALT_INV_clk_toggles(2),
	dataf => ALT_INV_clk_toggles(0),
	combout => \process_0~1_combout\);

-- Location: MLABCELL_X19_Y6_N15
\tx_buffer[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer[1]~1_combout\ = ( !\process_0~1_combout\ & ( \Equal2~1_combout\ & ( \state~q\ ) ) ) # ( !\process_0~1_combout\ & ( !\Equal2~1_combout\ & ( (\state~q\ & ((!\cont~input_o\) # ((\Equal2~0_combout\) # (\Equal2~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111111000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cont~input_o\,
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_state~q\,
	datae => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \tx_buffer[1]~1_combout\);

-- Location: MLABCELL_X19_Y6_N21
\tx_buffer[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer[1]~2_combout\ = ( \enable~input_o\ & ( \Equal1~6_combout\ & ( (\reset_n~input_o\ & (!\tx_buffer[1]~1_combout\ & ((!\state~q\) # (\Equal1~12_combout\)))) ) ) ) # ( !\enable~input_o\ & ( \Equal1~6_combout\ & ( (\reset_n~input_o\ & 
-- (\Equal1~12_combout\ & (!\tx_buffer[1]~1_combout\ & \state~q\))) ) ) ) # ( \enable~input_o\ & ( !\Equal1~6_combout\ & ( (\reset_n~input_o\ & (!\tx_buffer[1]~1_combout\ & !\state~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000100000101000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset_n~input_o\,
	datab => \ALT_INV_Equal1~12_combout\,
	datac => \ALT_INV_tx_buffer[1]~1_combout\,
	datad => \ALT_INV_state~q\,
	datae => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \tx_buffer[1]~2_combout\);

-- Location: FF_X19_Y6_N25
\tx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \tx_buffer[0]~3_combout\,
	ena => \tx_buffer[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(0));

-- Location: MLABCELL_X19_Y6_N9
\tx_buffer[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tx_buffer[1]~0_combout\ = ( tx_buffer(0) & ( ((!\process_0~2_combout\ & \state~q\)) # (\tx_data[1]~input_o\) ) ) # ( !tx_buffer(0) & ( (\tx_data[1]~input_o\ & ((!\state~q\) # (\process_0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010101010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tx_data[1]~input_o\,
	datac => \ALT_INV_process_0~2_combout\,
	datad => \ALT_INV_state~q\,
	dataf => ALT_INV_tx_buffer(0),
	combout => \tx_buffer[1]~0_combout\);

-- Location: FF_X19_Y6_N10
\tx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \tx_buffer[1]~0_combout\,
	ena => \tx_buffer[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(1));

-- Location: LABCELL_X18_Y5_N39
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !clk_toggles(1) & ( clk_toggles(2) & ( (clk_toggles(0) & !\cont~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clk_toggles(0),
	datac => \ALT_INV_cont~input_o\,
	datae => ALT_INV_clk_toggles(1),
	dataf => ALT_INV_clk_toggles(2),
	combout => \process_0~0_combout\);

-- Location: LABCELL_X18_Y4_N21
\mosi~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mosi~1_combout\ = ( \Equal1~6_combout\ & ( (!\state~q\) # ((\Equal1~12_combout\ & ((\process_0~0_combout\) # (\process_0~1_combout\)))) ) ) # ( !\Equal1~6_combout\ & ( !\state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110111111100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_state~q\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_Equal1~12_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \mosi~1_combout\);

-- Location: FF_X18_Y4_N31
\mosi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => tx_buffer(1),
	sload => VCC,
	ena => \mosi~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mosi~reg0_q\);

-- Location: LABCELL_X18_Y4_N18
\mosi~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mosi~2_combout\ = ( clk_toggles(2) & ( (\state~q\ & ((!\clk_toggles~0_combout\) # (\cont~input_o\))) ) ) # ( !clk_toggles(2) & ( \state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000000110011001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state~q\,
	datac => \ALT_INV_cont~input_o\,
	datad => \ALT_INV_clk_toggles~0_combout\,
	dataf => ALT_INV_clk_toggles(2),
	combout => \mosi~2_combout\);

-- Location: FF_X18_Y4_N19
\mosi~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \mosi~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \mosi~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mosi~en_q\);

-- Location: IOIBUF_X36_Y0_N52
\cpol~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpol,
	o => \cpol~input_o\);

-- Location: IOIBUF_X51_Y0_N18
\addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: IOIBUF_X51_Y0_N52
\addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N52
\addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: IOIBUF_X57_Y0_N18
\addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

-- Location: LABCELL_X51_Y1_N36
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( !\addr[6]~input_o\ & ( !\addr[5]~input_o\ & ( (!\addr[2]~input_o\ & (!\addr[7]~input_o\ & (!\addr[3]~input_o\ & !\addr[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[7]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[4]~input_o\,
	datae => \ALT_INV_addr[6]~input_o\,
	dataf => \ALT_INV_addr[5]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X53_Y0_N35
\addr[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);

-- Location: IOIBUF_X50_Y0_N18
\addr[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(18),
	o => \addr[18]~input_o\);

-- Location: IOIBUF_X51_Y0_N35
\addr[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(16),
	o => \addr[16]~input_o\);

-- Location: IOIBUF_X53_Y0_N52
\addr[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

-- Location: IOIBUF_X48_Y0_N58
\addr[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(19),
	o => \addr[19]~input_o\);

-- Location: IOIBUF_X55_Y0_N41
\addr[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(17),
	o => \addr[17]~input_o\);

-- Location: LABCELL_X51_Y1_N6
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( !\addr[19]~input_o\ & ( !\addr[17]~input_o\ & ( (!\addr[15]~input_o\ & (!\addr[18]~input_o\ & (!\addr[16]~input_o\ & !\addr[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[15]~input_o\,
	datab => \ALT_INV_addr[18]~input_o\,
	datac => \ALT_INV_addr[16]~input_o\,
	datad => \ALT_INV_addr[14]~input_o\,
	datae => \ALT_INV_addr[19]~input_o\,
	dataf => \ALT_INV_addr[17]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X50_Y0_N1
\addr[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(23),
	o => \addr[23]~input_o\);

-- Location: IOIBUF_X48_Y0_N75
\addr[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(24),
	o => \addr[24]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\addr[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(22),
	o => \addr[22]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\addr[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(20),
	o => \addr[20]~input_o\);

-- Location: IOIBUF_X50_Y0_N52
\addr[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(25),
	o => \addr[25]~input_o\);

-- Location: IOIBUF_X55_Y0_N75
\addr[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(21),
	o => \addr[21]~input_o\);

-- Location: LABCELL_X51_Y1_N24
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !\addr[25]~input_o\ & ( !\addr[21]~input_o\ & ( (!\addr[23]~input_o\ & (!\addr[24]~input_o\ & (!\addr[22]~input_o\ & !\addr[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[23]~input_o\,
	datab => \ALT_INV_addr[24]~input_o\,
	datac => \ALT_INV_addr[22]~input_o\,
	datad => \ALT_INV_addr[20]~input_o\,
	datae => \ALT_INV_addr[25]~input_o\,
	dataf => \ALT_INV_addr[21]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X48_Y0_N41
\addr[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(31),
	o => \addr[31]~input_o\);

-- Location: IOIBUF_X44_Y0_N52
\addr[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\addr[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

-- Location: IOIBUF_X46_Y0_N35
\addr[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

-- Location: IOIBUF_X42_Y0_N52
\addr[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

-- Location: IOIBUF_X44_Y0_N18
\addr[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

-- Location: IOIBUF_X44_Y0_N35
\addr[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

-- Location: LABCELL_X45_Y1_N0
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !\addr[11]~input_o\ & ( !\addr[8]~input_o\ & ( (!\addr[10]~input_o\ & (!\addr[12]~input_o\ & (!\addr[13]~input_o\ & !\addr[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[10]~input_o\,
	datab => \ALT_INV_addr[12]~input_o\,
	datac => \ALT_INV_addr[13]~input_o\,
	datad => \ALT_INV_addr[9]~input_o\,
	datae => \ALT_INV_addr[11]~input_o\,
	dataf => \ALT_INV_addr[8]~input_o\,
	combout => \LessThan0~4_combout\);

-- Location: IOIBUF_X59_Y0_N35
\addr[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(26),
	o => \addr[26]~input_o\);

-- Location: IOIBUF_X59_Y0_N52
\addr[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(30),
	o => \addr[30]~input_o\);

-- Location: IOIBUF_X59_Y0_N18
\addr[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(28),
	o => \addr[28]~input_o\);

-- Location: IOIBUF_X59_Y0_N1
\addr[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(29),
	o => \addr[29]~input_o\);

-- Location: IOIBUF_X61_Y0_N52
\addr[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(27),
	o => \addr[27]~input_o\);

-- Location: LABCELL_X59_Y1_N15
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !\addr[29]~input_o\ & ( !\addr[27]~input_o\ & ( (!\addr[26]~input_o\ & (!\addr[30]~input_o\ & !\addr[28]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[26]~input_o\,
	datab => \ALT_INV_addr[30]~input_o\,
	datac => \ALT_INV_addr[28]~input_o\,
	datae => \ALT_INV_addr[29]~input_o\,
	dataf => \ALT_INV_addr[27]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X51_Y1_N30
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~4_combout\ & ( \LessThan0~0_combout\ & ( (!\addr[31]~input_o\ & ((!\LessThan0~3_combout\) # ((!\LessThan0~2_combout\) # (!\LessThan0~1_combout\)))) ) ) ) # ( !\LessThan0~4_combout\ & ( \LessThan0~0_combout\ & ( 
-- !\addr[31]~input_o\ ) ) ) # ( \LessThan0~4_combout\ & ( !\LessThan0~0_combout\ & ( !\addr[31]~input_o\ ) ) ) # ( !\LessThan0~4_combout\ & ( !\LessThan0~0_combout\ & ( !\addr[31]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_addr[31]~input_o\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~5_combout\);

-- Location: IOIBUF_X18_Y0_N52
\addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: LABCELL_X18_Y4_N24
\slave~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \slave~0_combout\ = ( \addr[0]~input_o\ & ( \LessThan0~5_combout\ ) ) # ( !\addr[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~5_combout\,
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \slave~0_combout\);

-- Location: FF_X18_Y4_N26
\slave[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \slave~0_combout\,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave(0));

-- Location: IOIBUF_X19_Y0_N35
\addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: LABCELL_X18_Y4_N27
\slave~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \slave~1_combout\ = (!\LessThan0~5_combout\ & \addr[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_addr[1]~input_o\,
	combout => \slave~1_combout\);

-- Location: FF_X18_Y4_N29
\slave[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \slave~1_combout\,
	ena => \clk_ratio[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave(1));

-- Location: LABCELL_X18_Y4_N15
\ss_n~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ss_n~6_combout\ = ( slave(0) & ( !\ss_n[3]~reg0_q\ ) ) # ( !slave(0) & ( (!\ss_n[3]~reg0_q\ & !slave(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ss_n[3]~reg0_q\,
	datad => ALT_INV_slave(1),
	dataf => ALT_INV_slave(0),
	combout => \ss_n~6_combout\);

-- Location: LABCELL_X18_Y4_N57
\ss_n~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ss_n~7_combout\ = ( \state~q\ & ( \Equal1~6_combout\ & ( (!\ss_n~6_combout\ & ((!\Equal1~12_combout\) # (!\process_0~0_combout\))) ) ) ) # ( \state~q\ & ( !\Equal1~6_combout\ & ( !\ss_n~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~12_combout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_ss_n~6_combout\,
	datae => \ALT_INV_state~q\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \ss_n~7_combout\);

-- Location: FF_X18_Y4_N59
\ss_n[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ss_n~7_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss_n[3]~reg0_q\);

-- Location: LABCELL_X18_Y4_N6
\ss_n~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ss_n~0_combout\ = ( !\ss_n[0]~reg0_q\ & ( (!slave(0)) # (slave(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_slave(0),
	datad => ALT_INV_slave(1),
	dataf => \ALT_INV_ss_n[0]~reg0_q\,
	combout => \ss_n~0_combout\);

-- Location: LABCELL_X18_Y4_N12
\ss_n~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ss_n~1_combout\ = ( !\ss_n~0_combout\ & ( (\state~q\ & ((!\Equal1~12_combout\) # ((!\process_0~0_combout\) # (!\Equal1~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~12_combout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Equal1~6_combout\,
	datad => \ALT_INV_state~q\,
	dataf => \ALT_INV_ss_n~0_combout\,
	combout => \ss_n~1_combout\);

-- Location: FF_X18_Y4_N14
\ss_n[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ss_n~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss_n[0]~reg0_q\);

-- Location: LABCELL_X18_Y4_N48
\ss_n~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ss_n~4_combout\ = ( slave(1) & ( (!\ss_n[2]~reg0_q\ & !slave(0)) ) ) # ( !slave(1) & ( !\ss_n[2]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101000001010000010101010101010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ss_n[2]~reg0_q\,
	datac => ALT_INV_slave(0),
	datae => ALT_INV_slave(1),
	combout => \ss_n~4_combout\);

-- Location: LABCELL_X18_Y4_N3
\ss_n~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ss_n~5_combout\ = ( \Equal1~6_combout\ & ( (!\ss_n~4_combout\ & (\state~q\ & ((!\Equal1~12_combout\) # (!\process_0~0_combout\)))) ) ) # ( !\Equal1~6_combout\ & ( (!\ss_n~4_combout\ & \state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~12_combout\,
	datab => \ALT_INV_ss_n~4_combout\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state~q\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \ss_n~5_combout\);

-- Location: FF_X18_Y4_N5
\ss_n[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ss_n~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss_n[2]~reg0_q\);

-- Location: LABCELL_X18_Y4_N0
\ss_n~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ss_n~2_combout\ = ( !\ss_n[1]~reg0_q\ & ( (slave(1)) # (slave(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_slave(0),
	datad => ALT_INV_slave(1),
	dataf => \ALT_INV_ss_n[1]~reg0_q\,
	combout => \ss_n~2_combout\);

-- Location: LABCELL_X18_Y4_N9
\ss_n~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ss_n~3_combout\ = ( \Equal1~6_combout\ & ( (!\ss_n~2_combout\ & (\state~q\ & ((!\Equal1~12_combout\) # (!\process_0~0_combout\)))) ) ) # ( !\Equal1~6_combout\ & ( (!\ss_n~2_combout\ & \state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ss_n~2_combout\,
	datab => \ALT_INV_Equal1~12_combout\,
	datac => \ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_state~q\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \ss_n~3_combout\);

-- Location: FF_X18_Y4_N11
\ss_n[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ss_n~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss_n[1]~reg0_q\);

-- Location: LABCELL_X18_Y4_N33
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( slave(1) & ( \ss_n[1]~reg0_q\ & ( (!slave(0) & (!\ss_n[3]~reg0_q\)) # (slave(0) & ((!\ss_n[2]~reg0_q\))) ) ) ) # ( !slave(1) & ( \ss_n[1]~reg0_q\ & ( (slave(0) & !\ss_n[0]~reg0_q\) ) ) ) # ( slave(1) & ( !\ss_n[1]~reg0_q\ & ( 
-- (!slave(0) & (!\ss_n[3]~reg0_q\)) # (slave(0) & ((!\ss_n[2]~reg0_q\))) ) ) ) # ( !slave(1) & ( !\ss_n[1]~reg0_q\ & ( (!slave(0)) # (!\ss_n[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010110111011000100001010000010100001101110110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slave(0),
	datab => \ALT_INV_ss_n[3]~reg0_q\,
	datac => \ALT_INV_ss_n[0]~reg0_q\,
	datad => \ALT_INV_ss_n[2]~reg0_q\,
	datae => ALT_INV_slave(1),
	dataf => \ALT_INV_ss_n[1]~reg0_q\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X18_Y5_N51
\sclk~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sclk~0_combout\ = ( clk_toggles(1) & ( clk_toggles(2) ) ) # ( !clk_toggles(1) & ( clk_toggles(2) & ( clk_toggles(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_toggles(0),
	datae => ALT_INV_clk_toggles(1),
	dataf => ALT_INV_clk_toggles(2),
	combout => \sclk~0_combout\);

-- Location: LABCELL_X18_Y5_N33
\sclk~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sclk~1_combout\ = ( \Equal1~6_combout\ & ( \Equal1~12_combout\ & ( (!\Mux0~0_combout\ & (\state~q\ & !\sclk~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_state~q\,
	datad => \ALT_INV_sclk~0_combout\,
	datae => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_Equal1~12_combout\,
	combout => \sclk~1_combout\);

-- Location: LABCELL_X18_Y5_N42
\sclk~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sclk~2_combout\ = ( \sclk~reg0_q\ & ( \sclk~1_combout\ & ( (!\reset_n~input_o\) # ((!\state~q\ & \cpol~input_o\)) ) ) ) # ( !\sclk~reg0_q\ & ( \sclk~1_combout\ & ( (\reset_n~input_o\ & ((\cpol~input_o\) # (\state~q\))) ) ) ) # ( \sclk~reg0_q\ & ( 
-- !\sclk~1_combout\ & ( (!\enable~input_o\) # (((!\reset_n~input_o\) # (\cpol~input_o\)) # (\state~q\)) ) ) ) # ( !\sclk~reg0_q\ & ( !\sclk~1_combout\ & ( (\enable~input_o\ & (!\state~q\ & (\cpol~input_o\ & \reset_n~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111111011111100000000001111111111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_state~q\,
	datac => \ALT_INV_cpol~input_o\,
	datad => \ALT_INV_reset_n~input_o\,
	datae => \ALT_INV_sclk~reg0_q\,
	dataf => \ALT_INV_sclk~1_combout\,
	combout => \sclk~2_combout\);

-- Location: FF_X18_Y5_N43
\sclk~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \sclk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sclk~reg0_q\);

-- Location: LABCELL_X18_Y5_N12
\continue~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \continue~0_combout\ = ( \continue~q\ & ( \Equal1~12_combout\ & ( !\Equal1~6_combout\ ) ) ) # ( !\continue~q\ & ( \Equal1~12_combout\ & ( (\process_0~2_combout\ & \Equal1~6_combout\) ) ) ) # ( \continue~q\ & ( !\Equal1~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~2_combout\,
	datad => \ALT_INV_Equal1~6_combout\,
	datae => \ALT_INV_continue~q\,
	dataf => \ALT_INV_Equal1~12_combout\,
	combout => \continue~0_combout\);

-- Location: FF_X18_Y5_N14
continue : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \continue~0_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \continue~q\);

-- Location: LABCELL_X18_Y4_N36
\busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \busy~0_combout\ = ( \clk_toggles~0_combout\ & ( \Equal1~6_combout\ & ( (\Equal1~12_combout\ & (((clk_toggles(2) & !\cont~input_o\)) # (\continue~q\))) ) ) ) # ( !\clk_toggles~0_combout\ & ( \Equal1~6_combout\ & ( (\Equal1~12_combout\ & \continue~q\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_toggles(2),
	datab => \ALT_INV_cont~input_o\,
	datac => \ALT_INV_Equal1~12_combout\,
	datad => \ALT_INV_continue~q\,
	datae => \ALT_INV_clk_toggles~0_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \busy~0_combout\);

-- Location: LABCELL_X18_Y4_N42
\enable~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable~_wirecell_combout\ = ( !\enable~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_enable~input_o\,
	combout => \enable~_wirecell_combout\);

-- Location: FF_X18_Y4_N37
\busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \busy~0_combout\,
	asdata => \enable~_wirecell_combout\,
	clrn => \reset_n~input_o\,
	sload => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busy~reg0_q\);

-- Location: IOIBUF_X34_Y0_N35
\miso~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_miso,
	o => \miso~input_o\);

-- Location: MLABCELL_X19_Y6_N6
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( clk_toggles(0) & ( !last_bit_rx(0) ) ) # ( !clk_toggles(0) & ( (!last_bit_rx(0) & clk_toggles(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_bit_rx(0),
	datac => ALT_INV_clk_toggles(1),
	dataf => ALT_INV_clk_toggles(0),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X18_Y5_N0
\rx_buffer[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_buffer[0]~0_combout\ = ( \LessThan2~0_combout\ & ( (!\assert_data~q\ & (\reset_n~input_o\ & (!clk_toggles(2) & last_bit_rx(2)))) ) ) # ( !\LessThan2~0_combout\ & ( (!\assert_data~q\ & (\reset_n~input_o\ & ((!clk_toggles(2)) # (last_bit_rx(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100010001000000010001000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_assert_data~q\,
	datab => \ALT_INV_reset_n~input_o\,
	datac => ALT_INV_clk_toggles(2),
	datad => ALT_INV_last_bit_rx(2),
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \rx_buffer[0]~0_combout\);

-- Location: MLABCELL_X19_Y5_N51
\rx_buffer[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_buffer[0]~1_combout\ = ( \Equal1~6_combout\ & ( (!\Mux0~0_combout\ & (\state~q\ & (\rx_buffer[0]~0_combout\ & \Equal1~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_state~q\,
	datac => \ALT_INV_rx_buffer[0]~0_combout\,
	datad => \ALT_INV_Equal1~12_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \rx_buffer[0]~1_combout\);

-- Location: FF_X19_Y5_N53
\rx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \miso~input_o\,
	sload => VCC,
	ena => \rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(0));

-- Location: LABCELL_X17_Y5_N51
\rx_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rx_data[0]~0_combout\ = ( \Equal1~6_combout\ & ( \Equal1~12_combout\ & ( (\state~q\ & ((\continue~q\) # (\process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_continue~q\,
	datad => \ALT_INV_state~q\,
	datae => \ALT_INV_Equal1~6_combout\,
	dataf => \ALT_INV_Equal1~12_combout\,
	combout => \rx_data[0]~0_combout\);

-- Location: FF_X17_Y5_N49
\rx_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => rx_buffer(0),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[0]~reg0_q\);

-- Location: FF_X19_Y5_N49
\rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => rx_buffer(0),
	sload => VCC,
	ena => \rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(1));

-- Location: FF_X17_Y5_N52
\rx_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => rx_buffer(1),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[1]~reg0_q\);

-- Location: MLABCELL_X19_Y47_N3
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


