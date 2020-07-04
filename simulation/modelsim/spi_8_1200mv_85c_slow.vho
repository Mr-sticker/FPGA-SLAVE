-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/24/2020 20:40:08"

-- 
-- Device: Altera EP4CE10F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	spi IS
    PORT (
	clk_25m : IN std_logic;
	spi_clk : IN std_logic;
	spi_cs : IN std_logic;
	spi_miso : BUFFER std_logic;
	spi_mosi : IN std_logic;
	fpga_led : BUFFER std_logic
	);
END spi;

-- Design Ports Information
-- spi_miso	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_led	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_cs	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_clk	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_25m	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_mosi	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF spi IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_25m : std_logic;
SIGNAL ww_spi_clk : std_logic;
SIGNAL ww_spi_cs : std_logic;
SIGNAL ww_spi_miso : std_logic;
SIGNAL ww_spi_mosi : std_logic;
SIGNAL ww_fpga_led : std_logic;
SIGNAL \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u2|spi_tx_en_r~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_25m~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|spi_rx_en_r~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_miso~output_o\ : std_logic;
SIGNAL \fpga_led~output_o\ : std_logic;
SIGNAL \spi_clk~input_o\ : std_logic;
SIGNAL \spi_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \spi_cs~input_o\ : std_logic;
SIGNAL \clk_25m~input_o\ : std_logic;
SIGNAL \clk_25m~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|Add0~11\ : std_logic;
SIGNAL \u0|Add0~12_combout\ : std_logic;
SIGNAL \u0|Add0~13\ : std_logic;
SIGNAL \u0|Add0~14_combout\ : std_logic;
SIGNAL \u0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Equal0~1_combout\ : std_logic;
SIGNAL \u0|rst_cnt~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Add0~9\ : std_logic;
SIGNAL \u0|Add0~10_combout\ : std_logic;
SIGNAL \u0|rst_n~0_combout\ : std_logic;
SIGNAL \u3|always0~0_combout\ : std_logic;
SIGNAL \u2|send_state[0]~2_combout\ : std_logic;
SIGNAL \u2|send_state[1]~0_combout\ : std_logic;
SIGNAL \u2|send_state[2]~1_combout\ : std_logic;
SIGNAL \u2|receive_state[0]~0_combout\ : std_logic;
SIGNAL \u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|spi_rx_en_r~0_combout\ : std_logic;
SIGNAL \u2|spi_rx_en_r~feeder_combout\ : std_logic;
SIGNAL \u2|spi_rx_en_r~q\ : std_logic;
SIGNAL \u2|spi_rx_en_r~clkctrl_outclk\ : std_logic;
SIGNAL \spi_mosi~input_o\ : std_logic;
SIGNAL \u2|data_in[1]~feeder_combout\ : std_logic;
SIGNAL \u2|receive_byte_r[2]~feeder_combout\ : std_logic;
SIGNAL \u2|Decoder0~0_combout\ : std_logic;
SIGNAL \u3|order[2]~feeder_combout\ : std_logic;
SIGNAL \u2|receive_byte_r[1]~feeder_combout\ : std_logic;
SIGNAL \u3|order[2]~1_combout\ : std_logic;
SIGNAL \u3|rx_state~23_combout\ : std_logic;
SIGNAL \u3|rx_state~24_combout\ : std_logic;
SIGNAL \u3|rx_state.rx_rd_add_state~q\ : std_logic;
SIGNAL \u3|rx_state~21_combout\ : std_logic;
SIGNAL \u3|rx_state~22_combout\ : std_logic;
SIGNAL \u3|rx_state.rx_wr_add_state~q\ : std_logic;
SIGNAL \u3|rx_state.rx_idle_state~feeder_combout\ : std_logic;
SIGNAL \u3|rx_state.rx_idle_state~q\ : std_logic;
SIGNAL \u3|rx_state~27_combout\ : std_logic;
SIGNAL \u3|rx_state~28_combout\ : std_logic;
SIGNAL \u3|rx_state.rx_wr_length_state~q\ : std_logic;
SIGNAL \u3|rx_state~25_combout\ : std_logic;
SIGNAL \u3|rx_state~26_combout\ : std_logic;
SIGNAL \u3|rx_state.rx_rd_ledgth_state~q\ : std_logic;
SIGNAL \u3|rx_state.rx_idle_state~0_combout\ : std_logic;
SIGNAL \u3|rx_state.rx_idle_state~1_combout\ : std_logic;
SIGNAL \u3|rx_state.rx_idle_state~2_combout\ : std_logic;
SIGNAL \u2|data_in[2]~feeder_combout\ : std_logic;
SIGNAL \u2|receive_byte_r[3]~feeder_combout\ : std_logic;
SIGNAL \u3|WideOr0~0_combout\ : std_logic;
SIGNAL \u2|receive_byte_r[6]~feeder_combout\ : std_logic;
SIGNAL \u2|receive_byte_r[5]~feeder_combout\ : std_logic;
SIGNAL \u2|data_in[6]~feeder_combout\ : std_logic;
SIGNAL \u2|receive_byte_r[7]~feeder_combout\ : std_logic;
SIGNAL \u2|receive_byte_r[4]~feeder_combout\ : std_logic;
SIGNAL \u3|Equal6~0_combout\ : std_logic;
SIGNAL \u3|rx_state~19_combout\ : std_logic;
SIGNAL \u3|rx_state~20_combout\ : std_logic;
SIGNAL \u3|rx_state.rx_judge_state~q\ : std_logic;
SIGNAL \u3|order[2]~0_combout\ : std_logic;
SIGNAL \u3|order[2]~2_combout\ : std_logic;
SIGNAL \u3|order[1]~feeder_combout\ : std_logic;
SIGNAL \u3|wr_cnt[0]~12_combout\ : std_logic;
SIGNAL \u3|rx_cnt[1]~0_combout\ : std_logic;
SIGNAL \u3|rx_cnt[0]~3_combout\ : std_logic;
SIGNAL \u3|rx_cnt[0]~1_combout\ : std_logic;
SIGNAL \u3|rd_cnt[11]~12_combout\ : std_logic;
SIGNAL \u3|rd_length_r[0]~0_combout\ : std_logic;
SIGNAL \u3|Add4~1\ : std_logic;
SIGNAL \u3|Add4~3\ : std_logic;
SIGNAL \u3|Add4~4_combout\ : std_logic;
SIGNAL \u3|rd_cnt[0]~13_combout\ : std_logic;
SIGNAL \u3|rd_cnt[3]~20\ : std_logic;
SIGNAL \u3|rd_cnt[4]~21_combout\ : std_logic;
SIGNAL \u3|rd_cnt[4]~22\ : std_logic;
SIGNAL \u3|rd_cnt[5]~23_combout\ : std_logic;
SIGNAL \u3|rd_cnt[5]~24\ : std_logic;
SIGNAL \u3|rd_cnt[6]~25_combout\ : std_logic;
SIGNAL \u3|rd_cnt[6]~26\ : std_logic;
SIGNAL \u3|rd_cnt[7]~27_combout\ : std_logic;
SIGNAL \u3|rd_cnt[7]~28\ : std_logic;
SIGNAL \u3|rd_cnt[8]~29_combout\ : std_logic;
SIGNAL \u3|rd_cnt[8]~30\ : std_logic;
SIGNAL \u3|rd_cnt[9]~31_combout\ : std_logic;
SIGNAL \u3|rd_cnt[9]~32\ : std_logic;
SIGNAL \u3|rd_cnt[10]~33_combout\ : std_logic;
SIGNAL \u3|rd_cnt[10]~34\ : std_logic;
SIGNAL \u3|rd_cnt[11]~35_combout\ : std_logic;
SIGNAL \u3|rd_length_r[8]~1_combout\ : std_logic;
SIGNAL \u3|rd_length_r[8]~2_combout\ : std_logic;
SIGNAL \u3|Add4~5\ : std_logic;
SIGNAL \u3|Add4~7\ : std_logic;
SIGNAL \u3|Add4~9\ : std_logic;
SIGNAL \u3|Add4~11\ : std_logic;
SIGNAL \u3|Add4~13\ : std_logic;
SIGNAL \u3|Add4~15\ : std_logic;
SIGNAL \u3|Add4~17\ : std_logic;
SIGNAL \u3|Add4~19\ : std_logic;
SIGNAL \u3|Add4~20_combout\ : std_logic;
SIGNAL \u3|Add4~21\ : std_logic;
SIGNAL \u3|Add4~22_combout\ : std_logic;
SIGNAL \u3|Equal3~6_combout\ : std_logic;
SIGNAL \u3|Add4~16_combout\ : std_logic;
SIGNAL \u3|Add4~18_combout\ : std_logic;
SIGNAL \u3|Equal3~5_combout\ : std_logic;
SIGNAL \u3|Add4~23\ : std_logic;
SIGNAL \u3|Add4~24_combout\ : std_logic;
SIGNAL \u3|Add4~25\ : std_logic;
SIGNAL \u3|Add4~26_combout\ : std_logic;
SIGNAL \u3|Add4~27\ : std_logic;
SIGNAL \u3|Add4~29\ : std_logic;
SIGNAL \u3|Add4~30_combout\ : std_logic;
SIGNAL \u3|Add4~28_combout\ : std_logic;
SIGNAL \u3|Equal3~7_combout\ : std_logic;
SIGNAL \u3|Equal3~8_combout\ : std_logic;
SIGNAL \u3|rd_cnt[0]~14\ : std_logic;
SIGNAL \u3|rd_cnt[1]~15_combout\ : std_logic;
SIGNAL \u3|rd_cnt[1]~16\ : std_logic;
SIGNAL \u3|rd_cnt[2]~17_combout\ : std_logic;
SIGNAL \u3|rd_cnt[2]~18\ : std_logic;
SIGNAL \u3|rd_cnt[3]~19_combout\ : std_logic;
SIGNAL \u3|Add4~6_combout\ : std_logic;
SIGNAL \u3|Equal3~1_combout\ : std_logic;
SIGNAL \u3|Add4~0_combout\ : std_logic;
SIGNAL \u3|Add4~2_combout\ : std_logic;
SIGNAL \u3|Equal3~0_combout\ : std_logic;
SIGNAL \u3|Add4~8_combout\ : std_logic;
SIGNAL \u3|Add4~10_combout\ : std_logic;
SIGNAL \u3|Equal3~2_combout\ : std_logic;
SIGNAL \u3|Add4~12_combout\ : std_logic;
SIGNAL \u3|Add4~14_combout\ : std_logic;
SIGNAL \u3|Equal3~3_combout\ : std_logic;
SIGNAL \u3|Equal3~4_combout\ : std_logic;
SIGNAL \u3|Equal3~9_combout\ : std_logic;
SIGNAL \u3|Equal3~10_combout\ : std_logic;
SIGNAL \u3|rx_cnt[0]~2_combout\ : std_logic;
SIGNAL \u3|rx_cnt[0]~4_combout\ : std_logic;
SIGNAL \u3|rx_cnt[0]~6_combout\ : std_logic;
SIGNAL \u3|rx_cnt[1]~5_combout\ : std_logic;
SIGNAL \u3|wr_cnt[11]~16_combout\ : std_logic;
SIGNAL \u3|wr_cnt[0]~13\ : std_logic;
SIGNAL \u3|wr_cnt[1]~14_combout\ : std_logic;
SIGNAL \u3|wr_cnt[1]~15\ : std_logic;
SIGNAL \u3|wr_cnt[2]~17_combout\ : std_logic;
SIGNAL \u3|wr_cnt[2]~18\ : std_logic;
SIGNAL \u3|wr_cnt[3]~19_combout\ : std_logic;
SIGNAL \u3|wr_cnt[3]~20\ : std_logic;
SIGNAL \u3|wr_cnt[4]~21_combout\ : std_logic;
SIGNAL \u3|wr_cnt[4]~22\ : std_logic;
SIGNAL \u3|wr_cnt[5]~23_combout\ : std_logic;
SIGNAL \u3|wr_cnt[5]~24\ : std_logic;
SIGNAL \u3|wr_cnt[6]~25_combout\ : std_logic;
SIGNAL \u3|wr_cnt[6]~26\ : std_logic;
SIGNAL \u3|wr_cnt[7]~27_combout\ : std_logic;
SIGNAL \u3|wr_cnt[7]~28\ : std_logic;
SIGNAL \u3|wr_cnt[8]~29_combout\ : std_logic;
SIGNAL \u3|wr_cnt[8]~30\ : std_logic;
SIGNAL \u3|wr_cnt[9]~31_combout\ : std_logic;
SIGNAL \u3|wr_cnt[9]~32\ : std_logic;
SIGNAL \u3|wr_cnt[10]~33_combout\ : std_logic;
SIGNAL \u3|wr_cnt[10]~34\ : std_logic;
SIGNAL \u3|wr_cnt[11]~35_combout\ : std_logic;
SIGNAL \u3|wr_length_r[8]~1_combout\ : std_logic;
SIGNAL \u3|wr_length_r[0]~0_combout\ : std_logic;
SIGNAL \u3|Add1~1\ : std_logic;
SIGNAL \u3|Add1~3\ : std_logic;
SIGNAL \u3|Add1~5\ : std_logic;
SIGNAL \u3|Add1~7\ : std_logic;
SIGNAL \u3|Add1~9\ : std_logic;
SIGNAL \u3|Add1~11\ : std_logic;
SIGNAL \u3|Add1~13\ : std_logic;
SIGNAL \u3|Add1~15\ : std_logic;
SIGNAL \u3|Add1~17\ : std_logic;
SIGNAL \u3|Add1~19\ : std_logic;
SIGNAL \u3|Add1~20_combout\ : std_logic;
SIGNAL \u3|Add1~21\ : std_logic;
SIGNAL \u3|Add1~22_combout\ : std_logic;
SIGNAL \u3|Equal2~6_combout\ : std_logic;
SIGNAL \u3|Add1~18_combout\ : std_logic;
SIGNAL \u3|Add1~16_combout\ : std_logic;
SIGNAL \u3|Equal2~5_combout\ : std_logic;
SIGNAL \u3|Add1~0_combout\ : std_logic;
SIGNAL \u3|Add1~2_combout\ : std_logic;
SIGNAL \u3|Equal2~0_combout\ : std_logic;
SIGNAL \u3|Add1~4_combout\ : std_logic;
SIGNAL \u3|Add1~6_combout\ : std_logic;
SIGNAL \u3|Equal2~1_combout\ : std_logic;
SIGNAL \u3|Add1~8_combout\ : std_logic;
SIGNAL \u3|Add1~10_combout\ : std_logic;
SIGNAL \u3|Equal2~2_combout\ : std_logic;
SIGNAL \u3|Add1~12_combout\ : std_logic;
SIGNAL \u3|Add1~14_combout\ : std_logic;
SIGNAL \u3|Equal2~3_combout\ : std_logic;
SIGNAL \u3|Equal2~4_combout\ : std_logic;
SIGNAL \u3|wr_length_r[15]~feeder_combout\ : std_logic;
SIGNAL \u3|Add1~23\ : std_logic;
SIGNAL \u3|Add1~25\ : std_logic;
SIGNAL \u3|Add1~27\ : std_logic;
SIGNAL \u3|Add1~29\ : std_logic;
SIGNAL \u3|Add1~30_combout\ : std_logic;
SIGNAL \u3|Add1~28_combout\ : std_logic;
SIGNAL \u3|Add1~26_combout\ : std_logic;
SIGNAL \u3|Add1~24_combout\ : std_logic;
SIGNAL \u3|Equal2~7_combout\ : std_logic;
SIGNAL \u3|Equal2~8_combout\ : std_logic;
SIGNAL \u3|wr_address_r[0]~2_combout\ : std_logic;
SIGNAL \u3|wr_en_r~0_combout\ : std_logic;
SIGNAL \u3|wr_en_r~q\ : std_logic;
SIGNAL \u3|rd_address_r[0]~2_combout\ : std_logic;
SIGNAL \u3|rd_en_r~0_combout\ : std_logic;
SIGNAL \u3|rd_en_r~feeder_combout\ : std_logic;
SIGNAL \u3|rd_en_r~q\ : std_logic;
SIGNAL \u2|spi_tx_en_r~0_combout\ : std_logic;
SIGNAL \u2|spi_tx_en_r~feeder_combout\ : std_logic;
SIGNAL \u2|spi_tx_en_r~q\ : std_logic;
SIGNAL \u2|spi_tx_en_r~clkctrl_outclk\ : std_logic;
SIGNAL \u3|u0|altsyncram_component|auto_generated|rden_b_store~q\ : std_logic;
SIGNAL \u3|u0|altsyncram_component|auto_generated|ram_block1a0~0_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u3|Selector22~0_combout\ : std_logic;
SIGNAL \u3|wr_address_r[0]~4_combout\ : std_logic;
SIGNAL \u3|Add0~1\ : std_logic;
SIGNAL \u3|Add0~2_combout\ : std_logic;
SIGNAL \u3|Selector21~0_combout\ : std_logic;
SIGNAL \u3|Add0~3\ : std_logic;
SIGNAL \u3|Add0~4_combout\ : std_logic;
SIGNAL \u3|Selector20~0_combout\ : std_logic;
SIGNAL \u3|Add0~5\ : std_logic;
SIGNAL \u3|Add0~6_combout\ : std_logic;
SIGNAL \u3|Selector19~0_combout\ : std_logic;
SIGNAL \u3|Add0~7\ : std_logic;
SIGNAL \u3|Add0~8_combout\ : std_logic;
SIGNAL \u3|Selector18~0_combout\ : std_logic;
SIGNAL \u3|Add0~9\ : std_logic;
SIGNAL \u3|Add0~10_combout\ : std_logic;
SIGNAL \u3|Selector17~0_combout\ : std_logic;
SIGNAL \u3|Add0~11\ : std_logic;
SIGNAL \u3|Add0~12_combout\ : std_logic;
SIGNAL \u3|Selector16~0_combout\ : std_logic;
SIGNAL \u3|Add0~13\ : std_logic;
SIGNAL \u3|Add0~14_combout\ : std_logic;
SIGNAL \u3|Selector15~0_combout\ : std_logic;
SIGNAL \u3|Add0~15\ : std_logic;
SIGNAL \u3|Add0~16_combout\ : std_logic;
SIGNAL \u3|Selector14~0_combout\ : std_logic;
SIGNAL \u3|wr_address_r[8]~3_combout\ : std_logic;
SIGNAL \u3|Add0~17\ : std_logic;
SIGNAL \u3|Add0~18_combout\ : std_logic;
SIGNAL \u3|Selector13~0_combout\ : std_logic;
SIGNAL \u3|Add3~0_combout\ : std_logic;
SIGNAL \u3|Selector47~0_combout\ : std_logic;
SIGNAL \u3|rd_address_r[0]~4_combout\ : std_logic;
SIGNAL \u3|Add3~1\ : std_logic;
SIGNAL \u3|Add3~2_combout\ : std_logic;
SIGNAL \u3|Selector46~0_combout\ : std_logic;
SIGNAL \u3|Add3~3\ : std_logic;
SIGNAL \u3|Add3~4_combout\ : std_logic;
SIGNAL \u3|Selector45~0_combout\ : std_logic;
SIGNAL \u3|Add3~5\ : std_logic;
SIGNAL \u3|Add3~6_combout\ : std_logic;
SIGNAL \u3|Selector44~0_combout\ : std_logic;
SIGNAL \u3|Add3~7\ : std_logic;
SIGNAL \u3|Add3~8_combout\ : std_logic;
SIGNAL \u3|Selector43~0_combout\ : std_logic;
SIGNAL \u3|Add3~9\ : std_logic;
SIGNAL \u3|Add3~10_combout\ : std_logic;
SIGNAL \u3|Selector42~0_combout\ : std_logic;
SIGNAL \u3|Add3~11\ : std_logic;
SIGNAL \u3|Add3~12_combout\ : std_logic;
SIGNAL \u3|Selector41~0_combout\ : std_logic;
SIGNAL \u3|Add3~13\ : std_logic;
SIGNAL \u3|Add3~14_combout\ : std_logic;
SIGNAL \u3|Selector40~0_combout\ : std_logic;
SIGNAL \u3|Add3~15\ : std_logic;
SIGNAL \u3|Add3~16_combout\ : std_logic;
SIGNAL \u3|Selector39~0_combout\ : std_logic;
SIGNAL \u3|rd_address_r[8]~3_combout\ : std_logic;
SIGNAL \u3|Add3~17\ : std_logic;
SIGNAL \u3|Add3~18_combout\ : std_logic;
SIGNAL \u3|Selector38~0_combout\ : std_logic;
SIGNAL \u3|Selector6~0_combout\ : std_logic;
SIGNAL \u3|send_byte[5]~4_combout\ : std_logic;
SIGNAL \u2|Decoder1~0_combout\ : std_logic;
SIGNAL \u3|send_byte[4]~7_combout\ : std_logic;
SIGNAL \u3|send_byte[7]~6_combout\ : std_logic;
SIGNAL \u3|send_byte[6]~5_combout\ : std_logic;
SIGNAL \u2|Mux4~2_combout\ : std_logic;
SIGNAL \u2|Mux4~3_combout\ : std_logic;
SIGNAL \u3|Selector1~0_combout\ : std_logic;
SIGNAL \u3|Equal6~1_combout\ : std_logic;
SIGNAL \u3|Equal7~0_combout\ : std_logic;
SIGNAL \u3|tx_state~20_combout\ : std_logic;
SIGNAL \u3|tx_state.tx_device_state~q\ : std_logic;
SIGNAL \u3|tx_state.tx_idle_state~feeder_combout\ : std_logic;
SIGNAL \u3|tx_state.tx_idle_state~q\ : std_logic;
SIGNAL \u3|tx_state.tx_idle_state~0_combout\ : std_logic;
SIGNAL \u3|tx_state~19_combout\ : std_logic;
SIGNAL \u3|tx_state.tx_error_state~q\ : std_logic;
SIGNAL \u3|tx_state~17_combout\ : std_logic;
SIGNAL \u3|tx_state~18_combout\ : std_logic;
SIGNAL \u3|tx_state.tx_judge_state~q\ : std_logic;
SIGNAL \u2|cs_start1~0_combout\ : std_logic;
SIGNAL \u0|rst_n~1_combout\ : std_logic;
SIGNAL \u2|cs_start1~q\ : std_logic;
SIGNAL \u2|cs_start2~q\ : std_logic;
SIGNAL \u2|cs_end~combout\ : std_logic;
SIGNAL \u3|error_r~0_combout\ : std_logic;
SIGNAL \u3|u1|lfsr_c[0]~8_combout\ : std_logic;
SIGNAL \u3|u1|lfsr_c[3]~11_combout\ : std_logic;
SIGNAL \u3|Equal5~0_combout\ : std_logic;
SIGNAL \u3|u1|lfsr_c[7]~12_combout\ : std_logic;
SIGNAL \u3|u1|lfsr_c[0]~9_combout\ : std_logic;
SIGNAL \u3|u1|lfsr_c[1]~13_combout\ : std_logic;
SIGNAL \u3|u1|lfsr_c[1]~14_combout\ : std_logic;
SIGNAL \u3|u1|lfsr_c[2]~10_combout\ : std_logic;
SIGNAL \u3|Equal5~2_combout\ : std_logic;
SIGNAL \u3|Equal5~3_combout\ : std_logic;
SIGNAL \u3|Equal5~1_combout\ : std_logic;
SIGNAL \u3|error_r~1_combout\ : std_logic;
SIGNAL \u3|error_r~q\ : std_logic;
SIGNAL \u3|Selector85~0_combout\ : std_logic;
SIGNAL \u3|Selector85~1_combout\ : std_logic;
SIGNAL \u3|Selector85~2_combout\ : std_logic;
SIGNAL \u3|Equal10~0_combout\ : std_logic;
SIGNAL \u3|send_byte[0]~3_combout\ : std_logic;
SIGNAL \u3|send_byte[1]~0_combout\ : std_logic;
SIGNAL \u3|send_byte[2]~1_combout\ : std_logic;
SIGNAL \u3|send_byte[3]~2_combout\ : std_logic;
SIGNAL \u2|Mux4~0_combout\ : std_logic;
SIGNAL \u2|Mux4~1_combout\ : std_logic;
SIGNAL \u2|spi_miso_r~0_combout\ : std_logic;
SIGNAL \u2|spi_miso_r~1_combout\ : std_logic;
SIGNAL \u2|spi_miso_r~q\ : std_logic;
SIGNAL \u1|time_cnt[0]~32_combout\ : std_logic;
SIGNAL \u1|time_cnt[0]~33\ : std_logic;
SIGNAL \u1|time_cnt[1]~34_combout\ : std_logic;
SIGNAL \u1|time_cnt[1]~35\ : std_logic;
SIGNAL \u1|time_cnt[2]~36_combout\ : std_logic;
SIGNAL \u1|time_cnt[2]~37\ : std_logic;
SIGNAL \u1|time_cnt[3]~38_combout\ : std_logic;
SIGNAL \u1|time_cnt[3]~39\ : std_logic;
SIGNAL \u1|time_cnt[4]~40_combout\ : std_logic;
SIGNAL \u1|time_cnt[4]~41\ : std_logic;
SIGNAL \u1|time_cnt[5]~42_combout\ : std_logic;
SIGNAL \u1|time_cnt[5]~43\ : std_logic;
SIGNAL \u1|time_cnt[6]~44_combout\ : std_logic;
SIGNAL \u1|time_cnt[6]~45\ : std_logic;
SIGNAL \u1|time_cnt[7]~46_combout\ : std_logic;
SIGNAL \u1|time_cnt[7]~47\ : std_logic;
SIGNAL \u1|time_cnt[8]~48_combout\ : std_logic;
SIGNAL \u1|time_cnt[8]~49\ : std_logic;
SIGNAL \u1|time_cnt[9]~50_combout\ : std_logic;
SIGNAL \u1|time_cnt[9]~51\ : std_logic;
SIGNAL \u1|time_cnt[10]~52_combout\ : std_logic;
SIGNAL \u1|time_cnt[10]~53\ : std_logic;
SIGNAL \u1|time_cnt[11]~54_combout\ : std_logic;
SIGNAL \u1|time_cnt[11]~55\ : std_logic;
SIGNAL \u1|time_cnt[12]~56_combout\ : std_logic;
SIGNAL \u1|time_cnt[12]~57\ : std_logic;
SIGNAL \u1|time_cnt[13]~58_combout\ : std_logic;
SIGNAL \u1|time_cnt[13]~59\ : std_logic;
SIGNAL \u1|time_cnt[14]~60_combout\ : std_logic;
SIGNAL \u1|time_cnt[14]~61\ : std_logic;
SIGNAL \u1|time_cnt[15]~62_combout\ : std_logic;
SIGNAL \u1|time_cnt[15]~63\ : std_logic;
SIGNAL \u1|time_cnt[16]~64_combout\ : std_logic;
SIGNAL \u1|time_cnt[16]~65\ : std_logic;
SIGNAL \u1|time_cnt[17]~66_combout\ : std_logic;
SIGNAL \u1|time_cnt[17]~67\ : std_logic;
SIGNAL \u1|time_cnt[18]~68_combout\ : std_logic;
SIGNAL \u1|time_cnt[18]~69\ : std_logic;
SIGNAL \u1|time_cnt[19]~70_combout\ : std_logic;
SIGNAL \u1|time_cnt[19]~71\ : std_logic;
SIGNAL \u1|time_cnt[20]~72_combout\ : std_logic;
SIGNAL \u1|time_cnt[20]~73\ : std_logic;
SIGNAL \u1|time_cnt[21]~74_combout\ : std_logic;
SIGNAL \u1|time_cnt[21]~75\ : std_logic;
SIGNAL \u1|time_cnt[22]~76_combout\ : std_logic;
SIGNAL \u1|time_cnt[22]~77\ : std_logic;
SIGNAL \u1|time_cnt[23]~78_combout\ : std_logic;
SIGNAL \u1|time_cnt[23]~79\ : std_logic;
SIGNAL \u1|time_cnt[24]~80_combout\ : std_logic;
SIGNAL \u1|time_cnt[24]~81\ : std_logic;
SIGNAL \u1|time_cnt[25]~82_combout\ : std_logic;
SIGNAL \u1|time_cnt[25]~83\ : std_logic;
SIGNAL \u1|time_cnt[26]~84_combout\ : std_logic;
SIGNAL \u1|time_cnt[26]~85\ : std_logic;
SIGNAL \u1|time_cnt[27]~86_combout\ : std_logic;
SIGNAL \u1|Equal0~8_combout\ : std_logic;
SIGNAL \u1|Equal0~3_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Equal0~4_combout\ : std_logic;
SIGNAL \u1|time_cnt[27]~87\ : std_logic;
SIGNAL \u1|time_cnt[28]~88_combout\ : std_logic;
SIGNAL \u1|time_cnt[28]~89\ : std_logic;
SIGNAL \u1|time_cnt[29]~90_combout\ : std_logic;
SIGNAL \u1|time_cnt[29]~91\ : std_logic;
SIGNAL \u1|time_cnt[30]~92_combout\ : std_logic;
SIGNAL \u1|time_cnt[30]~93\ : std_logic;
SIGNAL \u1|time_cnt[31]~94_combout\ : std_logic;
SIGNAL \u1|Equal0~9_combout\ : std_logic;
SIGNAL \u1|Equal0~6_combout\ : std_logic;
SIGNAL \u1|Equal0~5_combout\ : std_logic;
SIGNAL \u1|Equal0~7_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \u1|fpga_led_r~0_combout\ : std_logic;
SIGNAL \u1|fpga_led_r~q\ : std_logic;
SIGNAL \u3|wr_cnt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u3|order\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|rd_length_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|time_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u3|u0|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u2|send_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|rd_cnt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u2|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|send_byte_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|rst_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u2|receive_byte_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|wr_address_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3|rd_address_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3|rx_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|wr_length_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u2|receive_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|data_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|u1|lfsr_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|u1|lfsr_c\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_spi_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_spi_cs~input_o\ : std_logic;
SIGNAL \u0|ALT_INV_rst_n~1_combout\ : std_logic;
SIGNAL \u3|ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_fpga_led_r~q\ : std_logic;

BEGIN

ww_clk_25m <= clk_25m;
ww_spi_clk <= spi_clk;
ww_spi_cs <= spi_cs;
spi_miso <= ww_spi_miso;
ww_spi_mosi <= spi_mosi;
fpga_led <= ww_fpga_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \u2|receive_byte_r\(7) & \u2|receive_byte_r\(6) & \u2|receive_byte_r\(5) & \u2|receive_byte_r\(4) & \u2|receive_byte_r\(3) & \u2|receive_byte_r\(2) & 
\u2|receive_byte_r\(1) & \u2|receive_byte_r\(0));

\u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u3|wr_address_r\(9) & \u3|wr_address_r\(8) & \u3|wr_address_r\(7) & \u3|wr_address_r\(6) & \u3|wr_address_r\(5) & \u3|wr_address_r\(4) & \u3|wr_address_r\(3) & 
\u3|wr_address_r\(2) & \u3|wr_address_r\(1) & \u3|wr_address_r\(0));

\u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u3|rd_address_r\(9) & \u3|rd_address_r\(8) & \u3|rd_address_r\(7) & \u3|rd_address_r\(6) & \u3|rd_address_r\(5) & \u3|rd_address_r\(4) & \u3|rd_address_r\(3) & 
\u3|rd_address_r\(2) & \u3|rd_address_r\(1) & \u3|rd_address_r\(0));

\u3|u0|altsyncram_component|auto_generated|q_b\(0) <= \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u3|u0|altsyncram_component|auto_generated|q_b\(1) <= \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u3|u0|altsyncram_component|auto_generated|q_b\(2) <= \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u3|u0|altsyncram_component|auto_generated|q_b\(3) <= \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u3|u0|altsyncram_component|auto_generated|q_b\(4) <= \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u3|u0|altsyncram_component|auto_generated|q_b\(5) <= \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u3|u0|altsyncram_component|auto_generated|q_b\(6) <= \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u3|u0|altsyncram_component|auto_generated|q_b\(7) <= \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\u2|spi_tx_en_r~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|spi_tx_en_r~q\);

\clk_25m~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_25m~input_o\);

\u2|spi_rx_en_r~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u2|spi_rx_en_r~q\);

\spi_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \spi_clk~input_o\);
\ALT_INV_spi_clk~inputclkctrl_outclk\ <= NOT \spi_clk~inputclkctrl_outclk\;
\ALT_INV_spi_cs~input_o\ <= NOT \spi_cs~input_o\;
\u0|ALT_INV_rst_n~1_combout\ <= NOT \u0|rst_n~1_combout\;
\u3|ALT_INV_always0~0_combout\ <= NOT \u3|always0~0_combout\;
\u1|ALT_INV_fpga_led_r~q\ <= NOT \u1|fpga_led_r~q\;

-- Location: IOOBUF_X0_Y4_N23
\spi_miso~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|spi_miso_r~q\,
	devoe => ww_devoe,
	o => \spi_miso~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\fpga_led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|ALT_INV_fpga_led_r~q\,
	devoe => ww_devoe,
	o => \fpga_led~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\spi_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_clk,
	o => \spi_clk~input_o\);

-- Location: CLKCTRL_G4
\spi_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \spi_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \spi_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y4_N15
\spi_cs~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_cs,
	o => \spi_cs~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\clk_25m~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_25m,
	o => \clk_25m~input_o\);

-- Location: CLKCTRL_G3
\clk_25m~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_25m~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_25m~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y12_N18
\u0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~10_combout\ = (\u0|rst_cnt\(5) & (!\u0|Add0~9\)) # (!\u0|rst_cnt\(5) & ((\u0|Add0~9\) # (GND)))
-- \u0|Add0~11\ = CARRY((!\u0|Add0~9\) # (!\u0|rst_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_cnt\(5),
	datad => VCC,
	cin => \u0|Add0~9\,
	combout => \u0|Add0~10_combout\,
	cout => \u0|Add0~11\);

-- Location: LCCOMB_X13_Y12_N20
\u0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~12_combout\ = (\u0|rst_cnt\(6) & (\u0|Add0~11\ $ (GND))) # (!\u0|rst_cnt\(6) & (!\u0|Add0~11\ & VCC))
-- \u0|Add0~13\ = CARRY((\u0|rst_cnt\(6) & !\u0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_cnt\(6),
	datad => VCC,
	cin => \u0|Add0~11\,
	combout => \u0|Add0~12_combout\,
	cout => \u0|Add0~13\);

-- Location: FF_X13_Y12_N21
\u0|rst_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_cnt\(6));

-- Location: LCCOMB_X13_Y12_N22
\u0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~14_combout\ = \u0|Add0~13\ $ (\u0|rst_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|rst_cnt\(7),
	cin => \u0|Add0~13\,
	combout => \u0|Add0~14_combout\);

-- Location: FF_X13_Y12_N23
\u0|rst_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_cnt\(7));

-- Location: LCCOMB_X13_Y12_N2
\u0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~0_combout\ = (!\u0|rst_cnt\(6) & (!\u0|rst_cnt\(7) & \u0|rst_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_cnt\(6),
	datac => \u0|rst_cnt\(7),
	datad => \u0|rst_cnt\(4),
	combout => \u0|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y12_N8
\u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|rst_cnt\(0) $ (VCC)
-- \u0|Add0~1\ = CARRY(\u0|rst_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_cnt\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

-- Location: LCCOMB_X13_Y12_N26
\u0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~1_combout\ = (!\u0|rst_cnt\(0) & (!\u0|rst_cnt\(3) & (\u0|rst_cnt\(1) & \u0|rst_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_cnt\(0),
	datab => \u0|rst_cnt\(3),
	datac => \u0|rst_cnt\(1),
	datad => \u0|rst_cnt\(5),
	combout => \u0|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y12_N28
\u0|rst_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rst_cnt~0_combout\ = (\u0|Add0~0_combout\ & (((\u0|rst_cnt\(2)) # (!\u0|Equal0~1_combout\)) # (!\u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|rst_cnt\(2),
	datac => \u0|Add0~0_combout\,
	datad => \u0|Equal0~1_combout\,
	combout => \u0|rst_cnt~0_combout\);

-- Location: FF_X13_Y12_N29
\u0|rst_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u0|rst_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_cnt\(0));

-- Location: LCCOMB_X13_Y12_N10
\u0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~2_combout\ = (\u0|rst_cnt\(1) & (!\u0|Add0~1\)) # (!\u0|rst_cnt\(1) & ((\u0|Add0~1\) # (GND)))
-- \u0|Add0~3\ = CARRY((!\u0|Add0~1\) # (!\u0|rst_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_cnt\(1),
	datad => VCC,
	cin => \u0|Add0~1\,
	combout => \u0|Add0~2_combout\,
	cout => \u0|Add0~3\);

-- Location: FF_X13_Y12_N11
\u0|rst_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_cnt\(1));

-- Location: LCCOMB_X13_Y12_N12
\u0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~4_combout\ = (\u0|rst_cnt\(2) & (\u0|Add0~3\ $ (GND))) # (!\u0|rst_cnt\(2) & (!\u0|Add0~3\ & VCC))
-- \u0|Add0~5\ = CARRY((\u0|rst_cnt\(2) & !\u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_cnt\(2),
	datad => VCC,
	cin => \u0|Add0~3\,
	combout => \u0|Add0~4_combout\,
	cout => \u0|Add0~5\);

-- Location: FF_X13_Y12_N13
\u0|rst_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_cnt\(2));

-- Location: LCCOMB_X13_Y12_N14
\u0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~6_combout\ = (\u0|rst_cnt\(3) & (!\u0|Add0~5\)) # (!\u0|rst_cnt\(3) & ((\u0|Add0~5\) # (GND)))
-- \u0|Add0~7\ = CARRY((!\u0|Add0~5\) # (!\u0|rst_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_cnt\(3),
	datad => VCC,
	cin => \u0|Add0~5\,
	combout => \u0|Add0~6_combout\,
	cout => \u0|Add0~7\);

-- Location: FF_X13_Y12_N15
\u0|rst_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_cnt\(3));

-- Location: LCCOMB_X13_Y12_N16
\u0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~8_combout\ = (\u0|rst_cnt\(4) & (\u0|Add0~7\ $ (GND))) # (!\u0|rst_cnt\(4) & (!\u0|Add0~7\ & VCC))
-- \u0|Add0~9\ = CARRY((\u0|rst_cnt\(4) & !\u0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_cnt\(4),
	datad => VCC,
	cin => \u0|Add0~7\,
	combout => \u0|Add0~8_combout\,
	cout => \u0|Add0~9\);

-- Location: FF_X13_Y12_N17
\u0|rst_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_cnt\(4));

-- Location: FF_X13_Y12_N19
\u0|rst_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_cnt\(5));

-- Location: LCCOMB_X13_Y12_N4
\u0|rst_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rst_n~0_combout\ = (\u0|rst_cnt\(1) & ((\u0|rst_cnt\(3) $ (\u0|rst_cnt\(2))))) # (!\u0|rst_cnt\(1) & ((\u0|rst_cnt\(3)) # ((\u0|rst_cnt\(0) & \u0|rst_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|rst_cnt\(1),
	datab => \u0|rst_cnt\(0),
	datac => \u0|rst_cnt\(3),
	datad => \u0|rst_cnt\(2),
	combout => \u0|rst_n~0_combout\);

-- Location: LCCOMB_X13_Y12_N6
\u3|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|always0~0_combout\ = (\spi_cs~input_o\) # ((!\u0|rst_cnt\(5) & (\u0|rst_n~0_combout\ & \u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_cs~input_o\,
	datab => \u0|rst_cnt\(5),
	datac => \u0|rst_n~0_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u3|always0~0_combout\);

-- Location: LCCOMB_X14_Y9_N8
\u2|send_state[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|send_state[0]~2_combout\ = !\u2|send_state\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|send_state\(0),
	combout => \u2|send_state[0]~2_combout\);

-- Location: FF_X14_Y9_N9
\u2|send_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u2|send_state[0]~2_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|send_state\(0));

-- Location: LCCOMB_X14_Y9_N26
\u2|send_state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|send_state[1]~0_combout\ = \u2|send_state\(1) $ (\u2|send_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|send_state\(1),
	datad => \u2|send_state\(0),
	combout => \u2|send_state[1]~0_combout\);

-- Location: FF_X14_Y9_N27
\u2|send_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u2|send_state[1]~0_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|send_state\(1));

-- Location: LCCOMB_X14_Y9_N6
\u2|send_state[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|send_state[2]~1_combout\ = \u2|send_state\(2) $ (((\u2|send_state\(1) & \u2|send_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|send_state\(1),
	datac => \u2|send_state\(2),
	datad => \u2|send_state\(0),
	combout => \u2|send_state[2]~1_combout\);

-- Location: FF_X14_Y9_N7
\u2|send_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u2|send_state[2]~1_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|send_state\(2));

-- Location: LCCOMB_X13_Y10_N8
\u2|receive_state[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|receive_state[0]~0_combout\ = !\u2|receive_state\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|receive_state\(0),
	combout => \u2|receive_state[0]~0_combout\);

-- Location: FF_X13_Y10_N9
\u2|receive_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|receive_state[0]~0_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_state\(0));

-- Location: LCCOMB_X13_Y10_N10
\u2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux2~0_combout\ = \u2|receive_state\(1) $ (\u2|receive_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|receive_state\(1),
	datad => \u2|receive_state\(0),
	combout => \u2|Mux2~0_combout\);

-- Location: FF_X13_Y10_N11
\u2|receive_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|Mux2~0_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_state\(1));

-- Location: LCCOMB_X13_Y10_N30
\u2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux1~0_combout\ = \u2|receive_state\(2) $ (((\u2|receive_state\(0) & \u2|receive_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_state\(0),
	datac => \u2|receive_state\(2),
	datad => \u2|receive_state\(1),
	combout => \u2|Mux1~0_combout\);

-- Location: FF_X13_Y10_N31
\u2|receive_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|Mux1~0_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_state\(2));

-- Location: LCCOMB_X13_Y9_N10
\u2|spi_rx_en_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|spi_rx_en_r~0_combout\ = (\u2|receive_state\(1) & ((\u2|spi_rx_en_r~q\) # ((!\u2|receive_state\(2) & \u2|receive_state\(0))))) # (!\u2|receive_state\(1) & (!\u2|receive_state\(2) & (\u2|spi_rx_en_r~q\ & \u2|receive_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_state\(2),
	datab => \u2|receive_state\(1),
	datac => \u2|spi_rx_en_r~q\,
	datad => \u2|receive_state\(0),
	combout => \u2|spi_rx_en_r~0_combout\);

-- Location: LCCOMB_X13_Y9_N2
\u2|spi_rx_en_r~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|spi_rx_en_r~feeder_combout\ = \u2|spi_rx_en_r~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|spi_rx_en_r~0_combout\,
	combout => \u2|spi_rx_en_r~feeder_combout\);

-- Location: FF_X13_Y9_N3
\u2|spi_rx_en_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|spi_rx_en_r~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|spi_rx_en_r~q\);

-- Location: CLKCTRL_G2
\u2|spi_rx_en_r~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2|spi_rx_en_r~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|spi_rx_en_r~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y5_N22
\spi_mosi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_mosi,
	o => \spi_mosi~input_o\);

-- Location: FF_X13_Y9_N1
\u2|data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	asdata => \spi_mosi~input_o\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_in\(0));

-- Location: LCCOMB_X13_Y9_N26
\u2|data_in[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_in[1]~feeder_combout\ = \u2|data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data_in\(0),
	combout => \u2|data_in[1]~feeder_combout\);

-- Location: FF_X13_Y9_N27
\u2|data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|data_in[1]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_in\(1));

-- Location: LCCOMB_X13_Y10_N2
\u2|receive_byte_r[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|receive_byte_r[2]~feeder_combout\ = \u2|data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data_in\(1),
	combout => \u2|receive_byte_r[2]~feeder_combout\);

-- Location: LCCOMB_X13_Y10_N6
\u2|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Decoder0~0_combout\ = (\u2|receive_state\(2) & (\u2|receive_state\(1) & \u2|receive_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_state\(2),
	datab => \u2|receive_state\(1),
	datad => \u2|receive_state\(0),
	combout => \u2|Decoder0~0_combout\);

-- Location: FF_X13_Y10_N3
\u2|receive_byte_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|receive_byte_r[2]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_byte_r\(2));

-- Location: LCCOMB_X14_Y11_N18
\u3|order[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|order[2]~feeder_combout\ = \u2|receive_byte_r\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|receive_byte_r\(2),
	combout => \u3|order[2]~feeder_combout\);

-- Location: LCCOMB_X13_Y10_N20
\u2|receive_byte_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|receive_byte_r[1]~feeder_combout\ = \u2|data_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data_in\(0),
	combout => \u2|receive_byte_r[1]~feeder_combout\);

-- Location: FF_X13_Y10_N21
\u2|receive_byte_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|receive_byte_r[1]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_byte_r\(1));

-- Location: FF_X13_Y10_N7
\u2|receive_byte_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	asdata => \spi_mosi~input_o\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sload => VCC,
	ena => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_byte_r\(0));

-- Location: LCCOMB_X14_Y11_N8
\u3|order[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|order[2]~1_combout\ = (\u2|receive_byte_r\(2) & ((\u2|receive_byte_r\(0)) # (!\u2|receive_byte_r\(1)))) # (!\u2|receive_byte_r\(2) & (\u2|receive_byte_r\(1) $ (\u2|receive_byte_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(2),
	datac => \u2|receive_byte_r\(1),
	datad => \u2|receive_byte_r\(0),
	combout => \u3|order[2]~1_combout\);

-- Location: LCCOMB_X12_Y12_N8
\u3|rx_state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~23_combout\ = (\u2|receive_byte_r\(0) & (\u2|receive_byte_r\(1) & (\u3|order[2]~0_combout\ & \u2|receive_byte_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(0),
	datab => \u2|receive_byte_r\(1),
	datac => \u3|order[2]~0_combout\,
	datad => \u2|receive_byte_r\(2),
	combout => \u3|rx_state~23_combout\);

-- Location: LCCOMB_X12_Y12_N12
\u3|rx_state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~24_combout\ = (\u3|rx_state.rx_idle_state~2_combout\ & ((\u3|rx_state~23_combout\) # ((!\u3|rx_state.rx_judge_state~q\ & \u3|rx_state.rx_rd_add_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_judge_state~q\,
	datab => \u3|rx_state.rx_idle_state~2_combout\,
	datac => \u3|rx_state.rx_rd_add_state~q\,
	datad => \u3|rx_state~23_combout\,
	combout => \u3|rx_state~24_combout\);

-- Location: FF_X12_Y12_N13
\u3|rx_state.rx_rd_add_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rx_state~24_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rx_state.rx_rd_add_state~q\);

-- Location: LCCOMB_X12_Y12_N26
\u3|rx_state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~21_combout\ = (!\u2|receive_byte_r\(0) & (!\u2|receive_byte_r\(1) & (\u3|order[2]~0_combout\ & \u2|receive_byte_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(0),
	datab => \u2|receive_byte_r\(1),
	datac => \u3|order[2]~0_combout\,
	datad => \u2|receive_byte_r\(2),
	combout => \u3|rx_state~21_combout\);

-- Location: LCCOMB_X12_Y12_N6
\u3|rx_state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~22_combout\ = (\u3|rx_state.rx_idle_state~2_combout\ & ((\u3|rx_state~21_combout\) # ((!\u3|rx_state.rx_judge_state~q\ & \u3|rx_state.rx_wr_add_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_judge_state~q\,
	datab => \u3|rx_state.rx_idle_state~2_combout\,
	datac => \u3|rx_state.rx_wr_add_state~q\,
	datad => \u3|rx_state~21_combout\,
	combout => \u3|rx_state~22_combout\);

-- Location: FF_X12_Y12_N7
\u3|rx_state.rx_wr_add_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rx_state~22_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rx_state.rx_wr_add_state~q\);

-- Location: LCCOMB_X12_Y12_N24
\u3|rx_state.rx_idle_state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state.rx_idle_state~feeder_combout\ = \u3|rx_state.rx_idle_state~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|rx_state.rx_idle_state~2_combout\,
	combout => \u3|rx_state.rx_idle_state~feeder_combout\);

-- Location: FF_X12_Y12_N25
\u3|rx_state.rx_idle_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rx_state.rx_idle_state~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rx_state.rx_idle_state~q\);

-- Location: LCCOMB_X12_Y12_N4
\u3|rx_state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~27_combout\ = (!\u2|receive_byte_r\(0) & (\u2|receive_byte_r\(1) & (\u3|order[2]~0_combout\ & !\u2|receive_byte_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(0),
	datab => \u2|receive_byte_r\(1),
	datac => \u3|order[2]~0_combout\,
	datad => \u2|receive_byte_r\(2),
	combout => \u3|rx_state~27_combout\);

-- Location: LCCOMB_X12_Y12_N18
\u3|rx_state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~28_combout\ = (\u3|rx_state.rx_idle_state~2_combout\ & ((\u3|rx_state~27_combout\) # ((!\u3|rx_state.rx_judge_state~q\ & \u3|rx_state.rx_wr_length_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_judge_state~q\,
	datab => \u3|rx_state.rx_idle_state~2_combout\,
	datac => \u3|rx_state.rx_wr_length_state~q\,
	datad => \u3|rx_state~27_combout\,
	combout => \u3|rx_state~28_combout\);

-- Location: FF_X12_Y12_N19
\u3|rx_state.rx_wr_length_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rx_state~28_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rx_state.rx_wr_length_state~q\);

-- Location: LCCOMB_X12_Y12_N22
\u3|rx_state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~25_combout\ = (\u2|receive_byte_r\(0) & (!\u2|receive_byte_r\(1) & (\u3|order[2]~0_combout\ & \u2|receive_byte_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(0),
	datab => \u2|receive_byte_r\(1),
	datac => \u3|order[2]~0_combout\,
	datad => \u2|receive_byte_r\(2),
	combout => \u3|rx_state~25_combout\);

-- Location: LCCOMB_X12_Y12_N16
\u3|rx_state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~26_combout\ = (\u3|rx_state.rx_idle_state~2_combout\ & ((\u3|rx_state~25_combout\) # ((!\u3|rx_state.rx_judge_state~q\ & \u3|rx_state.rx_rd_ledgth_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_judge_state~q\,
	datab => \u3|rx_state.rx_idle_state~2_combout\,
	datac => \u3|rx_state.rx_rd_ledgth_state~q\,
	datad => \u3|rx_state~25_combout\,
	combout => \u3|rx_state~26_combout\);

-- Location: FF_X12_Y12_N17
\u3|rx_state.rx_rd_ledgth_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rx_state~26_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rx_state.rx_rd_ledgth_state~q\);

-- Location: LCCOMB_X12_Y12_N0
\u3|rx_state.rx_idle_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state.rx_idle_state~0_combout\ = (!\u3|rx_state.rx_wr_add_state~q\ & (\u3|rx_state.rx_idle_state~q\ & (!\u3|rx_state.rx_wr_length_state~q\ & !\u3|rx_state.rx_rd_ledgth_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_wr_add_state~q\,
	datab => \u3|rx_state.rx_idle_state~q\,
	datac => \u3|rx_state.rx_wr_length_state~q\,
	datad => \u3|rx_state.rx_rd_ledgth_state~q\,
	combout => \u3|rx_state.rx_idle_state~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
\u3|rx_state.rx_idle_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state.rx_idle_state~1_combout\ = (\u3|rx_state.rx_wr_add_state~q\ & (((\u3|rx_state.rx_wr_length_state~q\) # (\u3|rx_state.rx_rd_ledgth_state~q\)) # (!\u3|rx_state.rx_idle_state~q\))) # (!\u3|rx_state.rx_wr_add_state~q\ & 
-- ((\u3|rx_state.rx_idle_state~q\ & (\u3|rx_state.rx_wr_length_state~q\ & \u3|rx_state.rx_rd_ledgth_state~q\)) # (!\u3|rx_state.rx_idle_state~q\ & ((\u3|rx_state.rx_wr_length_state~q\) # (\u3|rx_state.rx_rd_ledgth_state~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_wr_add_state~q\,
	datab => \u3|rx_state.rx_idle_state~q\,
	datac => \u3|rx_state.rx_wr_length_state~q\,
	datad => \u3|rx_state.rx_rd_ledgth_state~q\,
	combout => \u3|rx_state.rx_idle_state~1_combout\);

-- Location: LCCOMB_X12_Y12_N28
\u3|rx_state.rx_idle_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state.rx_idle_state~2_combout\ = (\u3|rx_state.rx_rd_add_state~q\ & (!\u3|rx_state.rx_judge_state~q\ & (\u3|rx_state.rx_idle_state~0_combout\ & !\u3|rx_state.rx_idle_state~1_combout\))) # (!\u3|rx_state.rx_rd_add_state~q\ & 
-- ((\u3|rx_state.rx_judge_state~q\ & (\u3|rx_state.rx_idle_state~0_combout\ & !\u3|rx_state.rx_idle_state~1_combout\)) # (!\u3|rx_state.rx_judge_state~q\ & (\u3|rx_state.rx_idle_state~0_combout\ $ (!\u3|rx_state.rx_idle_state~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_rd_add_state~q\,
	datab => \u3|rx_state.rx_judge_state~q\,
	datac => \u3|rx_state.rx_idle_state~0_combout\,
	datad => \u3|rx_state.rx_idle_state~1_combout\,
	combout => \u3|rx_state.rx_idle_state~2_combout\);

-- Location: LCCOMB_X13_Y9_N12
\u2|data_in[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_in[2]~feeder_combout\ = \u2|data_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|data_in\(1),
	combout => \u2|data_in[2]~feeder_combout\);

-- Location: FF_X13_Y9_N13
\u2|data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|data_in[2]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_in\(2));

-- Location: LCCOMB_X13_Y10_N14
\u2|receive_byte_r[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|receive_byte_r[3]~feeder_combout\ = \u2|data_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|data_in\(2),
	combout => \u2|receive_byte_r[3]~feeder_combout\);

-- Location: FF_X13_Y10_N15
\u2|receive_byte_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|receive_byte_r[3]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_byte_r\(3));

-- Location: LCCOMB_X12_Y12_N14
\u3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|WideOr0~0_combout\ = (!\u2|receive_byte_r\(3) & (\u2|receive_byte_r\(2) $ (((!\u2|receive_byte_r\(0) & \u2|receive_byte_r\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(0),
	datab => \u2|receive_byte_r\(3),
	datac => \u2|receive_byte_r\(2),
	datad => \u2|receive_byte_r\(1),
	combout => \u3|WideOr0~0_combout\);

-- Location: FF_X13_Y10_N29
\u2|data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	asdata => \u2|data_in\(2),
	clrn => \u3|ALT_INV_always0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_in\(3));

-- Location: FF_X14_Y10_N1
\u2|data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	asdata => \u2|data_in\(3),
	clrn => \u3|ALT_INV_always0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_in\(4));

-- Location: FF_X13_Y10_N17
\u2|data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	asdata => \u2|data_in\(4),
	clrn => \u3|ALT_INV_always0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_in\(5));

-- Location: LCCOMB_X13_Y10_N26
\u2|receive_byte_r[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|receive_byte_r[6]~feeder_combout\ = \u2|data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data_in\(5),
	combout => \u2|receive_byte_r[6]~feeder_combout\);

-- Location: FF_X13_Y10_N27
\u2|receive_byte_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|receive_byte_r[6]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_byte_r\(6));

-- Location: LCCOMB_X13_Y10_N24
\u2|receive_byte_r[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|receive_byte_r[5]~feeder_combout\ = \u2|data_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data_in\(4),
	combout => \u2|receive_byte_r[5]~feeder_combout\);

-- Location: FF_X13_Y10_N25
\u2|receive_byte_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|receive_byte_r[5]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_byte_r\(5));

-- Location: LCCOMB_X13_Y9_N18
\u2|data_in[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|data_in[6]~feeder_combout\ = \u2|data_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|data_in\(5),
	combout => \u2|data_in[6]~feeder_combout\);

-- Location: FF_X13_Y9_N19
\u2|data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|data_in[6]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_in\(6));

-- Location: LCCOMB_X13_Y10_N4
\u2|receive_byte_r[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|receive_byte_r[7]~feeder_combout\ = \u2|data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|data_in\(6),
	combout => \u2|receive_byte_r[7]~feeder_combout\);

-- Location: FF_X13_Y10_N5
\u2|receive_byte_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|receive_byte_r[7]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_byte_r\(7));

-- Location: LCCOMB_X13_Y10_N18
\u2|receive_byte_r[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|receive_byte_r[4]~feeder_combout\ = \u2|data_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|data_in\(3),
	combout => \u2|receive_byte_r[4]~feeder_combout\);

-- Location: FF_X13_Y10_N19
\u2|receive_byte_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \spi_clk~inputclkctrl_outclk\,
	d => \u2|receive_byte_r[4]~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|receive_byte_r\(4));

-- Location: LCCOMB_X13_Y10_N0
\u3|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal6~0_combout\ = (!\u2|receive_byte_r\(6) & (!\u2|receive_byte_r\(5) & (!\u2|receive_byte_r\(7) & !\u2|receive_byte_r\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(6),
	datab => \u2|receive_byte_r\(5),
	datac => \u2|receive_byte_r\(7),
	datad => \u2|receive_byte_r\(4),
	combout => \u3|Equal6~0_combout\);

-- Location: LCCOMB_X12_Y12_N30
\u3|rx_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~19_combout\ = (\u3|rx_state.rx_judge_state~q\ & (((\u3|WideOr0~0_combout\ & \u3|Equal6~0_combout\)))) # (!\u3|rx_state.rx_judge_state~q\ & (\u3|rx_state.rx_idle_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_idle_state~q\,
	datab => \u3|rx_state.rx_judge_state~q\,
	datac => \u3|WideOr0~0_combout\,
	datad => \u3|Equal6~0_combout\,
	combout => \u3|rx_state~19_combout\);

-- Location: LCCOMB_X12_Y12_N20
\u3|rx_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_state~20_combout\ = (\u3|rx_state.rx_idle_state~2_combout\ & !\u3|rx_state~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_state.rx_idle_state~2_combout\,
	datad => \u3|rx_state~19_combout\,
	combout => \u3|rx_state~20_combout\);

-- Location: FF_X12_Y12_N21
\u3|rx_state.rx_judge_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rx_state~20_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rx_state.rx_judge_state~q\);

-- Location: LCCOMB_X13_Y10_N28
\u3|order[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|order[2]~0_combout\ = (\u3|rx_state.rx_judge_state~q\ & (!\u2|receive_byte_r\(3) & \u3|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_judge_state~q\,
	datab => \u2|receive_byte_r\(3),
	datad => \u3|Equal6~0_combout\,
	combout => \u3|order[2]~0_combout\);

-- Location: LCCOMB_X14_Y11_N10
\u3|order[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|order[2]~2_combout\ = (!\u3|always0~0_combout\ & (\u3|order[2]~1_combout\ & \u3|order[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|always0~0_combout\,
	datac => \u3|order[2]~1_combout\,
	datad => \u3|order[2]~0_combout\,
	combout => \u3|order[2]~2_combout\);

-- Location: FF_X14_Y11_N19
\u3|order[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|order[2]~feeder_combout\,
	ena => \u3|order[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|order\(2));

-- Location: LCCOMB_X14_Y11_N4
\u3|order[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|order[1]~feeder_combout\ = \u2|receive_byte_r\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(1),
	combout => \u3|order[1]~feeder_combout\);

-- Location: FF_X14_Y11_N5
\u3|order[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|order[1]~feeder_combout\,
	ena => \u3|order[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|order\(1));

-- Location: LCCOMB_X17_Y12_N6
\u3|wr_cnt[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[0]~12_combout\ = \u3|wr_cnt\(0) $ (VCC)
-- \u3|wr_cnt[0]~13\ = CARRY(\u3|wr_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_cnt\(0),
	datad => VCC,
	combout => \u3|wr_cnt[0]~12_combout\,
	cout => \u3|wr_cnt[0]~13\);

-- Location: LCCOMB_X16_Y11_N0
\u3|rx_cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_cnt[1]~0_combout\ = (\u3|rx_state.rx_rd_add_state~q\) # (\u3|rx_state.rx_wr_add_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|rx_state.rx_rd_add_state~q\,
	datad => \u3|rx_state.rx_wr_add_state~q\,
	combout => \u3|rx_cnt[1]~0_combout\);

-- Location: LCCOMB_X16_Y11_N30
\u3|rx_cnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_cnt[0]~3_combout\ = (\u3|rx_cnt\(1) & (!\u3|rx_state.rx_rd_add_state~q\ & !\u3|rx_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_cnt\(1),
	datac => \u3|rx_state.rx_rd_add_state~q\,
	datad => \u3|rx_cnt\(0),
	combout => \u3|rx_cnt[0]~3_combout\);

-- Location: LCCOMB_X16_Y11_N6
\u3|rx_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_cnt[0]~1_combout\ = (\u3|rx_cnt\(1)) # ((\u3|rx_cnt\(0)) # ((!\u3|rx_state.rx_rd_ledgth_state~q\ & !\u3|rx_state.rx_wr_length_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(1),
	datab => \u3|rx_state.rx_rd_ledgth_state~q\,
	datac => \u3|rx_state.rx_wr_length_state~q\,
	datad => \u3|rx_cnt\(0),
	combout => \u3|rx_cnt[0]~1_combout\);

-- Location: LCCOMB_X16_Y11_N14
\u3|rd_cnt[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[11]~12_combout\ = (\u3|rx_cnt\(1) & (\u3|rx_state.rx_rd_add_state~q\ & !\u3|rx_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_cnt\(1),
	datac => \u3|rx_state.rx_rd_add_state~q\,
	datad => \u3|rx_cnt\(0),
	combout => \u3|rd_cnt[11]~12_combout\);

-- Location: LCCOMB_X16_Y13_N6
\u3|rd_length_r[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_length_r[0]~0_combout\ = (\u3|rx_cnt\(0) & (!\u3|rx_cnt\(1) & (\u3|rx_state.rx_rd_ledgth_state~q\ & !\u3|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(0),
	datab => \u3|rx_cnt\(1),
	datac => \u3|rx_state.rx_rd_ledgth_state~q\,
	datad => \u3|always0~0_combout\,
	combout => \u3|rd_length_r[0]~0_combout\);

-- Location: FF_X17_Y13_N5
\u3|rd_length_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(2),
	sload => VCC,
	ena => \u3|rd_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(2));

-- Location: FF_X17_Y13_N3
\u3|rd_length_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(1),
	sload => VCC,
	ena => \u3|rd_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(1));

-- Location: FF_X17_Y13_N1
\u3|rd_length_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(0),
	sload => VCC,
	ena => \u3|rd_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(0));

-- Location: LCCOMB_X17_Y13_N0
\u3|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~0_combout\ = \u3|rd_length_r\(0) $ (VCC)
-- \u3|Add4~1\ = CARRY(\u3|rd_length_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(0),
	datad => VCC,
	combout => \u3|Add4~0_combout\,
	cout => \u3|Add4~1\);

-- Location: LCCOMB_X17_Y13_N2
\u3|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~2_combout\ = (\u3|rd_length_r\(1) & (\u3|Add4~1\ & VCC)) # (!\u3|rd_length_r\(1) & (!\u3|Add4~1\))
-- \u3|Add4~3\ = CARRY((!\u3|rd_length_r\(1) & !\u3|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(1),
	datad => VCC,
	cin => \u3|Add4~1\,
	combout => \u3|Add4~2_combout\,
	cout => \u3|Add4~3\);

-- Location: LCCOMB_X17_Y13_N4
\u3|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~4_combout\ = (\u3|rd_length_r\(2) & ((GND) # (!\u3|Add4~3\))) # (!\u3|rd_length_r\(2) & (\u3|Add4~3\ $ (GND)))
-- \u3|Add4~5\ = CARRY((\u3|rd_length_r\(2)) # (!\u3|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(2),
	datad => VCC,
	cin => \u3|Add4~3\,
	combout => \u3|Add4~4_combout\,
	cout => \u3|Add4~5\);

-- Location: LCCOMB_X17_Y11_N6
\u3|rd_cnt[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[0]~13_combout\ = \u3|rd_cnt\(0) $ (VCC)
-- \u3|rd_cnt[0]~14\ = CARRY(\u3|rd_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(0),
	datad => VCC,
	combout => \u3|rd_cnt[0]~13_combout\,
	cout => \u3|rd_cnt[0]~14\);

-- Location: LCCOMB_X17_Y11_N12
\u3|rd_cnt[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[3]~19_combout\ = (\u3|rd_cnt\(3) & (!\u3|rd_cnt[2]~18\)) # (!\u3|rd_cnt\(3) & ((\u3|rd_cnt[2]~18\) # (GND)))
-- \u3|rd_cnt[3]~20\ = CARRY((!\u3|rd_cnt[2]~18\) # (!\u3|rd_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(3),
	datad => VCC,
	cin => \u3|rd_cnt[2]~18\,
	combout => \u3|rd_cnt[3]~19_combout\,
	cout => \u3|rd_cnt[3]~20\);

-- Location: LCCOMB_X17_Y11_N14
\u3|rd_cnt[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[4]~21_combout\ = (\u3|rd_cnt\(4) & (\u3|rd_cnt[3]~20\ $ (GND))) # (!\u3|rd_cnt\(4) & (!\u3|rd_cnt[3]~20\ & VCC))
-- \u3|rd_cnt[4]~22\ = CARRY((\u3|rd_cnt\(4) & !\u3|rd_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_cnt\(4),
	datad => VCC,
	cin => \u3|rd_cnt[3]~20\,
	combout => \u3|rd_cnt[4]~21_combout\,
	cout => \u3|rd_cnt[4]~22\);

-- Location: FF_X17_Y11_N15
\u3|rd_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[4]~21_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(4));

-- Location: LCCOMB_X17_Y11_N16
\u3|rd_cnt[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[5]~23_combout\ = (\u3|rd_cnt\(5) & (!\u3|rd_cnt[4]~22\)) # (!\u3|rd_cnt\(5) & ((\u3|rd_cnt[4]~22\) # (GND)))
-- \u3|rd_cnt[5]~24\ = CARRY((!\u3|rd_cnt[4]~22\) # (!\u3|rd_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_cnt\(5),
	datad => VCC,
	cin => \u3|rd_cnt[4]~22\,
	combout => \u3|rd_cnt[5]~23_combout\,
	cout => \u3|rd_cnt[5]~24\);

-- Location: FF_X17_Y11_N17
\u3|rd_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[5]~23_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(5));

-- Location: LCCOMB_X17_Y11_N18
\u3|rd_cnt[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[6]~25_combout\ = (\u3|rd_cnt\(6) & (\u3|rd_cnt[5]~24\ $ (GND))) # (!\u3|rd_cnt\(6) & (!\u3|rd_cnt[5]~24\ & VCC))
-- \u3|rd_cnt[6]~26\ = CARRY((\u3|rd_cnt\(6) & !\u3|rd_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_cnt\(6),
	datad => VCC,
	cin => \u3|rd_cnt[5]~24\,
	combout => \u3|rd_cnt[6]~25_combout\,
	cout => \u3|rd_cnt[6]~26\);

-- Location: FF_X17_Y11_N19
\u3|rd_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[6]~25_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(6));

-- Location: LCCOMB_X17_Y11_N20
\u3|rd_cnt[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[7]~27_combout\ = (\u3|rd_cnt\(7) & (!\u3|rd_cnt[6]~26\)) # (!\u3|rd_cnt\(7) & ((\u3|rd_cnt[6]~26\) # (GND)))
-- \u3|rd_cnt[7]~28\ = CARRY((!\u3|rd_cnt[6]~26\) # (!\u3|rd_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_cnt\(7),
	datad => VCC,
	cin => \u3|rd_cnt[6]~26\,
	combout => \u3|rd_cnt[7]~27_combout\,
	cout => \u3|rd_cnt[7]~28\);

-- Location: FF_X17_Y11_N21
\u3|rd_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[7]~27_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(7));

-- Location: LCCOMB_X17_Y11_N22
\u3|rd_cnt[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[8]~29_combout\ = (\u3|rd_cnt\(8) & (\u3|rd_cnt[7]~28\ $ (GND))) # (!\u3|rd_cnt\(8) & (!\u3|rd_cnt[7]~28\ & VCC))
-- \u3|rd_cnt[8]~30\ = CARRY((\u3|rd_cnt\(8) & !\u3|rd_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(8),
	datad => VCC,
	cin => \u3|rd_cnt[7]~28\,
	combout => \u3|rd_cnt[8]~29_combout\,
	cout => \u3|rd_cnt[8]~30\);

-- Location: FF_X17_Y11_N23
\u3|rd_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[8]~29_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(8));

-- Location: LCCOMB_X17_Y11_N24
\u3|rd_cnt[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[9]~31_combout\ = (\u3|rd_cnt\(9) & (!\u3|rd_cnt[8]~30\)) # (!\u3|rd_cnt\(9) & ((\u3|rd_cnt[8]~30\) # (GND)))
-- \u3|rd_cnt[9]~32\ = CARRY((!\u3|rd_cnt[8]~30\) # (!\u3|rd_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_cnt\(9),
	datad => VCC,
	cin => \u3|rd_cnt[8]~30\,
	combout => \u3|rd_cnt[9]~31_combout\,
	cout => \u3|rd_cnt[9]~32\);

-- Location: FF_X17_Y11_N25
\u3|rd_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[9]~31_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(9));

-- Location: LCCOMB_X17_Y11_N26
\u3|rd_cnt[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[10]~33_combout\ = (\u3|rd_cnt\(10) & (\u3|rd_cnt[9]~32\ $ (GND))) # (!\u3|rd_cnt\(10) & (!\u3|rd_cnt[9]~32\ & VCC))
-- \u3|rd_cnt[10]~34\ = CARRY((\u3|rd_cnt\(10) & !\u3|rd_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(10),
	datad => VCC,
	cin => \u3|rd_cnt[9]~32\,
	combout => \u3|rd_cnt[10]~33_combout\,
	cout => \u3|rd_cnt[10]~34\);

-- Location: FF_X17_Y11_N27
\u3|rd_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[10]~33_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(10));

-- Location: LCCOMB_X17_Y11_N28
\u3|rd_cnt[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[11]~35_combout\ = \u3|rd_cnt\(11) $ (\u3|rd_cnt[10]~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_cnt\(11),
	cin => \u3|rd_cnt[10]~34\,
	combout => \u3|rd_cnt[11]~35_combout\);

-- Location: FF_X17_Y11_N29
\u3|rd_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[11]~35_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(11));

-- Location: LCCOMB_X16_Y13_N24
\u3|rd_length_r[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_length_r[8]~1_combout\ = (!\u3|rx_cnt\(0) & (!\spi_cs~input_o\ & (\u3|rx_state.rx_rd_ledgth_state~q\ & !\u3|rx_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(0),
	datab => \spi_cs~input_o\,
	datac => \u3|rx_state.rx_rd_ledgth_state~q\,
	datad => \u3|rx_cnt\(1),
	combout => \u3|rd_length_r[8]~1_combout\);

-- Location: LCCOMB_X16_Y13_N22
\u3|rd_length_r[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_length_r[8]~2_combout\ = (\u3|rd_length_r[8]~1_combout\ & (((\u0|rst_cnt\(5)) # (!\u0|rst_n~0_combout\)) # (!\u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u3|rd_length_r[8]~1_combout\,
	datac => \u0|rst_n~0_combout\,
	datad => \u0|rst_cnt\(5),
	combout => \u3|rd_length_r[8]~2_combout\);

-- Location: FF_X17_Y13_N21
\u3|rd_length_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(2),
	sload => VCC,
	ena => \u3|rd_length_r[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(10));

-- Location: FF_X17_Y13_N19
\u3|rd_length_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(1),
	sload => VCC,
	ena => \u3|rd_length_r[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(9));

-- Location: FF_X17_Y13_N17
\u3|rd_length_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(0),
	sload => VCC,
	ena => \u3|rd_length_r[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(8));

-- Location: FF_X17_Y13_N15
\u3|rd_length_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(7),
	sload => VCC,
	ena => \u3|rd_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(7));

-- Location: FF_X17_Y13_N13
\u3|rd_length_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(6),
	sload => VCC,
	ena => \u3|rd_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(6));

-- Location: FF_X17_Y13_N11
\u3|rd_length_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(5),
	sload => VCC,
	ena => \u3|rd_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(5));

-- Location: FF_X17_Y13_N9
\u3|rd_length_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(4),
	sload => VCC,
	ena => \u3|rd_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(4));

-- Location: FF_X17_Y13_N7
\u3|rd_length_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(3),
	sload => VCC,
	ena => \u3|rd_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(3));

-- Location: LCCOMB_X17_Y13_N6
\u3|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~6_combout\ = (\u3|rd_length_r\(3) & (\u3|Add4~5\ & VCC)) # (!\u3|rd_length_r\(3) & (!\u3|Add4~5\))
-- \u3|Add4~7\ = CARRY((!\u3|rd_length_r\(3) & !\u3|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_length_r\(3),
	datad => VCC,
	cin => \u3|Add4~5\,
	combout => \u3|Add4~6_combout\,
	cout => \u3|Add4~7\);

-- Location: LCCOMB_X17_Y13_N8
\u3|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~8_combout\ = (\u3|rd_length_r\(4) & ((GND) # (!\u3|Add4~7\))) # (!\u3|rd_length_r\(4) & (\u3|Add4~7\ $ (GND)))
-- \u3|Add4~9\ = CARRY((\u3|rd_length_r\(4)) # (!\u3|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(4),
	datad => VCC,
	cin => \u3|Add4~7\,
	combout => \u3|Add4~8_combout\,
	cout => \u3|Add4~9\);

-- Location: LCCOMB_X17_Y13_N10
\u3|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~10_combout\ = (\u3|rd_length_r\(5) & (\u3|Add4~9\ & VCC)) # (!\u3|rd_length_r\(5) & (!\u3|Add4~9\))
-- \u3|Add4~11\ = CARRY((!\u3|rd_length_r\(5) & !\u3|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_length_r\(5),
	datad => VCC,
	cin => \u3|Add4~9\,
	combout => \u3|Add4~10_combout\,
	cout => \u3|Add4~11\);

-- Location: LCCOMB_X17_Y13_N12
\u3|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~12_combout\ = (\u3|rd_length_r\(6) & ((GND) # (!\u3|Add4~11\))) # (!\u3|rd_length_r\(6) & (\u3|Add4~11\ $ (GND)))
-- \u3|Add4~13\ = CARRY((\u3|rd_length_r\(6)) # (!\u3|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_length_r\(6),
	datad => VCC,
	cin => \u3|Add4~11\,
	combout => \u3|Add4~12_combout\,
	cout => \u3|Add4~13\);

-- Location: LCCOMB_X17_Y13_N14
\u3|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~14_combout\ = (\u3|rd_length_r\(7) & (\u3|Add4~13\ & VCC)) # (!\u3|rd_length_r\(7) & (!\u3|Add4~13\))
-- \u3|Add4~15\ = CARRY((!\u3|rd_length_r\(7) & !\u3|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(7),
	datad => VCC,
	cin => \u3|Add4~13\,
	combout => \u3|Add4~14_combout\,
	cout => \u3|Add4~15\);

-- Location: LCCOMB_X17_Y13_N16
\u3|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~16_combout\ = (\u3|rd_length_r\(8) & ((GND) # (!\u3|Add4~15\))) # (!\u3|rd_length_r\(8) & (\u3|Add4~15\ $ (GND)))
-- \u3|Add4~17\ = CARRY((\u3|rd_length_r\(8)) # (!\u3|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(8),
	datad => VCC,
	cin => \u3|Add4~15\,
	combout => \u3|Add4~16_combout\,
	cout => \u3|Add4~17\);

-- Location: LCCOMB_X17_Y13_N18
\u3|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~18_combout\ = (\u3|rd_length_r\(9) & (\u3|Add4~17\ & VCC)) # (!\u3|rd_length_r\(9) & (!\u3|Add4~17\))
-- \u3|Add4~19\ = CARRY((!\u3|rd_length_r\(9) & !\u3|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(9),
	datad => VCC,
	cin => \u3|Add4~17\,
	combout => \u3|Add4~18_combout\,
	cout => \u3|Add4~19\);

-- Location: LCCOMB_X17_Y13_N20
\u3|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~20_combout\ = (\u3|rd_length_r\(10) & ((GND) # (!\u3|Add4~19\))) # (!\u3|rd_length_r\(10) & (\u3|Add4~19\ $ (GND)))
-- \u3|Add4~21\ = CARRY((\u3|rd_length_r\(10)) # (!\u3|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(10),
	datad => VCC,
	cin => \u3|Add4~19\,
	combout => \u3|Add4~20_combout\,
	cout => \u3|Add4~21\);

-- Location: FF_X17_Y13_N23
\u3|rd_length_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(3),
	sload => VCC,
	ena => \u3|rd_length_r[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(11));

-- Location: LCCOMB_X17_Y13_N22
\u3|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~22_combout\ = (\u3|rd_length_r\(11) & (\u3|Add4~21\ & VCC)) # (!\u3|rd_length_r\(11) & (!\u3|Add4~21\))
-- \u3|Add4~23\ = CARRY((!\u3|rd_length_r\(11) & !\u3|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_length_r\(11),
	datad => VCC,
	cin => \u3|Add4~21\,
	combout => \u3|Add4~22_combout\,
	cout => \u3|Add4~23\);

-- Location: LCCOMB_X16_Y13_N10
\u3|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~6_combout\ = (\u3|rd_cnt\(11) & (\u3|Add4~22_combout\ & (\u3|rd_cnt\(10) $ (!\u3|Add4~20_combout\)))) # (!\u3|rd_cnt\(11) & (!\u3|Add4~22_combout\ & (\u3|rd_cnt\(10) $ (!\u3|Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(11),
	datab => \u3|rd_cnt\(10),
	datac => \u3|Add4~20_combout\,
	datad => \u3|Add4~22_combout\,
	combout => \u3|Equal3~6_combout\);

-- Location: LCCOMB_X17_Y11_N4
\u3|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~5_combout\ = (\u3|rd_cnt\(8) & (\u3|Add4~16_combout\ & (\u3|Add4~18_combout\ $ (!\u3|rd_cnt\(9))))) # (!\u3|rd_cnt\(8) & (!\u3|Add4~16_combout\ & (\u3|Add4~18_combout\ $ (!\u3|rd_cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(8),
	datab => \u3|Add4~16_combout\,
	datac => \u3|Add4~18_combout\,
	datad => \u3|rd_cnt\(9),
	combout => \u3|Equal3~5_combout\);

-- Location: FF_X17_Y13_N25
\u3|rd_length_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(4),
	sload => VCC,
	ena => \u3|rd_length_r[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(12));

-- Location: LCCOMB_X17_Y13_N24
\u3|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~24_combout\ = (\u3|rd_length_r\(12) & ((GND) # (!\u3|Add4~23\))) # (!\u3|rd_length_r\(12) & (\u3|Add4~23\ $ (GND)))
-- \u3|Add4~25\ = CARRY((\u3|rd_length_r\(12)) # (!\u3|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(12),
	datad => VCC,
	cin => \u3|Add4~23\,
	combout => \u3|Add4~24_combout\,
	cout => \u3|Add4~25\);

-- Location: FF_X17_Y13_N27
\u3|rd_length_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(5),
	sload => VCC,
	ena => \u3|rd_length_r[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(13));

-- Location: LCCOMB_X17_Y13_N26
\u3|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~26_combout\ = (\u3|rd_length_r\(13) & (\u3|Add4~25\ & VCC)) # (!\u3|rd_length_r\(13) & (!\u3|Add4~25\))
-- \u3|Add4~27\ = CARRY((!\u3|rd_length_r\(13) & !\u3|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_length_r\(13),
	datad => VCC,
	cin => \u3|Add4~25\,
	combout => \u3|Add4~26_combout\,
	cout => \u3|Add4~27\);

-- Location: FF_X17_Y13_N31
\u3|rd_length_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(7),
	sload => VCC,
	ena => \u3|rd_length_r[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(15));

-- Location: FF_X17_Y13_N29
\u3|rd_length_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(6),
	sload => VCC,
	ena => \u3|rd_length_r[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_length_r\(14));

-- Location: LCCOMB_X17_Y13_N28
\u3|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~28_combout\ = (\u3|rd_length_r\(14) & ((GND) # (!\u3|Add4~27\))) # (!\u3|rd_length_r\(14) & (\u3|Add4~27\ $ (GND)))
-- \u3|Add4~29\ = CARRY((\u3|rd_length_r\(14)) # (!\u3|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_length_r\(14),
	datad => VCC,
	cin => \u3|Add4~27\,
	combout => \u3|Add4~28_combout\,
	cout => \u3|Add4~29\);

-- Location: LCCOMB_X17_Y13_N30
\u3|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add4~30_combout\ = \u3|rd_length_r\(15) $ (!\u3|Add4~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_length_r\(15),
	cin => \u3|Add4~29\,
	combout => \u3|Add4~30_combout\);

-- Location: LCCOMB_X16_Y13_N0
\u3|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~7_combout\ = (!\u3|Add4~24_combout\ & (!\u3|Add4~26_combout\ & (!\u3|Add4~30_combout\ & !\u3|Add4~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add4~24_combout\,
	datab => \u3|Add4~26_combout\,
	datac => \u3|Add4~30_combout\,
	datad => \u3|Add4~28_combout\,
	combout => \u3|Equal3~7_combout\);

-- Location: LCCOMB_X17_Y11_N30
\u3|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~8_combout\ = (\u3|Equal3~6_combout\ & (\u3|Equal3~5_combout\ & (\u3|Equal3~4_combout\ & \u3|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal3~6_combout\,
	datab => \u3|Equal3~5_combout\,
	datac => \u3|Equal3~4_combout\,
	datad => \u3|Equal3~7_combout\,
	combout => \u3|Equal3~8_combout\);

-- Location: FF_X17_Y11_N7
\u3|rd_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[0]~13_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(0));

-- Location: LCCOMB_X17_Y11_N8
\u3|rd_cnt[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[1]~15_combout\ = (\u3|rd_cnt\(1) & (!\u3|rd_cnt[0]~14\)) # (!\u3|rd_cnt\(1) & ((\u3|rd_cnt[0]~14\) # (GND)))
-- \u3|rd_cnt[1]~16\ = CARRY((!\u3|rd_cnt[0]~14\) # (!\u3|rd_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_cnt\(1),
	datad => VCC,
	cin => \u3|rd_cnt[0]~14\,
	combout => \u3|rd_cnt[1]~15_combout\,
	cout => \u3|rd_cnt[1]~16\);

-- Location: FF_X17_Y11_N9
\u3|rd_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[1]~15_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(1));

-- Location: LCCOMB_X17_Y11_N10
\u3|rd_cnt[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_cnt[2]~17_combout\ = (\u3|rd_cnt\(2) & (\u3|rd_cnt[1]~16\ $ (GND))) # (!\u3|rd_cnt\(2) & (!\u3|rd_cnt[1]~16\ & VCC))
-- \u3|rd_cnt[2]~18\ = CARRY((\u3|rd_cnt\(2) & !\u3|rd_cnt[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(2),
	datad => VCC,
	cin => \u3|rd_cnt[1]~16\,
	combout => \u3|rd_cnt[2]~17_combout\,
	cout => \u3|rd_cnt[2]~18\);

-- Location: FF_X17_Y11_N11
\u3|rd_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[2]~17_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(2));

-- Location: FF_X17_Y11_N13
\u3|rd_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_cnt[3]~19_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal3~8_combout\,
	ena => \u3|rd_cnt[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_cnt\(3));

-- Location: LCCOMB_X16_Y13_N30
\u3|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~1_combout\ = (\u3|Add4~4_combout\ & (\u3|rd_cnt\(2) & (\u3|rd_cnt\(3) $ (!\u3|Add4~6_combout\)))) # (!\u3|Add4~4_combout\ & (!\u3|rd_cnt\(2) & (\u3|rd_cnt\(3) $ (!\u3|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add4~4_combout\,
	datab => \u3|rd_cnt\(3),
	datac => \u3|rd_cnt\(2),
	datad => \u3|Add4~6_combout\,
	combout => \u3|Equal3~1_combout\);

-- Location: LCCOMB_X16_Y13_N28
\u3|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~0_combout\ = (\u3|rd_cnt\(1) & (\u3|Add4~2_combout\ & (\u3|rd_cnt\(0) $ (!\u3|Add4~0_combout\)))) # (!\u3|rd_cnt\(1) & (!\u3|Add4~2_combout\ & (\u3|rd_cnt\(0) $ (!\u3|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(1),
	datab => \u3|rd_cnt\(0),
	datac => \u3|Add4~0_combout\,
	datad => \u3|Add4~2_combout\,
	combout => \u3|Equal3~0_combout\);

-- Location: LCCOMB_X16_Y13_N4
\u3|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~2_combout\ = (\u3|rd_cnt\(5) & (\u3|Add4~10_combout\ & (\u3|Add4~8_combout\ $ (!\u3|rd_cnt\(4))))) # (!\u3|rd_cnt\(5) & (!\u3|Add4~10_combout\ & (\u3|Add4~8_combout\ $ (!\u3|rd_cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(5),
	datab => \u3|Add4~8_combout\,
	datac => \u3|Add4~10_combout\,
	datad => \u3|rd_cnt\(4),
	combout => \u3|Equal3~2_combout\);

-- Location: LCCOMB_X16_Y13_N18
\u3|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~3_combout\ = (\u3|rd_cnt\(7) & (\u3|Add4~14_combout\ & (\u3|Add4~12_combout\ $ (!\u3|rd_cnt\(6))))) # (!\u3|rd_cnt\(7) & (!\u3|Add4~14_combout\ & (\u3|Add4~12_combout\ $ (!\u3|rd_cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_cnt\(7),
	datab => \u3|Add4~12_combout\,
	datac => \u3|Add4~14_combout\,
	datad => \u3|rd_cnt\(6),
	combout => \u3|Equal3~3_combout\);

-- Location: LCCOMB_X16_Y13_N12
\u3|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~4_combout\ = (\u3|Equal3~1_combout\ & (\u3|Equal3~0_combout\ & (\u3|Equal3~2_combout\ & \u3|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal3~1_combout\,
	datab => \u3|Equal3~0_combout\,
	datac => \u3|Equal3~2_combout\,
	datad => \u3|Equal3~3_combout\,
	combout => \u3|Equal3~4_combout\);

-- Location: LCCOMB_X17_Y11_N0
\u3|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~9_combout\ = (!\u3|Add4~24_combout\ & (\u3|Equal3~5_combout\ & !\u3|Add4~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add4~24_combout\,
	datac => \u3|Equal3~5_combout\,
	datad => \u3|Add4~26_combout\,
	combout => \u3|Equal3~9_combout\);

-- Location: LCCOMB_X17_Y11_N2
\u3|Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal3~10_combout\ = (!\u3|Add4~28_combout\ & (!\u3|Add4~30_combout\ & (\u3|Equal3~6_combout\ & \u3|Equal3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add4~28_combout\,
	datab => \u3|Add4~30_combout\,
	datac => \u3|Equal3~6_combout\,
	datad => \u3|Equal3~9_combout\,
	combout => \u3|Equal3~10_combout\);

-- Location: LCCOMB_X16_Y11_N10
\u3|rx_cnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_cnt[0]~2_combout\ = ((\u3|rd_cnt[11]~12_combout\ & ((!\u3|Equal3~10_combout\) # (!\u3|Equal3~4_combout\)))) # (!\u3|rx_cnt[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt[1]~0_combout\,
	datab => \u3|rd_cnt[11]~12_combout\,
	datac => \u3|Equal3~4_combout\,
	datad => \u3|Equal3~10_combout\,
	combout => \u3|rx_cnt[0]~2_combout\);

-- Location: LCCOMB_X16_Y11_N12
\u3|rx_cnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_cnt[0]~4_combout\ = (\u3|rx_cnt[0]~1_combout\ & ((\u3|rx_cnt[0]~2_combout\) # ((\u3|rx_cnt[0]~3_combout\ & !\u3|Equal2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt[0]~3_combout\,
	datab => \u3|rx_cnt[0]~1_combout\,
	datac => \u3|Equal2~8_combout\,
	datad => \u3|rx_cnt[0]~2_combout\,
	combout => \u3|rx_cnt[0]~4_combout\);

-- Location: LCCOMB_X16_Y11_N24
\u3|rx_cnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_cnt[0]~6_combout\ = (\u3|rx_cnt\(0) & (((\u3|rx_cnt\(1)) # (\u3|rx_cnt[0]~4_combout\)) # (!\u3|rx_cnt[1]~0_combout\))) # (!\u3|rx_cnt\(0) & (((!\u3|rx_cnt[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt[1]~0_combout\,
	datab => \u3|rx_cnt\(1),
	datac => \u3|rx_cnt\(0),
	datad => \u3|rx_cnt[0]~4_combout\,
	combout => \u3|rx_cnt[0]~6_combout\);

-- Location: FF_X16_Y11_N25
\u3|rx_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rx_cnt[0]~6_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rx_cnt\(0));

-- Location: LCCOMB_X16_Y11_N22
\u3|rx_cnt[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rx_cnt[1]~5_combout\ = (\u3|rx_cnt[0]~4_combout\ & (((\u3|rx_cnt\(1))))) # (!\u3|rx_cnt[0]~4_combout\ & (\u3|rx_cnt[1]~0_combout\ & ((\u3|rx_cnt\(0)) # (\u3|rx_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt[1]~0_combout\,
	datab => \u3|rx_cnt\(0),
	datac => \u3|rx_cnt\(1),
	datad => \u3|rx_cnt[0]~4_combout\,
	combout => \u3|rx_cnt[1]~5_combout\);

-- Location: FF_X16_Y11_N23
\u3|rx_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rx_cnt[1]~5_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rx_cnt\(1));

-- Location: LCCOMB_X16_Y11_N28
\u3|wr_cnt[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[11]~16_combout\ = (\u3|rx_state.rx_wr_add_state~q\ & (\u3|rx_cnt\(1) & !\u3|rx_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_state.rx_wr_add_state~q\,
	datac => \u3|rx_cnt\(1),
	datad => \u3|rx_cnt\(0),
	combout => \u3|wr_cnt[11]~16_combout\);

-- Location: FF_X17_Y12_N7
\u3|wr_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[0]~12_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(0));

-- Location: LCCOMB_X17_Y12_N8
\u3|wr_cnt[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[1]~14_combout\ = (\u3|wr_cnt\(1) & (!\u3|wr_cnt[0]~13\)) # (!\u3|wr_cnt\(1) & ((\u3|wr_cnt[0]~13\) # (GND)))
-- \u3|wr_cnt[1]~15\ = CARRY((!\u3|wr_cnt[0]~13\) # (!\u3|wr_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_cnt\(1),
	datad => VCC,
	cin => \u3|wr_cnt[0]~13\,
	combout => \u3|wr_cnt[1]~14_combout\,
	cout => \u3|wr_cnt[1]~15\);

-- Location: FF_X17_Y12_N9
\u3|wr_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[1]~14_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(1));

-- Location: LCCOMB_X17_Y12_N10
\u3|wr_cnt[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[2]~17_combout\ = (\u3|wr_cnt\(2) & (\u3|wr_cnt[1]~15\ $ (GND))) # (!\u3|wr_cnt\(2) & (!\u3|wr_cnt[1]~15\ & VCC))
-- \u3|wr_cnt[2]~18\ = CARRY((\u3|wr_cnt\(2) & !\u3|wr_cnt[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_cnt\(2),
	datad => VCC,
	cin => \u3|wr_cnt[1]~15\,
	combout => \u3|wr_cnt[2]~17_combout\,
	cout => \u3|wr_cnt[2]~18\);

-- Location: FF_X17_Y12_N11
\u3|wr_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[2]~17_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(2));

-- Location: LCCOMB_X17_Y12_N12
\u3|wr_cnt[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[3]~19_combout\ = (\u3|wr_cnt\(3) & (!\u3|wr_cnt[2]~18\)) # (!\u3|wr_cnt\(3) & ((\u3|wr_cnt[2]~18\) # (GND)))
-- \u3|wr_cnt[3]~20\ = CARRY((!\u3|wr_cnt[2]~18\) # (!\u3|wr_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_cnt\(3),
	datad => VCC,
	cin => \u3|wr_cnt[2]~18\,
	combout => \u3|wr_cnt[3]~19_combout\,
	cout => \u3|wr_cnt[3]~20\);

-- Location: FF_X17_Y12_N13
\u3|wr_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[3]~19_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(3));

-- Location: LCCOMB_X17_Y12_N14
\u3|wr_cnt[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[4]~21_combout\ = (\u3|wr_cnt\(4) & (\u3|wr_cnt[3]~20\ $ (GND))) # (!\u3|wr_cnt\(4) & (!\u3|wr_cnt[3]~20\ & VCC))
-- \u3|wr_cnt[4]~22\ = CARRY((\u3|wr_cnt\(4) & !\u3|wr_cnt[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_cnt\(4),
	datad => VCC,
	cin => \u3|wr_cnt[3]~20\,
	combout => \u3|wr_cnt[4]~21_combout\,
	cout => \u3|wr_cnt[4]~22\);

-- Location: FF_X17_Y12_N15
\u3|wr_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[4]~21_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(4));

-- Location: LCCOMB_X17_Y12_N16
\u3|wr_cnt[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[5]~23_combout\ = (\u3|wr_cnt\(5) & (!\u3|wr_cnt[4]~22\)) # (!\u3|wr_cnt\(5) & ((\u3|wr_cnt[4]~22\) # (GND)))
-- \u3|wr_cnt[5]~24\ = CARRY((!\u3|wr_cnt[4]~22\) # (!\u3|wr_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_cnt\(5),
	datad => VCC,
	cin => \u3|wr_cnt[4]~22\,
	combout => \u3|wr_cnt[5]~23_combout\,
	cout => \u3|wr_cnt[5]~24\);

-- Location: FF_X17_Y12_N17
\u3|wr_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[5]~23_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(5));

-- Location: LCCOMB_X17_Y12_N18
\u3|wr_cnt[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[6]~25_combout\ = (\u3|wr_cnt\(6) & (\u3|wr_cnt[5]~24\ $ (GND))) # (!\u3|wr_cnt\(6) & (!\u3|wr_cnt[5]~24\ & VCC))
-- \u3|wr_cnt[6]~26\ = CARRY((\u3|wr_cnt\(6) & !\u3|wr_cnt[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_cnt\(6),
	datad => VCC,
	cin => \u3|wr_cnt[5]~24\,
	combout => \u3|wr_cnt[6]~25_combout\,
	cout => \u3|wr_cnt[6]~26\);

-- Location: FF_X17_Y12_N19
\u3|wr_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[6]~25_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(6));

-- Location: LCCOMB_X17_Y12_N20
\u3|wr_cnt[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[7]~27_combout\ = (\u3|wr_cnt\(7) & (!\u3|wr_cnt[6]~26\)) # (!\u3|wr_cnt\(7) & ((\u3|wr_cnt[6]~26\) # (GND)))
-- \u3|wr_cnt[7]~28\ = CARRY((!\u3|wr_cnt[6]~26\) # (!\u3|wr_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_cnt\(7),
	datad => VCC,
	cin => \u3|wr_cnt[6]~26\,
	combout => \u3|wr_cnt[7]~27_combout\,
	cout => \u3|wr_cnt[7]~28\);

-- Location: FF_X17_Y12_N21
\u3|wr_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[7]~27_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(7));

-- Location: LCCOMB_X17_Y12_N22
\u3|wr_cnt[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[8]~29_combout\ = (\u3|wr_cnt\(8) & (\u3|wr_cnt[7]~28\ $ (GND))) # (!\u3|wr_cnt\(8) & (!\u3|wr_cnt[7]~28\ & VCC))
-- \u3|wr_cnt[8]~30\ = CARRY((\u3|wr_cnt\(8) & !\u3|wr_cnt[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_cnt\(8),
	datad => VCC,
	cin => \u3|wr_cnt[7]~28\,
	combout => \u3|wr_cnt[8]~29_combout\,
	cout => \u3|wr_cnt[8]~30\);

-- Location: FF_X17_Y12_N23
\u3|wr_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[8]~29_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(8));

-- Location: LCCOMB_X17_Y12_N24
\u3|wr_cnt[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[9]~31_combout\ = (\u3|wr_cnt\(9) & (!\u3|wr_cnt[8]~30\)) # (!\u3|wr_cnt\(9) & ((\u3|wr_cnt[8]~30\) # (GND)))
-- \u3|wr_cnt[9]~32\ = CARRY((!\u3|wr_cnt[8]~30\) # (!\u3|wr_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_cnt\(9),
	datad => VCC,
	cin => \u3|wr_cnt[8]~30\,
	combout => \u3|wr_cnt[9]~31_combout\,
	cout => \u3|wr_cnt[9]~32\);

-- Location: FF_X17_Y12_N25
\u3|wr_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[9]~31_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(9));

-- Location: LCCOMB_X17_Y12_N26
\u3|wr_cnt[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[10]~33_combout\ = (\u3|wr_cnt\(10) & (\u3|wr_cnt[9]~32\ $ (GND))) # (!\u3|wr_cnt\(10) & (!\u3|wr_cnt[9]~32\ & VCC))
-- \u3|wr_cnt[10]~34\ = CARRY((\u3|wr_cnt\(10) & !\u3|wr_cnt[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_cnt\(10),
	datad => VCC,
	cin => \u3|wr_cnt[9]~32\,
	combout => \u3|wr_cnt[10]~33_combout\,
	cout => \u3|wr_cnt[10]~34\);

-- Location: FF_X17_Y12_N27
\u3|wr_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[10]~33_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(10));

-- Location: LCCOMB_X17_Y12_N28
\u3|wr_cnt[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_cnt[11]~35_combout\ = \u3|wr_cnt\(11) $ (\u3|wr_cnt[10]~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_cnt\(11),
	cin => \u3|wr_cnt[10]~34\,
	combout => \u3|wr_cnt[11]~35_combout\);

-- Location: FF_X17_Y12_N29
\u3|wr_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_cnt[11]~35_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	sclr => \u3|Equal2~8_combout\,
	ena => \u3|wr_cnt[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_cnt\(11));

-- Location: LCCOMB_X19_Y12_N28
\u3|wr_length_r[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_length_r[8]~1_combout\ = (\u3|rx_state.rx_wr_length_state~q\ & (!\u3|rx_cnt\(0) & (!\u3|rx_cnt\(1) & !\u3|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_wr_length_state~q\,
	datab => \u3|rx_cnt\(0),
	datac => \u3|rx_cnt\(1),
	datad => \u3|always0~0_combout\,
	combout => \u3|wr_length_r[8]~1_combout\);

-- Location: FF_X18_Y12_N21
\u3|wr_length_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(2),
	sload => VCC,
	ena => \u3|wr_length_r[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(10));

-- Location: FF_X18_Y12_N19
\u3|wr_length_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(1),
	sload => VCC,
	ena => \u3|wr_length_r[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(9));

-- Location: FF_X18_Y12_N17
\u3|wr_length_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(0),
	sload => VCC,
	ena => \u3|wr_length_r[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(8));

-- Location: LCCOMB_X19_Y12_N30
\u3|wr_length_r[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_length_r[0]~0_combout\ = (\u3|rx_state.rx_wr_length_state~q\ & (\u3|rx_cnt\(0) & (!\u3|rx_cnt\(1) & !\u3|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_wr_length_state~q\,
	datab => \u3|rx_cnt\(0),
	datac => \u3|rx_cnt\(1),
	datad => \u3|always0~0_combout\,
	combout => \u3|wr_length_r[0]~0_combout\);

-- Location: FF_X18_Y12_N15
\u3|wr_length_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(7),
	sload => VCC,
	ena => \u3|wr_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(7));

-- Location: FF_X18_Y12_N13
\u3|wr_length_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(6),
	sload => VCC,
	ena => \u3|wr_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(6));

-- Location: FF_X18_Y12_N11
\u3|wr_length_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(5),
	sload => VCC,
	ena => \u3|wr_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(5));

-- Location: FF_X18_Y12_N9
\u3|wr_length_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(4),
	sload => VCC,
	ena => \u3|wr_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(4));

-- Location: FF_X18_Y12_N7
\u3|wr_length_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(3),
	sload => VCC,
	ena => \u3|wr_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(3));

-- Location: FF_X18_Y12_N5
\u3|wr_length_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(2),
	sload => VCC,
	ena => \u3|wr_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(2));

-- Location: FF_X18_Y12_N3
\u3|wr_length_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(1),
	sload => VCC,
	ena => \u3|wr_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(1));

-- Location: FF_X18_Y12_N1
\u3|wr_length_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(0),
	sload => VCC,
	ena => \u3|wr_length_r[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(0));

-- Location: LCCOMB_X18_Y12_N0
\u3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~0_combout\ = \u3|wr_length_r\(0) $ (VCC)
-- \u3|Add1~1\ = CARRY(\u3|wr_length_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(0),
	datad => VCC,
	combout => \u3|Add1~0_combout\,
	cout => \u3|Add1~1\);

-- Location: LCCOMB_X18_Y12_N2
\u3|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~2_combout\ = (\u3|wr_length_r\(1) & (\u3|Add1~1\ & VCC)) # (!\u3|wr_length_r\(1) & (!\u3|Add1~1\))
-- \u3|Add1~3\ = CARRY((!\u3|wr_length_r\(1) & !\u3|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(1),
	datad => VCC,
	cin => \u3|Add1~1\,
	combout => \u3|Add1~2_combout\,
	cout => \u3|Add1~3\);

-- Location: LCCOMB_X18_Y12_N4
\u3|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~4_combout\ = (\u3|wr_length_r\(2) & ((GND) # (!\u3|Add1~3\))) # (!\u3|wr_length_r\(2) & (\u3|Add1~3\ $ (GND)))
-- \u3|Add1~5\ = CARRY((\u3|wr_length_r\(2)) # (!\u3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(2),
	datad => VCC,
	cin => \u3|Add1~3\,
	combout => \u3|Add1~4_combout\,
	cout => \u3|Add1~5\);

-- Location: LCCOMB_X18_Y12_N6
\u3|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~6_combout\ = (\u3|wr_length_r\(3) & (\u3|Add1~5\ & VCC)) # (!\u3|wr_length_r\(3) & (!\u3|Add1~5\))
-- \u3|Add1~7\ = CARRY((!\u3|wr_length_r\(3) & !\u3|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_length_r\(3),
	datad => VCC,
	cin => \u3|Add1~5\,
	combout => \u3|Add1~6_combout\,
	cout => \u3|Add1~7\);

-- Location: LCCOMB_X18_Y12_N8
\u3|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~8_combout\ = (\u3|wr_length_r\(4) & ((GND) # (!\u3|Add1~7\))) # (!\u3|wr_length_r\(4) & (\u3|Add1~7\ $ (GND)))
-- \u3|Add1~9\ = CARRY((\u3|wr_length_r\(4)) # (!\u3|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(4),
	datad => VCC,
	cin => \u3|Add1~7\,
	combout => \u3|Add1~8_combout\,
	cout => \u3|Add1~9\);

-- Location: LCCOMB_X18_Y12_N10
\u3|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~10_combout\ = (\u3|wr_length_r\(5) & (\u3|Add1~9\ & VCC)) # (!\u3|wr_length_r\(5) & (!\u3|Add1~9\))
-- \u3|Add1~11\ = CARRY((!\u3|wr_length_r\(5) & !\u3|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_length_r\(5),
	datad => VCC,
	cin => \u3|Add1~9\,
	combout => \u3|Add1~10_combout\,
	cout => \u3|Add1~11\);

-- Location: LCCOMB_X18_Y12_N12
\u3|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~12_combout\ = (\u3|wr_length_r\(6) & ((GND) # (!\u3|Add1~11\))) # (!\u3|wr_length_r\(6) & (\u3|Add1~11\ $ (GND)))
-- \u3|Add1~13\ = CARRY((\u3|wr_length_r\(6)) # (!\u3|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_length_r\(6),
	datad => VCC,
	cin => \u3|Add1~11\,
	combout => \u3|Add1~12_combout\,
	cout => \u3|Add1~13\);

-- Location: LCCOMB_X18_Y12_N14
\u3|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~14_combout\ = (\u3|wr_length_r\(7) & (\u3|Add1~13\ & VCC)) # (!\u3|wr_length_r\(7) & (!\u3|Add1~13\))
-- \u3|Add1~15\ = CARRY((!\u3|wr_length_r\(7) & !\u3|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(7),
	datad => VCC,
	cin => \u3|Add1~13\,
	combout => \u3|Add1~14_combout\,
	cout => \u3|Add1~15\);

-- Location: LCCOMB_X18_Y12_N16
\u3|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~16_combout\ = (\u3|wr_length_r\(8) & ((GND) # (!\u3|Add1~15\))) # (!\u3|wr_length_r\(8) & (\u3|Add1~15\ $ (GND)))
-- \u3|Add1~17\ = CARRY((\u3|wr_length_r\(8)) # (!\u3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(8),
	datad => VCC,
	cin => \u3|Add1~15\,
	combout => \u3|Add1~16_combout\,
	cout => \u3|Add1~17\);

-- Location: LCCOMB_X18_Y12_N18
\u3|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~18_combout\ = (\u3|wr_length_r\(9) & (\u3|Add1~17\ & VCC)) # (!\u3|wr_length_r\(9) & (!\u3|Add1~17\))
-- \u3|Add1~19\ = CARRY((!\u3|wr_length_r\(9) & !\u3|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(9),
	datad => VCC,
	cin => \u3|Add1~17\,
	combout => \u3|Add1~18_combout\,
	cout => \u3|Add1~19\);

-- Location: LCCOMB_X18_Y12_N20
\u3|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~20_combout\ = (\u3|wr_length_r\(10) & ((GND) # (!\u3|Add1~19\))) # (!\u3|wr_length_r\(10) & (\u3|Add1~19\ $ (GND)))
-- \u3|Add1~21\ = CARRY((\u3|wr_length_r\(10)) # (!\u3|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(10),
	datad => VCC,
	cin => \u3|Add1~19\,
	combout => \u3|Add1~20_combout\,
	cout => \u3|Add1~21\);

-- Location: FF_X18_Y12_N23
\u3|wr_length_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(3),
	sload => VCC,
	ena => \u3|wr_length_r[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(11));

-- Location: LCCOMB_X18_Y12_N22
\u3|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~22_combout\ = (\u3|wr_length_r\(11) & (\u3|Add1~21\ & VCC)) # (!\u3|wr_length_r\(11) & (!\u3|Add1~21\))
-- \u3|Add1~23\ = CARRY((!\u3|wr_length_r\(11) & !\u3|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_length_r\(11),
	datad => VCC,
	cin => \u3|Add1~21\,
	combout => \u3|Add1~22_combout\,
	cout => \u3|Add1~23\);

-- Location: LCCOMB_X17_Y12_N30
\u3|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal2~6_combout\ = (\u3|wr_cnt\(10) & (\u3|Add1~20_combout\ & (\u3|wr_cnt\(11) $ (!\u3|Add1~22_combout\)))) # (!\u3|wr_cnt\(10) & (!\u3|Add1~20_combout\ & (\u3|wr_cnt\(11) $ (!\u3|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_cnt\(10),
	datab => \u3|wr_cnt\(11),
	datac => \u3|Add1~20_combout\,
	datad => \u3|Add1~22_combout\,
	combout => \u3|Equal2~6_combout\);

-- Location: LCCOMB_X17_Y12_N4
\u3|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal2~5_combout\ = (\u3|wr_cnt\(9) & (\u3|Add1~18_combout\ & (\u3|wr_cnt\(8) $ (!\u3|Add1~16_combout\)))) # (!\u3|wr_cnt\(9) & (!\u3|Add1~18_combout\ & (\u3|wr_cnt\(8) $ (!\u3|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_cnt\(9),
	datab => \u3|Add1~18_combout\,
	datac => \u3|wr_cnt\(8),
	datad => \u3|Add1~16_combout\,
	combout => \u3|Equal2~5_combout\);

-- Location: LCCOMB_X19_Y12_N22
\u3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal2~0_combout\ = (\u3|wr_cnt\(1) & (\u3|Add1~2_combout\ & (\u3|wr_cnt\(0) $ (!\u3|Add1~0_combout\)))) # (!\u3|wr_cnt\(1) & (!\u3|Add1~2_combout\ & (\u3|wr_cnt\(0) $ (!\u3|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_cnt\(1),
	datab => \u3|wr_cnt\(0),
	datac => \u3|Add1~0_combout\,
	datad => \u3|Add1~2_combout\,
	combout => \u3|Equal2~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\u3|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal2~1_combout\ = (\u3|wr_cnt\(2) & (\u3|Add1~4_combout\ & (\u3|wr_cnt\(3) $ (!\u3|Add1~6_combout\)))) # (!\u3|wr_cnt\(2) & (!\u3|Add1~4_combout\ & (\u3|wr_cnt\(3) $ (!\u3|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_cnt\(2),
	datab => \u3|wr_cnt\(3),
	datac => \u3|Add1~4_combout\,
	datad => \u3|Add1~6_combout\,
	combout => \u3|Equal2~1_combout\);

-- Location: LCCOMB_X19_Y12_N14
\u3|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal2~2_combout\ = (\u3|Add1~8_combout\ & (\u3|wr_cnt\(4) & (\u3|wr_cnt\(5) $ (!\u3|Add1~10_combout\)))) # (!\u3|Add1~8_combout\ & (!\u3|wr_cnt\(4) & (\u3|wr_cnt\(5) $ (!\u3|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add1~8_combout\,
	datab => \u3|wr_cnt\(5),
	datac => \u3|wr_cnt\(4),
	datad => \u3|Add1~10_combout\,
	combout => \u3|Equal2~2_combout\);

-- Location: LCCOMB_X19_Y12_N12
\u3|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal2~3_combout\ = (\u3|Add1~12_combout\ & (\u3|wr_cnt\(6) & (\u3|wr_cnt\(7) $ (!\u3|Add1~14_combout\)))) # (!\u3|Add1~12_combout\ & (!\u3|wr_cnt\(6) & (\u3|wr_cnt\(7) $ (!\u3|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add1~12_combout\,
	datab => \u3|wr_cnt\(7),
	datac => \u3|wr_cnt\(6),
	datad => \u3|Add1~14_combout\,
	combout => \u3|Equal2~3_combout\);

-- Location: LCCOMB_X19_Y12_N10
\u3|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal2~4_combout\ = (\u3|Equal2~0_combout\ & (\u3|Equal2~1_combout\ & (\u3|Equal2~2_combout\ & \u3|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal2~0_combout\,
	datab => \u3|Equal2~1_combout\,
	datac => \u3|Equal2~2_combout\,
	datad => \u3|Equal2~3_combout\,
	combout => \u3|Equal2~4_combout\);

-- Location: LCCOMB_X19_Y12_N24
\u3|wr_length_r[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_length_r[15]~feeder_combout\ = \u2|receive_byte_r\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|receive_byte_r\(7),
	combout => \u3|wr_length_r[15]~feeder_combout\);

-- Location: FF_X19_Y12_N25
\u3|wr_length_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_length_r[15]~feeder_combout\,
	ena => \u3|wr_length_r[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(15));

-- Location: FF_X18_Y12_N29
\u3|wr_length_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(6),
	sload => VCC,
	ena => \u3|wr_length_r[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(14));

-- Location: FF_X18_Y12_N27
\u3|wr_length_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(5),
	sload => VCC,
	ena => \u3|wr_length_r[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(13));

-- Location: FF_X18_Y12_N25
\u3|wr_length_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u2|receive_byte_r\(4),
	sload => VCC,
	ena => \u3|wr_length_r[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_length_r\(12));

-- Location: LCCOMB_X18_Y12_N24
\u3|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~24_combout\ = (\u3|wr_length_r\(12) & ((GND) # (!\u3|Add1~23\))) # (!\u3|wr_length_r\(12) & (\u3|Add1~23\ $ (GND)))
-- \u3|Add1~25\ = CARRY((\u3|wr_length_r\(12)) # (!\u3|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(12),
	datad => VCC,
	cin => \u3|Add1~23\,
	combout => \u3|Add1~24_combout\,
	cout => \u3|Add1~25\);

-- Location: LCCOMB_X18_Y12_N26
\u3|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~26_combout\ = (\u3|wr_length_r\(13) & (\u3|Add1~25\ & VCC)) # (!\u3|wr_length_r\(13) & (!\u3|Add1~25\))
-- \u3|Add1~27\ = CARRY((!\u3|wr_length_r\(13) & !\u3|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_length_r\(13),
	datad => VCC,
	cin => \u3|Add1~25\,
	combout => \u3|Add1~26_combout\,
	cout => \u3|Add1~27\);

-- Location: LCCOMB_X18_Y12_N28
\u3|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~28_combout\ = (\u3|wr_length_r\(14) & ((GND) # (!\u3|Add1~27\))) # (!\u3|wr_length_r\(14) & (\u3|Add1~27\ $ (GND)))
-- \u3|Add1~29\ = CARRY((\u3|wr_length_r\(14)) # (!\u3|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_length_r\(14),
	datad => VCC,
	cin => \u3|Add1~27\,
	combout => \u3|Add1~28_combout\,
	cout => \u3|Add1~29\);

-- Location: LCCOMB_X18_Y12_N30
\u3|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add1~30_combout\ = \u3|Add1~29\ $ (!\u3|wr_length_r\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3|wr_length_r\(15),
	cin => \u3|Add1~29\,
	combout => \u3|Add1~30_combout\);

-- Location: LCCOMB_X17_Y12_N0
\u3|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal2~7_combout\ = (!\u3|Add1~30_combout\ & (!\u3|Add1~28_combout\ & (!\u3|Add1~26_combout\ & !\u3|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add1~30_combout\,
	datab => \u3|Add1~28_combout\,
	datac => \u3|Add1~26_combout\,
	datad => \u3|Add1~24_combout\,
	combout => \u3|Equal2~7_combout\);

-- Location: LCCOMB_X17_Y12_N2
\u3|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal2~8_combout\ = (\u3|Equal2~6_combout\ & (\u3|Equal2~5_combout\ & (\u3|Equal2~4_combout\ & \u3|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal2~6_combout\,
	datab => \u3|Equal2~5_combout\,
	datac => \u3|Equal2~4_combout\,
	datad => \u3|Equal2~7_combout\,
	combout => \u3|Equal2~8_combout\);

-- Location: LCCOMB_X16_Y11_N16
\u3|wr_address_r[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_address_r[0]~2_combout\ = (\u3|rx_state.rx_wr_add_state~q\ & (\u3|rx_cnt\(1) $ (\u3|rx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_state.rx_wr_add_state~q\,
	datac => \u3|rx_cnt\(1),
	datad => \u3|rx_cnt\(0),
	combout => \u3|wr_address_r[0]~2_combout\);

-- Location: LCCOMB_X16_Y11_N2
\u3|wr_en_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_en_r~0_combout\ = (\u3|wr_address_r[0]~2_combout\ & (((!\u3|Equal2~8_combout\ & \u3|wr_en_r~q\)) # (!\u3|rx_cnt\(1)))) # (!\u3|wr_address_r[0]~2_combout\ & (((\u3|wr_en_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal2~8_combout\,
	datab => \u3|wr_address_r[0]~2_combout\,
	datac => \u3|wr_en_r~q\,
	datad => \u3|rx_cnt\(1),
	combout => \u3|wr_en_r~0_combout\);

-- Location: FF_X16_Y11_N3
\u3|wr_en_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|wr_en_r~0_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_en_r~q\);

-- Location: LCCOMB_X16_Y11_N4
\u3|rd_address_r[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_address_r[0]~2_combout\ = (\u3|rx_state.rx_rd_add_state~q\ & (\u3|rx_cnt\(1) $ (\u3|rx_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_cnt\(1),
	datac => \u3|rx_state.rx_rd_add_state~q\,
	datad => \u3|rx_cnt\(0),
	combout => \u3|rd_address_r[0]~2_combout\);

-- Location: LCCOMB_X16_Y11_N20
\u3|rd_en_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_en_r~0_combout\ = (\u3|rd_address_r[0]~2_combout\ & (((!\u3|Equal3~8_combout\ & \u3|rd_en_r~q\)) # (!\u3|rx_cnt\(1)))) # (!\u3|rd_address_r[0]~2_combout\ & (((\u3|rd_en_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(1),
	datab => \u3|rd_address_r[0]~2_combout\,
	datac => \u3|Equal3~8_combout\,
	datad => \u3|rd_en_r~q\,
	combout => \u3|rd_en_r~0_combout\);

-- Location: LCCOMB_X16_Y11_N26
\u3|rd_en_r~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_en_r~feeder_combout\ = \u3|rd_en_r~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|rd_en_r~0_combout\,
	combout => \u3|rd_en_r~feeder_combout\);

-- Location: FF_X16_Y11_N27
\u3|rd_en_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|rd_en_r~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_en_r~q\);

-- Location: LCCOMB_X14_Y9_N18
\u2|spi_tx_en_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|spi_tx_en_r~0_combout\ = (\u2|send_state\(2) & (((\u2|send_state\(0) & !\u2|send_state\(1))))) # (!\u2|send_state\(2) & (\u2|spi_tx_en_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|spi_tx_en_r~q\,
	datab => \u2|send_state\(0),
	datac => \u2|send_state\(1),
	datad => \u2|send_state\(2),
	combout => \u2|spi_tx_en_r~0_combout\);

-- Location: LCCOMB_X14_Y9_N10
\u2|spi_tx_en_r~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|spi_tx_en_r~feeder_combout\ = \u2|spi_tx_en_r~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|spi_tx_en_r~0_combout\,
	combout => \u2|spi_tx_en_r~feeder_combout\);

-- Location: FF_X14_Y9_N11
\u2|spi_tx_en_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u2|spi_tx_en_r~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|spi_tx_en_r~q\);

-- Location: CLKCTRL_G0
\u2|spi_tx_en_r~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u2|spi_tx_en_r~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u2|spi_tx_en_r~clkctrl_outclk\);

-- Location: FF_X16_Y11_N9
\u3|u0|altsyncram_component|auto_generated|rden_b_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_tx_en_r~clkctrl_outclk\,
	asdata => \u3|rd_en_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u0|altsyncram_component|auto_generated|rden_b_store~q\);

-- Location: LCCOMB_X16_Y11_N8
\u3|u0|altsyncram_component|auto_generated|ram_block1a0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u0|altsyncram_component|auto_generated|ram_block1a0~0_combout\ = (\u3|u0|altsyncram_component|auto_generated|rden_b_store~q\) # (\u3|rd_en_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u0|altsyncram_component|auto_generated|rden_b_store~q\,
	datad => \u3|rd_en_r~q\,
	combout => \u3|u0|altsyncram_component|auto_generated|ram_block1a0~0_combout\);

-- Location: LCCOMB_X16_Y10_N6
\u3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = \u3|wr_address_r\(0) $ (VCC)
-- \u3|Add0~1\ = CARRY(\u3|wr_address_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_address_r\(0),
	datad => VCC,
	combout => \u3|Add0~0_combout\,
	cout => \u3|Add0~1\);

-- Location: LCCOMB_X17_Y10_N8
\u3|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector22~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(0)))) # (!\u3|rx_cnt\(0) & (\u3|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(0),
	datac => \u3|Add0~0_combout\,
	datad => \u2|receive_byte_r\(0),
	combout => \u3|Selector22~0_combout\);

-- Location: LCCOMB_X16_Y10_N2
\u3|wr_address_r[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_address_r[0]~4_combout\ = (\u3|rx_state.rx_wr_add_state~q\ & (!\u3|always0~0_combout\ & (\u3|rx_cnt\(1) $ (\u3|rx_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(1),
	datab => \u3|rx_cnt\(0),
	datac => \u3|rx_state.rx_wr_add_state~q\,
	datad => \u3|always0~0_combout\,
	combout => \u3|wr_address_r[0]~4_combout\);

-- Location: FF_X16_Y10_N13
\u3|wr_address_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u3|Selector22~0_combout\,
	sload => VCC,
	ena => \u3|wr_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(0));

-- Location: LCCOMB_X16_Y10_N8
\u3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~2_combout\ = (\u3|wr_address_r\(1) & (!\u3|Add0~1\)) # (!\u3|wr_address_r\(1) & ((\u3|Add0~1\) # (GND)))
-- \u3|Add0~3\ = CARRY((!\u3|Add0~1\) # (!\u3|wr_address_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_address_r\(1),
	datad => VCC,
	cin => \u3|Add0~1\,
	combout => \u3|Add0~2_combout\,
	cout => \u3|Add0~3\);

-- Location: LCCOMB_X16_Y10_N0
\u3|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector21~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(1)))) # (!\u3|rx_cnt\(0) & (\u3|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~2_combout\,
	datab => \u2|receive_byte_r\(1),
	datad => \u3|rx_cnt\(0),
	combout => \u3|Selector21~0_combout\);

-- Location: FF_X16_Y10_N1
\u3|wr_address_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector21~0_combout\,
	ena => \u3|wr_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(1));

-- Location: LCCOMB_X16_Y10_N10
\u3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~4_combout\ = (\u3|wr_address_r\(2) & (\u3|Add0~3\ $ (GND))) # (!\u3|wr_address_r\(2) & (!\u3|Add0~3\ & VCC))
-- \u3|Add0~5\ = CARRY((\u3|wr_address_r\(2) & !\u3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_address_r\(2),
	datad => VCC,
	cin => \u3|Add0~3\,
	combout => \u3|Add0~4_combout\,
	cout => \u3|Add0~5\);

-- Location: LCCOMB_X16_Y10_N30
\u3|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector20~0_combout\ = (\u3|rx_cnt\(0) & (\u2|receive_byte_r\(2))) # (!\u3|rx_cnt\(0) & ((\u3|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(2),
	datab => \u3|rx_cnt\(0),
	datad => \u3|Add0~4_combout\,
	combout => \u3|Selector20~0_combout\);

-- Location: FF_X16_Y10_N31
\u3|wr_address_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector20~0_combout\,
	ena => \u3|wr_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(2));

-- Location: LCCOMB_X16_Y10_N12
\u3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~6_combout\ = (\u3|wr_address_r\(3) & (!\u3|Add0~5\)) # (!\u3|wr_address_r\(3) & ((\u3|Add0~5\) # (GND)))
-- \u3|Add0~7\ = CARRY((!\u3|Add0~5\) # (!\u3|wr_address_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_address_r\(3),
	datad => VCC,
	cin => \u3|Add0~5\,
	combout => \u3|Add0~6_combout\,
	cout => \u3|Add0~7\);

-- Location: LCCOMB_X17_Y10_N14
\u3|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector19~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(3)))) # (!\u3|rx_cnt\(0) & (\u3|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|Add0~6_combout\,
	datac => \u3|rx_cnt\(0),
	datad => \u2|receive_byte_r\(3),
	combout => \u3|Selector19~0_combout\);

-- Location: FF_X16_Y10_N9
\u3|wr_address_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u3|Selector19~0_combout\,
	sload => VCC,
	ena => \u3|wr_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(3));

-- Location: LCCOMB_X16_Y10_N14
\u3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~8_combout\ = (\u3|wr_address_r\(4) & (\u3|Add0~7\ $ (GND))) # (!\u3|wr_address_r\(4) & (!\u3|Add0~7\ & VCC))
-- \u3|Add0~9\ = CARRY((\u3|wr_address_r\(4) & !\u3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_address_r\(4),
	datad => VCC,
	cin => \u3|Add0~7\,
	combout => \u3|Add0~8_combout\,
	cout => \u3|Add0~9\);

-- Location: LCCOMB_X17_Y10_N0
\u3|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector18~0_combout\ = (\u3|rx_cnt\(0) & (\u2|receive_byte_r\(4))) # (!\u3|rx_cnt\(0) & ((\u3|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(0),
	datab => \u2|receive_byte_r\(4),
	datad => \u3|Add0~8_combout\,
	combout => \u3|Selector18~0_combout\);

-- Location: FF_X16_Y10_N11
\u3|wr_address_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u3|Selector18~0_combout\,
	sload => VCC,
	ena => \u3|wr_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(4));

-- Location: LCCOMB_X16_Y10_N16
\u3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~10_combout\ = (\u3|wr_address_r\(5) & (!\u3|Add0~9\)) # (!\u3|wr_address_r\(5) & ((\u3|Add0~9\) # (GND)))
-- \u3|Add0~11\ = CARRY((!\u3|Add0~9\) # (!\u3|wr_address_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_address_r\(5),
	datad => VCC,
	cin => \u3|Add0~9\,
	combout => \u3|Add0~10_combout\,
	cout => \u3|Add0~11\);

-- Location: LCCOMB_X16_Y10_N28
\u3|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector17~0_combout\ = (\u3|rx_cnt\(0) & (\u2|receive_byte_r\(5))) # (!\u3|rx_cnt\(0) & ((\u3|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(5),
	datab => \u3|Add0~10_combout\,
	datad => \u3|rx_cnt\(0),
	combout => \u3|Selector17~0_combout\);

-- Location: FF_X16_Y10_N29
\u3|wr_address_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector17~0_combout\,
	ena => \u3|wr_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(5));

-- Location: LCCOMB_X16_Y10_N18
\u3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~12_combout\ = (\u3|wr_address_r\(6) & (\u3|Add0~11\ $ (GND))) # (!\u3|wr_address_r\(6) & (!\u3|Add0~11\ & VCC))
-- \u3|Add0~13\ = CARRY((\u3|wr_address_r\(6) & !\u3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_address_r\(6),
	datad => VCC,
	cin => \u3|Add0~11\,
	combout => \u3|Add0~12_combout\,
	cout => \u3|Add0~13\);

-- Location: LCCOMB_X16_Y10_N26
\u3|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector16~0_combout\ = (\u3|rx_cnt\(0) & (\u2|receive_byte_r\(6))) # (!\u3|rx_cnt\(0) & ((\u3|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_cnt\(0),
	datac => \u2|receive_byte_r\(6),
	datad => \u3|Add0~12_combout\,
	combout => \u3|Selector16~0_combout\);

-- Location: FF_X16_Y10_N27
\u3|wr_address_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector16~0_combout\,
	ena => \u3|wr_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(6));

-- Location: LCCOMB_X16_Y10_N20
\u3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~14_combout\ = (\u3|wr_address_r\(7) & (!\u3|Add0~13\)) # (!\u3|wr_address_r\(7) & ((\u3|Add0~13\) # (GND)))
-- \u3|Add0~15\ = CARRY((!\u3|Add0~13\) # (!\u3|wr_address_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|wr_address_r\(7),
	datad => VCC,
	cin => \u3|Add0~13\,
	combout => \u3|Add0~14_combout\,
	cout => \u3|Add0~15\);

-- Location: LCCOMB_X16_Y10_N4
\u3|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector15~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(7)))) # (!\u3|rx_cnt\(0) & (\u3|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|Add0~14_combout\,
	datac => \u2|receive_byte_r\(7),
	datad => \u3|rx_cnt\(0),
	combout => \u3|Selector15~0_combout\);

-- Location: FF_X16_Y10_N5
\u3|wr_address_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector15~0_combout\,
	ena => \u3|wr_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(7));

-- Location: LCCOMB_X16_Y10_N22
\u3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~16_combout\ = (\u3|wr_address_r\(8) & (\u3|Add0~15\ $ (GND))) # (!\u3|wr_address_r\(8) & (!\u3|Add0~15\ & VCC))
-- \u3|Add0~17\ = CARRY((\u3|wr_address_r\(8) & !\u3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|wr_address_r\(8),
	datad => VCC,
	cin => \u3|Add0~15\,
	combout => \u3|Add0~16_combout\,
	cout => \u3|Add0~17\);

-- Location: LCCOMB_X17_Y10_N4
\u3|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector14~0_combout\ = (\u3|rx_cnt\(1) & ((\u3|Add0~16_combout\))) # (!\u3|rx_cnt\(1) & (\u2|receive_byte_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(0),
	datab => \u3|Add0~16_combout\,
	datad => \u3|rx_cnt\(1),
	combout => \u3|Selector14~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\u3|wr_address_r[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|wr_address_r[8]~3_combout\ = (\u3|rx_state.rx_wr_add_state~q\ & (!\u3|rx_cnt\(0) & !\u3|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_wr_add_state~q\,
	datac => \u3|rx_cnt\(0),
	datad => \u3|always0~0_combout\,
	combout => \u3|wr_address_r[8]~3_combout\);

-- Location: FF_X17_Y10_N5
\u3|wr_address_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector14~0_combout\,
	ena => \u3|wr_address_r[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(8));

-- Location: LCCOMB_X16_Y10_N24
\u3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~18_combout\ = \u3|Add0~17\ $ (\u3|wr_address_r\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3|wr_address_r\(9),
	cin => \u3|Add0~17\,
	combout => \u3|Add0~18_combout\);

-- Location: LCCOMB_X17_Y10_N2
\u3|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector13~0_combout\ = (\u3|rx_cnt\(1) & ((\u3|Add0~18_combout\))) # (!\u3|rx_cnt\(1) & (\u2|receive_byte_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_cnt\(1),
	datac => \u2|receive_byte_r\(1),
	datad => \u3|Add0~18_combout\,
	combout => \u3|Selector13~0_combout\);

-- Location: FF_X17_Y10_N3
\u3|wr_address_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector13~0_combout\,
	ena => \u3|wr_address_r[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|wr_address_r\(9));

-- Location: LCCOMB_X16_Y12_N0
\u3|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~0_combout\ = \u3|rd_address_r\(0) $ (VCC)
-- \u3|Add3~1\ = CARRY(\u3|rd_address_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_address_r\(0),
	datad => VCC,
	combout => \u3|Add3~0_combout\,
	cout => \u3|Add3~1\);

-- Location: LCCOMB_X16_Y12_N28
\u3|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector47~0_combout\ = (\u3|rx_cnt\(0) & (\u2|receive_byte_r\(0))) # (!\u3|rx_cnt\(0) & ((\u3|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(0),
	datab => \u3|rx_cnt\(0),
	datac => \u3|Add3~0_combout\,
	combout => \u3|Selector47~0_combout\);

-- Location: LCCOMB_X16_Y12_N30
\u3|rd_address_r[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_address_r[0]~4_combout\ = (\u3|rx_state.rx_rd_add_state~q\ & (!\u3|always0~0_combout\ & (\u3|rx_cnt\(0) $ (\u3|rx_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_state.rx_rd_add_state~q\,
	datab => \u3|rx_cnt\(0),
	datac => \u3|rx_cnt\(1),
	datad => \u3|always0~0_combout\,
	combout => \u3|rd_address_r[0]~4_combout\);

-- Location: FF_X16_Y12_N29
\u3|rd_address_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector47~0_combout\,
	ena => \u3|rd_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(0));

-- Location: LCCOMB_X16_Y12_N2
\u3|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~2_combout\ = (\u3|rd_address_r\(1) & (!\u3|Add3~1\)) # (!\u3|rd_address_r\(1) & ((\u3|Add3~1\) # (GND)))
-- \u3|Add3~3\ = CARRY((!\u3|Add3~1\) # (!\u3|rd_address_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_address_r\(1),
	datad => VCC,
	cin => \u3|Add3~1\,
	combout => \u3|Add3~2_combout\,
	cout => \u3|Add3~3\);

-- Location: LCCOMB_X14_Y12_N26
\u3|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector46~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(1)))) # (!\u3|rx_cnt\(0) & (\u3|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(0),
	datac => \u3|Add3~2_combout\,
	datad => \u2|receive_byte_r\(1),
	combout => \u3|Selector46~0_combout\);

-- Location: FF_X16_Y12_N1
\u3|rd_address_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u3|Selector46~0_combout\,
	sload => VCC,
	ena => \u3|rd_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(1));

-- Location: LCCOMB_X16_Y12_N4
\u3|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~4_combout\ = (\u3|rd_address_r\(2) & (\u3|Add3~3\ $ (GND))) # (!\u3|rd_address_r\(2) & (!\u3|Add3~3\ & VCC))
-- \u3|Add3~5\ = CARRY((\u3|rd_address_r\(2) & !\u3|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_address_r\(2),
	datad => VCC,
	cin => \u3|Add3~3\,
	combout => \u3|Add3~4_combout\,
	cout => \u3|Add3~5\);

-- Location: LCCOMB_X16_Y11_N18
\u3|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector45~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(2)))) # (!\u3|rx_cnt\(0) & (\u3|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_cnt\(0),
	datac => \u3|Add3~4_combout\,
	datad => \u2|receive_byte_r\(2),
	combout => \u3|Selector45~0_combout\);

-- Location: FF_X16_Y12_N15
\u3|rd_address_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u3|Selector45~0_combout\,
	sload => VCC,
	ena => \u3|rd_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(2));

-- Location: LCCOMB_X16_Y12_N6
\u3|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~6_combout\ = (\u3|rd_address_r\(3) & (!\u3|Add3~5\)) # (!\u3|rd_address_r\(3) & ((\u3|Add3~5\) # (GND)))
-- \u3|Add3~7\ = CARRY((!\u3|Add3~5\) # (!\u3|rd_address_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_address_r\(3),
	datad => VCC,
	cin => \u3|Add3~5\,
	combout => \u3|Add3~6_combout\,
	cout => \u3|Add3~7\);

-- Location: LCCOMB_X16_Y12_N22
\u3|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector44~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(3)))) # (!\u3|rx_cnt\(0) & (\u3|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add3~6_combout\,
	datab => \u3|rx_cnt\(0),
	datac => \u2|receive_byte_r\(3),
	combout => \u3|Selector44~0_combout\);

-- Location: FF_X16_Y12_N23
\u3|rd_address_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector44~0_combout\,
	ena => \u3|rd_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(3));

-- Location: LCCOMB_X16_Y12_N8
\u3|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~8_combout\ = (\u3|rd_address_r\(4) & (\u3|Add3~7\ $ (GND))) # (!\u3|rd_address_r\(4) & (!\u3|Add3~7\ & VCC))
-- \u3|Add3~9\ = CARRY((\u3|rd_address_r\(4) & !\u3|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_address_r\(4),
	datad => VCC,
	cin => \u3|Add3~7\,
	combout => \u3|Add3~8_combout\,
	cout => \u3|Add3~9\);

-- Location: LCCOMB_X16_Y12_N20
\u3|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector43~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(4)))) # (!\u3|rx_cnt\(0) & (\u3|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_cnt\(0),
	datac => \u3|Add3~8_combout\,
	datad => \u2|receive_byte_r\(4),
	combout => \u3|Selector43~0_combout\);

-- Location: FF_X16_Y12_N21
\u3|rd_address_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector43~0_combout\,
	ena => \u3|rd_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(4));

-- Location: LCCOMB_X16_Y12_N10
\u3|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~10_combout\ = (\u3|rd_address_r\(5) & (!\u3|Add3~9\)) # (!\u3|rd_address_r\(5) & ((\u3|Add3~9\) # (GND)))
-- \u3|Add3~11\ = CARRY((!\u3|Add3~9\) # (!\u3|rd_address_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rd_address_r\(5),
	datad => VCC,
	cin => \u3|Add3~9\,
	combout => \u3|Add3~10_combout\,
	cout => \u3|Add3~11\);

-- Location: LCCOMB_X19_Y12_N8
\u3|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector42~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(5)))) # (!\u3|rx_cnt\(0) & (\u3|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add3~10_combout\,
	datac => \u3|rx_cnt\(0),
	datad => \u2|receive_byte_r\(5),
	combout => \u3|Selector42~0_combout\);

-- Location: FF_X19_Y12_N9
\u3|rd_address_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector42~0_combout\,
	ena => \u3|rd_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(5));

-- Location: LCCOMB_X16_Y12_N12
\u3|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~12_combout\ = (\u3|rd_address_r\(6) & (\u3|Add3~11\ $ (GND))) # (!\u3|rd_address_r\(6) & (!\u3|Add3~11\ & VCC))
-- \u3|Add3~13\ = CARRY((\u3|rd_address_r\(6) & !\u3|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_address_r\(6),
	datad => VCC,
	cin => \u3|Add3~11\,
	combout => \u3|Add3~12_combout\,
	cout => \u3|Add3~13\);

-- Location: LCCOMB_X14_Y12_N8
\u3|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector41~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(6)))) # (!\u3|rx_cnt\(0) & (\u3|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(0),
	datac => \u3|Add3~12_combout\,
	datad => \u2|receive_byte_r\(6),
	combout => \u3|Selector41~0_combout\);

-- Location: FF_X16_Y12_N11
\u3|rd_address_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u3|Selector41~0_combout\,
	sload => VCC,
	ena => \u3|rd_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(6));

-- Location: LCCOMB_X16_Y12_N14
\u3|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~14_combout\ = (\u3|rd_address_r\(7) & (!\u3|Add3~13\)) # (!\u3|rd_address_r\(7) & ((\u3|Add3~13\) # (GND)))
-- \u3|Add3~15\ = CARRY((!\u3|Add3~13\) # (!\u3|rd_address_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_address_r\(7),
	datad => VCC,
	cin => \u3|Add3~13\,
	combout => \u3|Add3~14_combout\,
	cout => \u3|Add3~15\);

-- Location: LCCOMB_X14_Y12_N22
\u3|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector40~0_combout\ = (\u3|rx_cnt\(0) & ((\u2|receive_byte_r\(7)))) # (!\u3|rx_cnt\(0) & (\u3|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rx_cnt\(0),
	datab => \u3|Add3~14_combout\,
	datad => \u2|receive_byte_r\(7),
	combout => \u3|Selector40~0_combout\);

-- Location: FF_X16_Y12_N13
\u3|rd_address_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u3|Selector40~0_combout\,
	sload => VCC,
	ena => \u3|rd_address_r[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(7));

-- Location: LCCOMB_X16_Y12_N16
\u3|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~16_combout\ = (\u3|rd_address_r\(8) & (\u3|Add3~15\ $ (GND))) # (!\u3|rd_address_r\(8) & (!\u3|Add3~15\ & VCC))
-- \u3|Add3~17\ = CARRY((\u3|rd_address_r\(8) & !\u3|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rd_address_r\(8),
	datad => VCC,
	cin => \u3|Add3~15\,
	combout => \u3|Add3~16_combout\,
	cout => \u3|Add3~17\);

-- Location: LCCOMB_X16_Y12_N26
\u3|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector39~0_combout\ = (\u3|rx_cnt\(1) & ((\u3|Add3~16_combout\))) # (!\u3|rx_cnt\(1) & (\u2|receive_byte_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_cnt\(1),
	datac => \u2|receive_byte_r\(0),
	datad => \u3|Add3~16_combout\,
	combout => \u3|Selector39~0_combout\);

-- Location: LCCOMB_X14_Y12_N24
\u3|rd_address_r[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|rd_address_r[8]~3_combout\ = (\u3|rx_state.rx_rd_add_state~q\ & (!\u3|always0~0_combout\ & !\u3|rx_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rx_state.rx_rd_add_state~q\,
	datac => \u3|always0~0_combout\,
	datad => \u3|rx_cnt\(0),
	combout => \u3|rd_address_r[8]~3_combout\);

-- Location: FF_X16_Y12_N27
\u3|rd_address_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector39~0_combout\,
	ena => \u3|rd_address_r[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(8));

-- Location: LCCOMB_X16_Y12_N18
\u3|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add3~18_combout\ = \u3|Add3~17\ $ (\u3|rd_address_r\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3|rd_address_r\(9),
	cin => \u3|Add3~17\,
	combout => \u3|Add3~18_combout\);

-- Location: LCCOMB_X16_Y12_N24
\u3|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector38~0_combout\ = (\u3|rx_cnt\(1) & ((\u3|Add3~18_combout\))) # (!\u3|rx_cnt\(1) & (\u2|receive_byte_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(1),
	datac => \u3|rx_cnt\(1),
	datad => \u3|Add3~18_combout\,
	combout => \u3|Selector38~0_combout\);

-- Location: FF_X16_Y12_N25
\u3|rd_address_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector38~0_combout\,
	ena => \u3|rd_address_r[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|rd_address_r\(9));

-- Location: M9K_X15_Y11_N0
\u3|u0|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "spi_memory:u3|spi_ram:u0|altsyncram:altsyncram_component|altsyncram_58n1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u3|wr_en_r~q\,
	portbre => \u3|rd_en_r~q\,
	clk0 => \u2|spi_rx_en_r~clkctrl_outclk\,
	clk1 => \u2|spi_tx_en_r~clkctrl_outclk\,
	ena0 => \u3|wr_en_r~q\,
	ena1 => \u3|u0|altsyncram_component|auto_generated|ram_block1a0~0_combout\,
	portadatain => \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u3|u0|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y11_N0
\u3|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector6~0_combout\ = (\u2|receive_byte_r\(0)) # (!\u2|receive_byte_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|receive_byte_r\(0),
	datac => \u2|receive_byte_r\(2),
	combout => \u3|Selector6~0_combout\);

-- Location: FF_X14_Y11_N1
\u3|order[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|Selector6~0_combout\,
	asdata => \u2|receive_byte_r\(2),
	sload => \u2|receive_byte_r\(1),
	ena => \u3|order[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|order\(0));

-- Location: LCCOMB_X14_Y9_N30
\u3|send_byte[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|send_byte[5]~4_combout\ = (\u3|order\(2) & (\u3|order\(1) & (\u3|u0|altsyncram_component|auto_generated|q_b\(5) & \u3|order\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|order\(2),
	datab => \u3|order\(1),
	datac => \u3|u0|altsyncram_component|auto_generated|q_b\(5),
	datad => \u3|order\(0),
	combout => \u3|send_byte[5]~4_combout\);

-- Location: LCCOMB_X14_Y9_N24
\u2|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Decoder1~0_combout\ = (\u2|send_state\(1) & (\u2|send_state\(0) & \u2|send_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|send_state\(1),
	datac => \u2|send_state\(0),
	datad => \u2|send_state\(2),
	combout => \u2|Decoder1~0_combout\);

-- Location: FF_X14_Y9_N31
\u2|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u3|send_byte[5]~4_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_out\(5));

-- Location: LCCOMB_X14_Y11_N28
\u3|send_byte[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|send_byte[4]~7_combout\ = (\u3|order\(2) & (\u3|order\(1) & (\u3|order\(0) & \u3|u0|altsyncram_component|auto_generated|q_b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|order\(2),
	datab => \u3|order\(1),
	datac => \u3|order\(0),
	datad => \u3|u0|altsyncram_component|auto_generated|q_b\(4),
	combout => \u3|send_byte[4]~7_combout\);

-- Location: FF_X14_Y11_N29
\u2|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u3|send_byte[4]~7_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_out\(4));

-- Location: LCCOMB_X14_Y9_N12
\u3|send_byte[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|send_byte[7]~6_combout\ = (\u3|order\(2) & (\u3|order\(1) & (\u3|order\(0) & \u3|u0|altsyncram_component|auto_generated|q_b\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|order\(2),
	datab => \u3|order\(1),
	datac => \u3|order\(0),
	datad => \u3|u0|altsyncram_component|auto_generated|q_b\(7),
	combout => \u3|send_byte[7]~6_combout\);

-- Location: FF_X14_Y9_N13
\u2|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u3|send_byte[7]~6_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_out\(7));

-- Location: LCCOMB_X14_Y9_N4
\u3|send_byte[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|send_byte[6]~5_combout\ = (\u3|order\(2) & (\u3|order\(1) & (\u3|order\(0) & \u3|u0|altsyncram_component|auto_generated|q_b\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|order\(2),
	datab => \u3|order\(1),
	datac => \u3|order\(0),
	datad => \u3|u0|altsyncram_component|auto_generated|q_b\(6),
	combout => \u3|send_byte[6]~5_combout\);

-- Location: FF_X14_Y9_N5
\u2|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u3|send_byte[6]~5_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_out\(6));

-- Location: LCCOMB_X14_Y9_N0
\u2|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux4~2_combout\ = (\u2|send_state\(1) & (((\u2|send_state\(0))))) # (!\u2|send_state\(1) & ((\u2|send_state\(0) & ((\u2|data_out\(6)))) # (!\u2|send_state\(0) & (\u2|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|data_out\(7),
	datab => \u2|data_out\(6),
	datac => \u2|send_state\(1),
	datad => \u2|send_state\(0),
	combout => \u2|Mux4~2_combout\);

-- Location: LCCOMB_X14_Y9_N14
\u2|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux4~3_combout\ = (\u2|send_state\(1) & ((\u2|Mux4~2_combout\ & ((\u2|data_out\(4)))) # (!\u2|Mux4~2_combout\ & (\u2|data_out\(5))))) # (!\u2|send_state\(1) & (((\u2|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|send_state\(1),
	datab => \u2|data_out\(5),
	datac => \u2|data_out\(4),
	datad => \u2|Mux4~2_combout\,
	combout => \u2|Mux4~3_combout\);

-- Location: LCCOMB_X13_Y10_N16
\u3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector1~0_combout\ = (!\u2|receive_byte_r\(1) & !\u2|receive_byte_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|receive_byte_r\(1),
	datad => \u2|receive_byte_r\(2),
	combout => \u3|Selector1~0_combout\);

-- Location: LCCOMB_X13_Y10_N12
\u3|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal6~1_combout\ = (!\u2|receive_byte_r\(3) & (\u3|Equal6~0_combout\ & (\u2|receive_byte_r\(0) & \u3|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(3),
	datab => \u3|Equal6~0_combout\,
	datac => \u2|receive_byte_r\(0),
	datad => \u3|Selector1~0_combout\,
	combout => \u3|Equal6~1_combout\);

-- Location: LCCOMB_X13_Y10_N22
\u3|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal7~0_combout\ = (!\u2|receive_byte_r\(0) & (\u2|receive_byte_r\(3) & (\u3|Equal6~0_combout\ & \u3|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(0),
	datab => \u2|receive_byte_r\(3),
	datac => \u3|Equal6~0_combout\,
	datad => \u3|Selector1~0_combout\,
	combout => \u3|Equal7~0_combout\);

-- Location: LCCOMB_X14_Y12_N14
\u3|tx_state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|tx_state~20_combout\ = (\u3|tx_state.tx_idle_state~0_combout\ & ((\u3|tx_state.tx_device_state~q\) # ((\u3|Equal6~1_combout\ & \u3|tx_state.tx_judge_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal6~1_combout\,
	datab => \u3|tx_state.tx_judge_state~q\,
	datac => \u3|tx_state.tx_device_state~q\,
	datad => \u3|tx_state.tx_idle_state~0_combout\,
	combout => \u3|tx_state~20_combout\);

-- Location: FF_X14_Y12_N15
\u3|tx_state.tx_device_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_tx_en_r~clkctrl_outclk\,
	d => \u3|tx_state~20_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|tx_state.tx_device_state~q\);

-- Location: LCCOMB_X14_Y12_N4
\u3|tx_state.tx_idle_state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|tx_state.tx_idle_state~feeder_combout\ = \u3|tx_state.tx_idle_state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|tx_state.tx_idle_state~0_combout\,
	combout => \u3|tx_state.tx_idle_state~feeder_combout\);

-- Location: FF_X14_Y12_N5
\u3|tx_state.tx_idle_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_tx_en_r~clkctrl_outclk\,
	d => \u3|tx_state.tx_idle_state~feeder_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|tx_state.tx_idle_state~q\);

-- Location: LCCOMB_X14_Y12_N18
\u3|tx_state.tx_idle_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|tx_state.tx_idle_state~0_combout\ = (\u3|tx_state.tx_judge_state~q\ & (!\u3|tx_state.tx_device_state~q\ & (!\u3|tx_state.tx_error_state~q\ & \u3|tx_state.tx_idle_state~q\))) # (!\u3|tx_state.tx_judge_state~q\ & ((\u3|tx_state.tx_device_state~q\ & 
-- (!\u3|tx_state.tx_error_state~q\ & \u3|tx_state.tx_idle_state~q\)) # (!\u3|tx_state.tx_device_state~q\ & (\u3|tx_state.tx_error_state~q\ $ (!\u3|tx_state.tx_idle_state~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tx_state.tx_judge_state~q\,
	datab => \u3|tx_state.tx_device_state~q\,
	datac => \u3|tx_state.tx_error_state~q\,
	datad => \u3|tx_state.tx_idle_state~q\,
	combout => \u3|tx_state.tx_idle_state~0_combout\);

-- Location: LCCOMB_X14_Y12_N30
\u3|tx_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|tx_state~19_combout\ = (\u3|tx_state.tx_idle_state~0_combout\ & ((\u3|tx_state.tx_error_state~q\) # ((\u3|tx_state.tx_judge_state~q\ & \u3|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tx_state.tx_judge_state~q\,
	datab => \u3|Equal7~0_combout\,
	datac => \u3|tx_state.tx_error_state~q\,
	datad => \u3|tx_state.tx_idle_state~0_combout\,
	combout => \u3|tx_state~19_combout\);

-- Location: FF_X14_Y12_N31
\u3|tx_state.tx_error_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_tx_en_r~clkctrl_outclk\,
	d => \u3|tx_state~19_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|tx_state.tx_error_state~q\);

-- Location: LCCOMB_X14_Y12_N28
\u3|tx_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|tx_state~17_combout\ = (\u3|tx_state.tx_error_state~q\) # ((\u3|tx_state.tx_device_state~q\) # (\u3|tx_state.tx_idle_state~q\ $ (\u3|tx_state.tx_judge_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tx_state.tx_error_state~q\,
	datab => \u3|tx_state.tx_device_state~q\,
	datac => \u3|tx_state.tx_idle_state~q\,
	datad => \u3|tx_state.tx_judge_state~q\,
	combout => \u3|tx_state~17_combout\);

-- Location: LCCOMB_X14_Y12_N6
\u3|tx_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|tx_state~18_combout\ = (!\u3|tx_state~17_combout\ & (((!\u3|Equal6~1_combout\ & !\u3|Equal7~0_combout\)) # (!\u3|tx_state.tx_judge_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Equal6~1_combout\,
	datab => \u3|Equal7~0_combout\,
	datac => \u3|tx_state.tx_judge_state~q\,
	datad => \u3|tx_state~17_combout\,
	combout => \u3|tx_state~18_combout\);

-- Location: FF_X14_Y12_N7
\u3|tx_state.tx_judge_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_tx_en_r~clkctrl_outclk\,
	d => \u3|tx_state~18_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|tx_state.tx_judge_state~q\);

-- Location: LCCOMB_X13_Y12_N24
\u2|cs_start1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cs_start1~0_combout\ = !\spi_cs~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_cs~input_o\,
	combout => \u2|cs_start1~0_combout\);

-- Location: LCCOMB_X13_Y12_N0
\u0|rst_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|rst_n~1_combout\ = (!\u0|rst_cnt\(5) & (\u0|rst_n~0_combout\ & \u0|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|rst_cnt\(5),
	datac => \u0|rst_n~0_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|rst_n~1_combout\);

-- Location: FF_X13_Y12_N25
\u2|cs_start1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	d => \u2|cs_start1~0_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cs_start1~q\);

-- Location: FF_X13_Y12_N31
\u2|cs_start2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	asdata => \u2|cs_start1~q\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|cs_start2~q\);

-- Location: LCCOMB_X13_Y12_N30
\u2|cs_end\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|cs_end~combout\ = LCELL((\u2|cs_start2~q\ & !\u2|cs_start1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|cs_start2~q\,
	datad => \u2|cs_start1~q\,
	combout => \u2|cs_end~combout\);

-- Location: LCCOMB_X14_Y11_N20
\u3|error_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|error_r~0_combout\ = (!\u3|order\(1) & (!\u3|order\(0) & \u3|order\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|order\(1),
	datac => \u3|order\(0),
	datad => \u3|order\(2),
	combout => \u3|error_r~0_combout\);

-- Location: FF_X14_Y10_N31
\u3|u1|lfsr_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	asdata => \u3|u1|lfsr_c[1]~14_combout\,
	clrn => \ALT_INV_spi_cs~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|lfsr_q\(1));

-- Location: LCCOMB_X14_Y10_N6
\u3|u1|lfsr_c[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c[0]~8_combout\ = \u2|receive_byte_r\(6) $ (\u3|u1|lfsr_q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|receive_byte_r\(6),
	datad => \u3|u1|lfsr_q\(6),
	combout => \u3|u1|lfsr_c[0]~8_combout\);

-- Location: LCCOMB_X14_Y10_N12
\u3|u1|lfsr_c[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c[3]~11_combout\ = \u3|u1|lfsr_q\(1) $ (\u2|receive_byte_r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u1|lfsr_q\(1),
	datad => \u2|receive_byte_r\(1),
	combout => \u3|u1|lfsr_c[3]~11_combout\);

-- Location: LCCOMB_X14_Y10_N4
\u3|u1|lfsr_c[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c\(3) = \u3|u1|lfsr_c[2]~10_combout\ $ (\u3|u1|lfsr_c[0]~9_combout\ $ (\u3|u1|lfsr_c[3]~11_combout\ $ (\u3|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_c[2]~10_combout\,
	datab => \u3|u1|lfsr_c[0]~9_combout\,
	datac => \u3|u1|lfsr_c[3]~11_combout\,
	datad => \u3|Equal5~0_combout\,
	combout => \u3|u1|lfsr_c\(3));

-- Location: FF_X14_Y10_N5
\u3|u1|lfsr_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|u1|lfsr_c\(3),
	clrn => \ALT_INV_spi_cs~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|lfsr_q\(3));

-- Location: LCCOMB_X14_Y10_N14
\u3|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal5~0_combout\ = \u3|u1|lfsr_q\(3) $ (\u2|receive_byte_r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u1|lfsr_q\(3),
	datad => \u2|receive_byte_r\(3),
	combout => \u3|Equal5~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\u3|u1|lfsr_c[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c\(5) = \u3|u1|lfsr_q\(4) $ (\u3|u1|lfsr_c[7]~12_combout\ $ (\u3|Equal5~0_combout\ $ (\u2|receive_byte_r\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_q\(4),
	datab => \u3|u1|lfsr_c[7]~12_combout\,
	datac => \u3|Equal5~0_combout\,
	datad => \u2|receive_byte_r\(4),
	combout => \u3|u1|lfsr_c\(5));

-- Location: FF_X14_Y10_N23
\u3|u1|lfsr_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|u1|lfsr_c\(5),
	clrn => \ALT_INV_spi_cs~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|lfsr_q\(5));

-- Location: LCCOMB_X14_Y10_N16
\u3|u1|lfsr_c[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c[7]~12_combout\ = \u3|u1|lfsr_q\(5) $ (\u2|receive_byte_r\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u3|u1|lfsr_q\(5),
	datad => \u2|receive_byte_r\(5),
	combout => \u3|u1|lfsr_c[7]~12_combout\);

-- Location: LCCOMB_X11_Y10_N4
\u3|u1|lfsr_c[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c\(6) = \u3|u1|lfsr_q\(4) $ (\u2|receive_byte_r\(4) $ (\u3|u1|lfsr_c[0]~8_combout\ $ (\u3|u1|lfsr_c[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_q\(4),
	datab => \u2|receive_byte_r\(4),
	datac => \u3|u1|lfsr_c[0]~8_combout\,
	datad => \u3|u1|lfsr_c[7]~12_combout\,
	combout => \u3|u1|lfsr_c\(6));

-- Location: FF_X11_Y10_N5
\u3|u1|lfsr_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|u1|lfsr_c\(6),
	clrn => \ALT_INV_spi_cs~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|lfsr_q\(6));

-- Location: LCCOMB_X11_Y10_N26
\u3|u1|lfsr_c[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c\(7) = \u2|receive_byte_r\(6) $ (\u3|u1|lfsr_c[0]~9_combout\ $ (\u3|u1|lfsr_q\(6) $ (\u3|u1|lfsr_c[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(6),
	datab => \u3|u1|lfsr_c[0]~9_combout\,
	datac => \u3|u1|lfsr_q\(6),
	datad => \u3|u1|lfsr_c[7]~12_combout\,
	combout => \u3|u1|lfsr_c\(7));

-- Location: FF_X11_Y10_N27
\u3|u1|lfsr_q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|u1|lfsr_c\(7),
	clrn => \ALT_INV_spi_cs~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|lfsr_q\(7));

-- Location: LCCOMB_X14_Y10_N0
\u3|u1|lfsr_c[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c[0]~9_combout\ = \u2|receive_byte_r\(7) $ (\u3|u1|lfsr_q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|receive_byte_r\(7),
	datad => \u3|u1|lfsr_q\(7),
	combout => \u3|u1|lfsr_c[0]~9_combout\);

-- Location: LCCOMB_X14_Y10_N28
\u3|u1|lfsr_c[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c\(0) = \u3|u1|lfsr_c[0]~9_combout\ $ (\u3|u1|lfsr_c[0]~8_combout\ $ (\u3|u1|lfsr_q\(0) $ (\u2|receive_byte_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_c[0]~9_combout\,
	datab => \u3|u1|lfsr_c[0]~8_combout\,
	datac => \u3|u1|lfsr_q\(0),
	datad => \u2|receive_byte_r\(0),
	combout => \u3|u1|lfsr_c\(0));

-- Location: FF_X14_Y10_N29
\u3|u1|lfsr_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|u1|lfsr_c\(0),
	clrn => \ALT_INV_spi_cs~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|lfsr_q\(0));

-- Location: LCCOMB_X14_Y10_N30
\u3|u1|lfsr_c[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c[1]~13_combout\ = \u3|u1|lfsr_q\(0) $ (\u2|receive_byte_r\(0) $ (!\u2|receive_byte_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_q\(0),
	datab => \u2|receive_byte_r\(0),
	datad => \u2|receive_byte_r\(1),
	combout => \u3|u1|lfsr_c[1]~13_combout\);

-- Location: LCCOMB_X14_Y10_N18
\u3|u1|lfsr_c[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c[1]~14_combout\ = \u2|receive_byte_r\(6) $ (\u3|u1|lfsr_q\(1) $ (\u3|u1|lfsr_c[1]~13_combout\ $ (!\u3|u1|lfsr_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|receive_byte_r\(6),
	datab => \u3|u1|lfsr_q\(1),
	datac => \u3|u1|lfsr_c[1]~13_combout\,
	datad => \u3|u1|lfsr_q\(6),
	combout => \u3|u1|lfsr_c[1]~14_combout\);

-- Location: LCCOMB_X14_Y10_N8
\u3|u1|lfsr_c[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c\(2) = \u3|u1|lfsr_c[1]~14_combout\ $ (\u3|u1|lfsr_q\(2) $ (\u2|receive_byte_r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_c[1]~14_combout\,
	datac => \u3|u1|lfsr_q\(2),
	datad => \u2|receive_byte_r\(2),
	combout => \u3|u1|lfsr_c\(2));

-- Location: FF_X14_Y10_N9
\u3|u1|lfsr_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|u1|lfsr_c\(2),
	clrn => \ALT_INV_spi_cs~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|lfsr_q\(2));

-- Location: LCCOMB_X14_Y10_N10
\u3|u1|lfsr_c[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c[2]~10_combout\ = \u3|u1|lfsr_q\(2) $ (\u2|receive_byte_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|u1|lfsr_q\(2),
	datac => \u2|receive_byte_r\(2),
	combout => \u3|u1|lfsr_c[2]~10_combout\);

-- Location: LCCOMB_X14_Y10_N20
\u3|u1|lfsr_c[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|u1|lfsr_c\(4) = \u3|u1|lfsr_c[2]~10_combout\ $ (\u3|Equal5~0_combout\ $ (\u3|u1|lfsr_q\(4) $ (\u2|receive_byte_r\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_c[2]~10_combout\,
	datab => \u3|Equal5~0_combout\,
	datac => \u3|u1|lfsr_q\(4),
	datad => \u2|receive_byte_r\(4),
	combout => \u3|u1|lfsr_c\(4));

-- Location: FF_X14_Y10_N21
\u3|u1|lfsr_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_rx_en_r~clkctrl_outclk\,
	d => \u3|u1|lfsr_c\(4),
	clrn => \ALT_INV_spi_cs~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|u1|lfsr_q\(4));

-- Location: LCCOMB_X14_Y10_N26
\u3|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal5~2_combout\ = (\u3|u1|lfsr_q\(5) & (\u2|receive_byte_r\(5) & (\u3|u1|lfsr_q\(0) $ (!\u2|receive_byte_r\(0))))) # (!\u3|u1|lfsr_q\(5) & (!\u2|receive_byte_r\(5) & (\u3|u1|lfsr_q\(0) $ (!\u2|receive_byte_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_q\(5),
	datab => \u3|u1|lfsr_q\(0),
	datac => \u2|receive_byte_r\(0),
	datad => \u2|receive_byte_r\(5),
	combout => \u3|Equal5~2_combout\);

-- Location: LCCOMB_X14_Y10_N2
\u3|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal5~3_combout\ = (\u3|Equal5~2_combout\ & (!\u3|u1|lfsr_c[3]~11_combout\ & (\u3|u1|lfsr_q\(4) $ (!\u2|receive_byte_r\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_q\(4),
	datab => \u2|receive_byte_r\(4),
	datac => \u3|Equal5~2_combout\,
	datad => \u3|u1|lfsr_c[3]~11_combout\,
	combout => \u3|Equal5~3_combout\);

-- Location: LCCOMB_X14_Y10_N24
\u3|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal5~1_combout\ = (!\u3|u1|lfsr_c[2]~10_combout\ & (!\u3|u1|lfsr_c[0]~9_combout\ & (!\u3|Equal5~0_combout\ & !\u3|u1|lfsr_c[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|u1|lfsr_c[2]~10_combout\,
	datab => \u3|u1|lfsr_c[0]~9_combout\,
	datac => \u3|Equal5~0_combout\,
	datad => \u3|u1|lfsr_c[0]~8_combout\,
	combout => \u3|Equal5~1_combout\);

-- Location: LCCOMB_X14_Y12_N12
\u3|error_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|error_r~1_combout\ = (\u3|error_r~0_combout\ & (((!\u3|Equal5~1_combout\)) # (!\u3|Equal5~3_combout\))) # (!\u3|error_r~0_combout\ & (((\u3|error_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|error_r~0_combout\,
	datab => \u3|Equal5~3_combout\,
	datac => \u3|error_r~q\,
	datad => \u3|Equal5~1_combout\,
	combout => \u3|error_r~1_combout\);

-- Location: FF_X14_Y12_N13
\u3|error_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|cs_end~combout\,
	d => \u3|error_r~1_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|error_r~q\);

-- Location: LCCOMB_X14_Y12_N2
\u3|Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector85~0_combout\ = (\u3|Equal7~0_combout\ & (\u3|error_r~q\)) # (!\u3|Equal7~0_combout\ & (((\u3|send_byte_r\(0)) # (\u3|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|error_r~q\,
	datab => \u3|send_byte_r\(0),
	datac => \u3|Equal7~0_combout\,
	datad => \u3|Equal6~1_combout\,
	combout => \u3|Selector85~0_combout\);

-- Location: LCCOMB_X14_Y12_N16
\u3|Selector85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector85~1_combout\ = (\u3|tx_state.tx_error_state~q\ & (\u3|error_r~q\ & ((\u3|send_byte_r\(0)) # (\u3|tx_state.tx_idle_state~q\)))) # (!\u3|tx_state.tx_error_state~q\ & (((\u3|send_byte_r\(0)) # (\u3|tx_state.tx_idle_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tx_state.tx_error_state~q\,
	datab => \u3|error_r~q\,
	datac => \u3|send_byte_r\(0),
	datad => \u3|tx_state.tx_idle_state~q\,
	combout => \u3|Selector85~1_combout\);

-- Location: LCCOMB_X14_Y12_N20
\u3|Selector85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Selector85~2_combout\ = (\u3|Selector85~1_combout\ & ((\u3|Selector85~0_combout\) # (!\u3|tx_state.tx_judge_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tx_state.tx_judge_state~q\,
	datac => \u3|Selector85~0_combout\,
	datad => \u3|Selector85~1_combout\,
	combout => \u3|Selector85~2_combout\);

-- Location: FF_X14_Y12_N21
\u3|send_byte_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u2|spi_tx_en_r~clkctrl_outclk\,
	d => \u3|Selector85~2_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|send_byte_r\(0));

-- Location: LCCOMB_X14_Y11_N26
\u3|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Equal10~0_combout\ = (\u3|order\(2) & (\u3|order\(0) & \u3|order\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|order\(2),
	datac => \u3|order\(0),
	datad => \u3|order\(1),
	combout => \u3|Equal10~0_combout\);

-- Location: LCCOMB_X14_Y11_N30
\u3|send_byte[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|send_byte[0]~3_combout\ = (\u3|Equal10~0_combout\ & ((\u3|u0|altsyncram_component|auto_generated|q_b\(0)))) # (!\u3|Equal10~0_combout\ & (\u3|send_byte_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|send_byte_r\(0),
	datac => \u3|Equal10~0_combout\,
	datad => \u3|u0|altsyncram_component|auto_generated|q_b\(0),
	combout => \u3|send_byte[0]~3_combout\);

-- Location: FF_X14_Y11_N31
\u2|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u3|send_byte[0]~3_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_out\(0));

-- Location: LCCOMB_X14_Y11_N22
\u3|send_byte[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|send_byte[1]~0_combout\ = (\u3|order\(2) & (\u3|order\(1) & (\u3|order\(0) & \u3|u0|altsyncram_component|auto_generated|q_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|order\(2),
	datab => \u3|order\(1),
	datac => \u3|order\(0),
	datad => \u3|u0|altsyncram_component|auto_generated|q_b\(1),
	combout => \u3|send_byte[1]~0_combout\);

-- Location: FF_X14_Y11_N23
\u2|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u3|send_byte[1]~0_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_out\(1));

-- Location: LCCOMB_X14_Y9_N22
\u3|send_byte[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|send_byte[2]~1_combout\ = (\u3|order\(2) & (\u3|order\(1) & (\u3|order\(0) & \u3|u0|altsyncram_component|auto_generated|q_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|order\(2),
	datab => \u3|order\(1),
	datac => \u3|order\(0),
	datad => \u3|u0|altsyncram_component|auto_generated|q_b\(2),
	combout => \u3|send_byte[2]~1_combout\);

-- Location: FF_X14_Y9_N23
\u2|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u3|send_byte[2]~1_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_out\(2));

-- Location: LCCOMB_X14_Y11_N24
\u3|send_byte[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|send_byte[3]~2_combout\ = (\u3|order\(2) & (\u3|order\(1) & (\u3|u0|altsyncram_component|auto_generated|q_b\(3) & \u3|order\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|order\(2),
	datab => \u3|order\(1),
	datac => \u3|u0|altsyncram_component|auto_generated|q_b\(3),
	datad => \u3|order\(0),
	combout => \u3|send_byte[3]~2_combout\);

-- Location: FF_X14_Y11_N25
\u2|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u3|send_byte[3]~2_combout\,
	clrn => \u3|ALT_INV_always0~0_combout\,
	ena => \u2|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|data_out\(3));

-- Location: LCCOMB_X14_Y9_N2
\u2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux4~0_combout\ = (\u2|send_state\(1) & (\u2|send_state\(0))) # (!\u2|send_state\(1) & ((\u2|send_state\(0) & (\u2|data_out\(2))) # (!\u2|send_state\(0) & ((\u2|data_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|send_state\(1),
	datab => \u2|send_state\(0),
	datac => \u2|data_out\(2),
	datad => \u2|data_out\(3),
	combout => \u2|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y9_N16
\u2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Mux4~1_combout\ = (\u2|send_state\(1) & ((\u2|Mux4~0_combout\ & (\u2|data_out\(0))) # (!\u2|Mux4~0_combout\ & ((\u2|data_out\(1)))))) # (!\u2|send_state\(1) & (((\u2|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|send_state\(1),
	datab => \u2|data_out\(0),
	datac => \u2|data_out\(1),
	datad => \u2|Mux4~0_combout\,
	combout => \u2|Mux4~1_combout\);

-- Location: LCCOMB_X14_Y9_N20
\u2|spi_miso_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|spi_miso_r~0_combout\ = (\u2|send_state\(2) & ((\u2|Mux4~1_combout\))) # (!\u2|send_state\(2) & (\u2|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|send_state\(2),
	datac => \u2|Mux4~3_combout\,
	datad => \u2|Mux4~1_combout\,
	combout => \u2|spi_miso_r~0_combout\);

-- Location: LCCOMB_X14_Y9_N28
\u2|spi_miso_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|spi_miso_r~1_combout\ = (\u3|always0~0_combout\ & (\u2|spi_miso_r~q\)) # (!\u3|always0~0_combout\ & ((\u2|spi_miso_r~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|always0~0_combout\,
	datac => \u2|spi_miso_r~q\,
	datad => \u2|spi_miso_r~0_combout\,
	combout => \u2|spi_miso_r~1_combout\);

-- Location: FF_X14_Y9_N29
\u2|spi_miso_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_spi_clk~inputclkctrl_outclk\,
	d => \u2|spi_miso_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|spi_miso_r~q\);

-- Location: LCCOMB_X12_Y11_N0
\u1|time_cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[0]~32_combout\ = \u1|time_cnt\(0) $ (VCC)
-- \u1|time_cnt[0]~33\ = CARRY(\u1|time_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(0),
	datad => VCC,
	combout => \u1|time_cnt[0]~32_combout\,
	cout => \u1|time_cnt[0]~33\);

-- Location: FF_X13_Y11_N21
\u1|time_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~inputclkctrl_outclk\,
	asdata => \u1|time_cnt[0]~32_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(0));

-- Location: LCCOMB_X12_Y11_N2
\u1|time_cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[1]~34_combout\ = (\u1|time_cnt\(1) & (!\u1|time_cnt[0]~33\)) # (!\u1|time_cnt\(1) & ((\u1|time_cnt[0]~33\) # (GND)))
-- \u1|time_cnt[1]~35\ = CARRY((!\u1|time_cnt[0]~33\) # (!\u1|time_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(1),
	datad => VCC,
	cin => \u1|time_cnt[0]~33\,
	combout => \u1|time_cnt[1]~34_combout\,
	cout => \u1|time_cnt[1]~35\);

-- Location: FF_X12_Y11_N3
\u1|time_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[1]~34_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(1));

-- Location: LCCOMB_X12_Y11_N4
\u1|time_cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[2]~36_combout\ = (\u1|time_cnt\(2) & (\u1|time_cnt[1]~35\ $ (GND))) # (!\u1|time_cnt\(2) & (!\u1|time_cnt[1]~35\ & VCC))
-- \u1|time_cnt[2]~37\ = CARRY((\u1|time_cnt\(2) & !\u1|time_cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(2),
	datad => VCC,
	cin => \u1|time_cnt[1]~35\,
	combout => \u1|time_cnt[2]~36_combout\,
	cout => \u1|time_cnt[2]~37\);

-- Location: FF_X12_Y11_N5
\u1|time_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[2]~36_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(2));

-- Location: LCCOMB_X12_Y11_N6
\u1|time_cnt[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[3]~38_combout\ = (\u1|time_cnt\(3) & (!\u1|time_cnt[2]~37\)) # (!\u1|time_cnt\(3) & ((\u1|time_cnt[2]~37\) # (GND)))
-- \u1|time_cnt[3]~39\ = CARRY((!\u1|time_cnt[2]~37\) # (!\u1|time_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(3),
	datad => VCC,
	cin => \u1|time_cnt[2]~37\,
	combout => \u1|time_cnt[3]~38_combout\,
	cout => \u1|time_cnt[3]~39\);

-- Location: FF_X12_Y11_N7
\u1|time_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[3]~38_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(3));

-- Location: LCCOMB_X12_Y11_N8
\u1|time_cnt[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[4]~40_combout\ = (\u1|time_cnt\(4) & (\u1|time_cnt[3]~39\ $ (GND))) # (!\u1|time_cnt\(4) & (!\u1|time_cnt[3]~39\ & VCC))
-- \u1|time_cnt[4]~41\ = CARRY((\u1|time_cnt\(4) & !\u1|time_cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(4),
	datad => VCC,
	cin => \u1|time_cnt[3]~39\,
	combout => \u1|time_cnt[4]~40_combout\,
	cout => \u1|time_cnt[4]~41\);

-- Location: FF_X12_Y11_N9
\u1|time_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[4]~40_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(4));

-- Location: LCCOMB_X12_Y11_N10
\u1|time_cnt[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[5]~42_combout\ = (\u1|time_cnt\(5) & (!\u1|time_cnt[4]~41\)) # (!\u1|time_cnt\(5) & ((\u1|time_cnt[4]~41\) # (GND)))
-- \u1|time_cnt[5]~43\ = CARRY((!\u1|time_cnt[4]~41\) # (!\u1|time_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(5),
	datad => VCC,
	cin => \u1|time_cnt[4]~41\,
	combout => \u1|time_cnt[5]~42_combout\,
	cout => \u1|time_cnt[5]~43\);

-- Location: FF_X12_Y11_N11
\u1|time_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[5]~42_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(5));

-- Location: LCCOMB_X12_Y11_N12
\u1|time_cnt[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[6]~44_combout\ = (\u1|time_cnt\(6) & (\u1|time_cnt[5]~43\ $ (GND))) # (!\u1|time_cnt\(6) & (!\u1|time_cnt[5]~43\ & VCC))
-- \u1|time_cnt[6]~45\ = CARRY((\u1|time_cnt\(6) & !\u1|time_cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(6),
	datad => VCC,
	cin => \u1|time_cnt[5]~43\,
	combout => \u1|time_cnt[6]~44_combout\,
	cout => \u1|time_cnt[6]~45\);

-- Location: FF_X12_Y11_N13
\u1|time_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[6]~44_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(6));

-- Location: LCCOMB_X12_Y11_N14
\u1|time_cnt[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[7]~46_combout\ = (\u1|time_cnt\(7) & (!\u1|time_cnt[6]~45\)) # (!\u1|time_cnt\(7) & ((\u1|time_cnt[6]~45\) # (GND)))
-- \u1|time_cnt[7]~47\ = CARRY((!\u1|time_cnt[6]~45\) # (!\u1|time_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(7),
	datad => VCC,
	cin => \u1|time_cnt[6]~45\,
	combout => \u1|time_cnt[7]~46_combout\,
	cout => \u1|time_cnt[7]~47\);

-- Location: FF_X12_Y11_N15
\u1|time_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[7]~46_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(7));

-- Location: LCCOMB_X12_Y11_N16
\u1|time_cnt[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[8]~48_combout\ = (\u1|time_cnt\(8) & (\u1|time_cnt[7]~47\ $ (GND))) # (!\u1|time_cnt\(8) & (!\u1|time_cnt[7]~47\ & VCC))
-- \u1|time_cnt[8]~49\ = CARRY((\u1|time_cnt\(8) & !\u1|time_cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(8),
	datad => VCC,
	cin => \u1|time_cnt[7]~47\,
	combout => \u1|time_cnt[8]~48_combout\,
	cout => \u1|time_cnt[8]~49\);

-- Location: FF_X12_Y11_N17
\u1|time_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[8]~48_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(8));

-- Location: LCCOMB_X12_Y11_N18
\u1|time_cnt[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[9]~50_combout\ = (\u1|time_cnt\(9) & (!\u1|time_cnt[8]~49\)) # (!\u1|time_cnt\(9) & ((\u1|time_cnt[8]~49\) # (GND)))
-- \u1|time_cnt[9]~51\ = CARRY((!\u1|time_cnt[8]~49\) # (!\u1|time_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(9),
	datad => VCC,
	cin => \u1|time_cnt[8]~49\,
	combout => \u1|time_cnt[9]~50_combout\,
	cout => \u1|time_cnt[9]~51\);

-- Location: FF_X12_Y11_N19
\u1|time_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[9]~50_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(9));

-- Location: LCCOMB_X12_Y11_N20
\u1|time_cnt[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[10]~52_combout\ = (\u1|time_cnt\(10) & (\u1|time_cnt[9]~51\ $ (GND))) # (!\u1|time_cnt\(10) & (!\u1|time_cnt[9]~51\ & VCC))
-- \u1|time_cnt[10]~53\ = CARRY((\u1|time_cnt\(10) & !\u1|time_cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(10),
	datad => VCC,
	cin => \u1|time_cnt[9]~51\,
	combout => \u1|time_cnt[10]~52_combout\,
	cout => \u1|time_cnt[10]~53\);

-- Location: FF_X12_Y11_N21
\u1|time_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[10]~52_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(10));

-- Location: LCCOMB_X12_Y11_N22
\u1|time_cnt[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[11]~54_combout\ = (\u1|time_cnt\(11) & (!\u1|time_cnt[10]~53\)) # (!\u1|time_cnt\(11) & ((\u1|time_cnt[10]~53\) # (GND)))
-- \u1|time_cnt[11]~55\ = CARRY((!\u1|time_cnt[10]~53\) # (!\u1|time_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(11),
	datad => VCC,
	cin => \u1|time_cnt[10]~53\,
	combout => \u1|time_cnt[11]~54_combout\,
	cout => \u1|time_cnt[11]~55\);

-- Location: FF_X12_Y11_N23
\u1|time_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[11]~54_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(11));

-- Location: LCCOMB_X12_Y11_N24
\u1|time_cnt[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[12]~56_combout\ = (\u1|time_cnt\(12) & (\u1|time_cnt[11]~55\ $ (GND))) # (!\u1|time_cnt\(12) & (!\u1|time_cnt[11]~55\ & VCC))
-- \u1|time_cnt[12]~57\ = CARRY((\u1|time_cnt\(12) & !\u1|time_cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(12),
	datad => VCC,
	cin => \u1|time_cnt[11]~55\,
	combout => \u1|time_cnt[12]~56_combout\,
	cout => \u1|time_cnt[12]~57\);

-- Location: FF_X12_Y11_N25
\u1|time_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[12]~56_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(12));

-- Location: LCCOMB_X12_Y11_N26
\u1|time_cnt[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[13]~58_combout\ = (\u1|time_cnt\(13) & (!\u1|time_cnt[12]~57\)) # (!\u1|time_cnt\(13) & ((\u1|time_cnt[12]~57\) # (GND)))
-- \u1|time_cnt[13]~59\ = CARRY((!\u1|time_cnt[12]~57\) # (!\u1|time_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(13),
	datad => VCC,
	cin => \u1|time_cnt[12]~57\,
	combout => \u1|time_cnt[13]~58_combout\,
	cout => \u1|time_cnt[13]~59\);

-- Location: FF_X12_Y11_N27
\u1|time_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[13]~58_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(13));

-- Location: LCCOMB_X12_Y11_N28
\u1|time_cnt[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[14]~60_combout\ = (\u1|time_cnt\(14) & (\u1|time_cnt[13]~59\ $ (GND))) # (!\u1|time_cnt\(14) & (!\u1|time_cnt[13]~59\ & VCC))
-- \u1|time_cnt[14]~61\ = CARRY((\u1|time_cnt\(14) & !\u1|time_cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(14),
	datad => VCC,
	cin => \u1|time_cnt[13]~59\,
	combout => \u1|time_cnt[14]~60_combout\,
	cout => \u1|time_cnt[14]~61\);

-- Location: FF_X12_Y11_N29
\u1|time_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[14]~60_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(14));

-- Location: LCCOMB_X12_Y11_N30
\u1|time_cnt[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[15]~62_combout\ = (\u1|time_cnt\(15) & (!\u1|time_cnt[14]~61\)) # (!\u1|time_cnt\(15) & ((\u1|time_cnt[14]~61\) # (GND)))
-- \u1|time_cnt[15]~63\ = CARRY((!\u1|time_cnt[14]~61\) # (!\u1|time_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(15),
	datad => VCC,
	cin => \u1|time_cnt[14]~61\,
	combout => \u1|time_cnt[15]~62_combout\,
	cout => \u1|time_cnt[15]~63\);

-- Location: FF_X12_Y11_N31
\u1|time_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[15]~62_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(15));

-- Location: LCCOMB_X12_Y10_N0
\u1|time_cnt[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[16]~64_combout\ = (\u1|time_cnt\(16) & (\u1|time_cnt[15]~63\ $ (GND))) # (!\u1|time_cnt\(16) & (!\u1|time_cnt[15]~63\ & VCC))
-- \u1|time_cnt[16]~65\ = CARRY((\u1|time_cnt\(16) & !\u1|time_cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(16),
	datad => VCC,
	cin => \u1|time_cnt[15]~63\,
	combout => \u1|time_cnt[16]~64_combout\,
	cout => \u1|time_cnt[16]~65\);

-- Location: FF_X12_Y10_N1
\u1|time_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[16]~64_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(16));

-- Location: LCCOMB_X12_Y10_N2
\u1|time_cnt[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[17]~66_combout\ = (\u1|time_cnt\(17) & (!\u1|time_cnt[16]~65\)) # (!\u1|time_cnt\(17) & ((\u1|time_cnt[16]~65\) # (GND)))
-- \u1|time_cnt[17]~67\ = CARRY((!\u1|time_cnt[16]~65\) # (!\u1|time_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(17),
	datad => VCC,
	cin => \u1|time_cnt[16]~65\,
	combout => \u1|time_cnt[17]~66_combout\,
	cout => \u1|time_cnt[17]~67\);

-- Location: FF_X12_Y10_N3
\u1|time_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[17]~66_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(17));

-- Location: LCCOMB_X12_Y10_N4
\u1|time_cnt[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[18]~68_combout\ = (\u1|time_cnt\(18) & (\u1|time_cnt[17]~67\ $ (GND))) # (!\u1|time_cnt\(18) & (!\u1|time_cnt[17]~67\ & VCC))
-- \u1|time_cnt[18]~69\ = CARRY((\u1|time_cnt\(18) & !\u1|time_cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(18),
	datad => VCC,
	cin => \u1|time_cnt[17]~67\,
	combout => \u1|time_cnt[18]~68_combout\,
	cout => \u1|time_cnt[18]~69\);

-- Location: FF_X12_Y10_N5
\u1|time_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[18]~68_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(18));

-- Location: LCCOMB_X12_Y10_N6
\u1|time_cnt[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[19]~70_combout\ = (\u1|time_cnt\(19) & (!\u1|time_cnt[18]~69\)) # (!\u1|time_cnt\(19) & ((\u1|time_cnt[18]~69\) # (GND)))
-- \u1|time_cnt[19]~71\ = CARRY((!\u1|time_cnt[18]~69\) # (!\u1|time_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(19),
	datad => VCC,
	cin => \u1|time_cnt[18]~69\,
	combout => \u1|time_cnt[19]~70_combout\,
	cout => \u1|time_cnt[19]~71\);

-- Location: FF_X12_Y10_N7
\u1|time_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[19]~70_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(19));

-- Location: LCCOMB_X12_Y10_N8
\u1|time_cnt[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[20]~72_combout\ = (\u1|time_cnt\(20) & (\u1|time_cnt[19]~71\ $ (GND))) # (!\u1|time_cnt\(20) & (!\u1|time_cnt[19]~71\ & VCC))
-- \u1|time_cnt[20]~73\ = CARRY((\u1|time_cnt\(20) & !\u1|time_cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(20),
	datad => VCC,
	cin => \u1|time_cnt[19]~71\,
	combout => \u1|time_cnt[20]~72_combout\,
	cout => \u1|time_cnt[20]~73\);

-- Location: FF_X12_Y10_N9
\u1|time_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[20]~72_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(20));

-- Location: LCCOMB_X12_Y10_N10
\u1|time_cnt[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[21]~74_combout\ = (\u1|time_cnt\(21) & (!\u1|time_cnt[20]~73\)) # (!\u1|time_cnt\(21) & ((\u1|time_cnt[20]~73\) # (GND)))
-- \u1|time_cnt[21]~75\ = CARRY((!\u1|time_cnt[20]~73\) # (!\u1|time_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(21),
	datad => VCC,
	cin => \u1|time_cnt[20]~73\,
	combout => \u1|time_cnt[21]~74_combout\,
	cout => \u1|time_cnt[21]~75\);

-- Location: FF_X12_Y10_N11
\u1|time_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[21]~74_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(21));

-- Location: LCCOMB_X12_Y10_N12
\u1|time_cnt[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[22]~76_combout\ = (\u1|time_cnt\(22) & (\u1|time_cnt[21]~75\ $ (GND))) # (!\u1|time_cnt\(22) & (!\u1|time_cnt[21]~75\ & VCC))
-- \u1|time_cnt[22]~77\ = CARRY((\u1|time_cnt\(22) & !\u1|time_cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(22),
	datad => VCC,
	cin => \u1|time_cnt[21]~75\,
	combout => \u1|time_cnt[22]~76_combout\,
	cout => \u1|time_cnt[22]~77\);

-- Location: FF_X12_Y10_N13
\u1|time_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[22]~76_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(22));

-- Location: LCCOMB_X12_Y10_N14
\u1|time_cnt[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[23]~78_combout\ = (\u1|time_cnt\(23) & (!\u1|time_cnt[22]~77\)) # (!\u1|time_cnt\(23) & ((\u1|time_cnt[22]~77\) # (GND)))
-- \u1|time_cnt[23]~79\ = CARRY((!\u1|time_cnt[22]~77\) # (!\u1|time_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(23),
	datad => VCC,
	cin => \u1|time_cnt[22]~77\,
	combout => \u1|time_cnt[23]~78_combout\,
	cout => \u1|time_cnt[23]~79\);

-- Location: FF_X12_Y10_N15
\u1|time_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[23]~78_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(23));

-- Location: LCCOMB_X12_Y10_N16
\u1|time_cnt[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[24]~80_combout\ = (\u1|time_cnt\(24) & (\u1|time_cnt[23]~79\ $ (GND))) # (!\u1|time_cnt\(24) & (!\u1|time_cnt[23]~79\ & VCC))
-- \u1|time_cnt[24]~81\ = CARRY((\u1|time_cnt\(24) & !\u1|time_cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(24),
	datad => VCC,
	cin => \u1|time_cnt[23]~79\,
	combout => \u1|time_cnt[24]~80_combout\,
	cout => \u1|time_cnt[24]~81\);

-- Location: FF_X12_Y10_N17
\u1|time_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[24]~80_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(24));

-- Location: LCCOMB_X12_Y10_N18
\u1|time_cnt[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[25]~82_combout\ = (\u1|time_cnt\(25) & (!\u1|time_cnt[24]~81\)) # (!\u1|time_cnt\(25) & ((\u1|time_cnt[24]~81\) # (GND)))
-- \u1|time_cnt[25]~83\ = CARRY((!\u1|time_cnt[24]~81\) # (!\u1|time_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(25),
	datad => VCC,
	cin => \u1|time_cnt[24]~81\,
	combout => \u1|time_cnt[25]~82_combout\,
	cout => \u1|time_cnt[25]~83\);

-- Location: FF_X12_Y10_N19
\u1|time_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[25]~82_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(25));

-- Location: LCCOMB_X12_Y10_N20
\u1|time_cnt[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[26]~84_combout\ = (\u1|time_cnt\(26) & (\u1|time_cnt[25]~83\ $ (GND))) # (!\u1|time_cnt\(26) & (!\u1|time_cnt[25]~83\ & VCC))
-- \u1|time_cnt[26]~85\ = CARRY((\u1|time_cnt\(26) & !\u1|time_cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(26),
	datad => VCC,
	cin => \u1|time_cnt[25]~83\,
	combout => \u1|time_cnt[26]~84_combout\,
	cout => \u1|time_cnt[26]~85\);

-- Location: FF_X12_Y10_N21
\u1|time_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[26]~84_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(26));

-- Location: LCCOMB_X12_Y10_N22
\u1|time_cnt[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[27]~86_combout\ = (\u1|time_cnt\(27) & (!\u1|time_cnt[26]~85\)) # (!\u1|time_cnt\(27) & ((\u1|time_cnt[26]~85\) # (GND)))
-- \u1|time_cnt[27]~87\ = CARRY((!\u1|time_cnt[26]~85\) # (!\u1|time_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(27),
	datad => VCC,
	cin => \u1|time_cnt[26]~85\,
	combout => \u1|time_cnt[27]~86_combout\,
	cout => \u1|time_cnt[27]~87\);

-- Location: FF_X12_Y10_N23
\u1|time_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[27]~86_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(27));

-- Location: LCCOMB_X13_Y11_N12
\u1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~8_combout\ = (!\u1|time_cnt\(27) & (!\u1|time_cnt\(26) & (\u1|time_cnt\(24) & !\u1|time_cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(27),
	datab => \u1|time_cnt\(26),
	datac => \u1|time_cnt\(24),
	datad => \u1|time_cnt\(25),
	combout => \u1|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y11_N6
\u1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~3_combout\ = (\u1|time_cnt\(13) & (!\u1|time_cnt\(15) & (\u1|time_cnt\(12) & \u1|time_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(13),
	datab => \u1|time_cnt\(15),
	datac => \u1|time_cnt\(12),
	datad => \u1|time_cnt\(14),
	combout => \u1|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y11_N24
\u1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (!\u1|time_cnt\(8) & (!\u1|time_cnt\(10) & (\u1|time_cnt\(11) & !\u1|time_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(8),
	datab => \u1|time_cnt\(10),
	datac => \u1|time_cnt\(11),
	datad => \u1|time_cnt\(9),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y11_N22
\u1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (\u1|time_cnt\(1) & (\u1|time_cnt\(2) & (\u1|time_cnt\(3) & \u1|time_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(1),
	datab => \u1|time_cnt\(2),
	datac => \u1|time_cnt\(3),
	datad => \u1|time_cnt\(0),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y11_N16
\u1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (!\u1|time_cnt\(6) & (\u1|time_cnt\(5) & (\u1|time_cnt\(4) & !\u1|time_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(6),
	datab => \u1|time_cnt\(5),
	datac => \u1|time_cnt\(4),
	datad => \u1|time_cnt\(7),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y11_N8
\u1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~4_combout\ = (\u1|Equal0~3_combout\ & (\u1|Equal0~2_combout\ & (\u1|Equal0~0_combout\ & \u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~3_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Equal0~1_combout\,
	combout => \u1|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y10_N24
\u1|time_cnt[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[28]~88_combout\ = (\u1|time_cnt\(28) & (\u1|time_cnt[27]~87\ $ (GND))) # (!\u1|time_cnt\(28) & (!\u1|time_cnt[27]~87\ & VCC))
-- \u1|time_cnt[28]~89\ = CARRY((\u1|time_cnt\(28) & !\u1|time_cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(28),
	datad => VCC,
	cin => \u1|time_cnt[27]~87\,
	combout => \u1|time_cnt[28]~88_combout\,
	cout => \u1|time_cnt[28]~89\);

-- Location: FF_X12_Y10_N25
\u1|time_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[28]~88_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(28));

-- Location: LCCOMB_X12_Y10_N26
\u1|time_cnt[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[29]~90_combout\ = (\u1|time_cnt\(29) & (!\u1|time_cnt[28]~89\)) # (!\u1|time_cnt\(29) & ((\u1|time_cnt[28]~89\) # (GND)))
-- \u1|time_cnt[29]~91\ = CARRY((!\u1|time_cnt[28]~89\) # (!\u1|time_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(29),
	datad => VCC,
	cin => \u1|time_cnt[28]~89\,
	combout => \u1|time_cnt[29]~90_combout\,
	cout => \u1|time_cnt[29]~91\);

-- Location: FF_X12_Y10_N27
\u1|time_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[29]~90_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(29));

-- Location: LCCOMB_X12_Y10_N28
\u1|time_cnt[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[30]~92_combout\ = (\u1|time_cnt\(30) & (\u1|time_cnt[29]~91\ $ (GND))) # (!\u1|time_cnt\(30) & (!\u1|time_cnt[29]~91\ & VCC))
-- \u1|time_cnt[30]~93\ = CARRY((\u1|time_cnt\(30) & !\u1|time_cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|time_cnt\(30),
	datad => VCC,
	cin => \u1|time_cnt[29]~91\,
	combout => \u1|time_cnt[30]~92_combout\,
	cout => \u1|time_cnt[30]~93\);

-- Location: FF_X12_Y10_N29
\u1|time_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[30]~92_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(30));

-- Location: LCCOMB_X12_Y10_N30
\u1|time_cnt[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|time_cnt[31]~94_combout\ = \u1|time_cnt\(31) $ (\u1|time_cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(31),
	cin => \u1|time_cnt[30]~93\,
	combout => \u1|time_cnt[31]~94_combout\);

-- Location: FF_X12_Y10_N31
\u1|time_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_25m~input_o\,
	d => \u1|time_cnt[31]~94_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	sclr => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|time_cnt\(31));

-- Location: LCCOMB_X13_Y11_N14
\u1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~9_combout\ = (!\u1|time_cnt\(30) & (!\u1|time_cnt\(28) & (!\u1|time_cnt\(31) & !\u1|time_cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(30),
	datab => \u1|time_cnt\(28),
	datac => \u1|time_cnt\(31),
	datad => \u1|time_cnt\(29),
	combout => \u1|Equal0~9_combout\);

-- Location: LCCOMB_X13_Y11_N4
\u1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~6_combout\ = (\u1|time_cnt\(21) & \u1|time_cnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(21),
	datad => \u1|time_cnt\(20),
	combout => \u1|Equal0~6_combout\);

-- Location: LCCOMB_X13_Y11_N2
\u1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~5_combout\ = (\u1|time_cnt\(19) & (!\u1|time_cnt\(17) & (\u1|time_cnt\(16) & \u1|time_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(19),
	datab => \u1|time_cnt\(17),
	datac => \u1|time_cnt\(16),
	datad => \u1|time_cnt\(18),
	combout => \u1|Equal0~5_combout\);

-- Location: LCCOMB_X13_Y11_N28
\u1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Equal0~7_combout\ = (!\u1|time_cnt\(23) & (\u1|time_cnt\(22) & (\u1|Equal0~6_combout\ & \u1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|time_cnt\(23),
	datab => \u1|time_cnt\(22),
	datac => \u1|Equal0~6_combout\,
	datad => \u1|Equal0~5_combout\,
	combout => \u1|Equal0~7_combout\);

-- Location: LCCOMB_X13_Y11_N30
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\u1|Equal0~8_combout\ & (\u1|Equal0~4_combout\ & (\u1|Equal0~9_combout\ & \u1|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~8_combout\,
	datab => \u1|Equal0~4_combout\,
	datac => \u1|Equal0~9_combout\,
	datad => \u1|Equal0~7_combout\,
	combout => \rtl~0_combout\);

-- Location: LCCOMB_X11_Y12_N0
\u1|fpga_led_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|fpga_led_r~0_combout\ = !\u1|fpga_led_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|fpga_led_r~q\,
	combout => \u1|fpga_led_r~0_combout\);

-- Location: FF_X11_Y12_N1
\u1|fpga_led_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0_combout\,
	d => \u1|fpga_led_r~0_combout\,
	clrn => \u0|ALT_INV_rst_n~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|fpga_led_r~q\);

ww_spi_miso <= \spi_miso~output_o\;

ww_fpga_led <= \fpga_led~output_o\;
END structure;


