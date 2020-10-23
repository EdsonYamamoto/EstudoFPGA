-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "09/24/2020 22:35:21"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	circuito IS
    PORT (
	A0 : IN std_logic_vector(3 DOWNTO 0);
	A1 : IN std_logic_vector(3 DOWNTO 0);
	S0 : BUFFER std_logic_vector(6 DOWNTO 0);
	S1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END circuito;

-- Design Ports Information
-- S0[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuito IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \S0[0]~output_o\ : std_logic;
SIGNAL \S0[1]~output_o\ : std_logic;
SIGNAL \S0[2]~output_o\ : std_logic;
SIGNAL \S0[3]~output_o\ : std_logic;
SIGNAL \S0[4]~output_o\ : std_logic;
SIGNAL \S0[5]~output_o\ : std_logic;
SIGNAL \S0[6]~output_o\ : std_logic;
SIGNAL \S1[0]~output_o\ : std_logic;
SIGNAL \S1[1]~output_o\ : std_logic;
SIGNAL \S1[2]~output_o\ : std_logic;
SIGNAL \S1[3]~output_o\ : std_logic;
SIGNAL \S1[4]~output_o\ : std_logic;
SIGNAL \S1[5]~output_o\ : std_logic;
SIGNAL \S1[6]~output_o\ : std_logic;
SIGNAL \A0[1]~input_o\ : std_logic;
SIGNAL \A0[3]~input_o\ : std_logic;
SIGNAL \A0[2]~input_o\ : std_logic;
SIGNAL \A0[0]~input_o\ : std_logic;
SIGNAL \decode0|Mux6~0_combout\ : std_logic;
SIGNAL \decode0|Mux5~0_combout\ : std_logic;
SIGNAL \decode0|Mux4~0_combout\ : std_logic;
SIGNAL \decode0|Mux3~0_combout\ : std_logic;
SIGNAL \decode0|Mux2~0_combout\ : std_logic;
SIGNAL \decode0|Mux1~0_combout\ : std_logic;
SIGNAL \decode0|Mux0~0_combout\ : std_logic;
SIGNAL \A1[1]~input_o\ : std_logic;
SIGNAL \A1[0]~input_o\ : std_logic;
SIGNAL \A1[3]~input_o\ : std_logic;
SIGNAL \A1[2]~input_o\ : std_logic;
SIGNAL \decode1|Mux6~0_combout\ : std_logic;
SIGNAL \decode1|Mux5~0_combout\ : std_logic;
SIGNAL \decode1|Mux4~0_combout\ : std_logic;
SIGNAL \decode1|Mux3~0_combout\ : std_logic;
SIGNAL \decode1|Mux2~0_combout\ : std_logic;
SIGNAL \decode1|Mux1~0_combout\ : std_logic;
SIGNAL \decode1|Mux0~0_combout\ : std_logic;
SIGNAL \decode1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \decode0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_A0 <= A0;
ww_A1 <= A1;
S0 <= ww_S0;
S1 <= ww_S1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\decode1|ALT_INV_Mux0~0_combout\ <= NOT \decode1|Mux0~0_combout\;
\decode0|ALT_INV_Mux0~0_combout\ <= NOT \decode0|Mux0~0_combout\;

-- Location: IOOBUF_X12_Y31_N9
\S0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S0[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\S0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S0[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\S0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S0[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\S0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S0[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\S0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S0[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\S0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S0[5]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\S0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S0[6]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\S1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S1[0]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\S1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S1[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\S1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S1[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\S1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S1[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\S1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S1[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\S1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S1[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\S1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decode1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S1[6]~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\A0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(1),
	o => \A0[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\A0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(3),
	o => \A0[3]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\A0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(2),
	o => \A0[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\A0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(0),
	o => \A0[0]~input_o\);

-- Location: LCCOMB_X15_Y1_N0
\decode0|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux6~0_combout\ = (\A0[1]~input_o\ & (\A0[3]~input_o\)) # (!\A0[1]~input_o\ & (\A0[2]~input_o\ $ (((!\A0[3]~input_o\ & \A0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \A0[3]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[0]~input_o\,
	combout => \decode0|Mux6~0_combout\);

-- Location: LCCOMB_X15_Y1_N26
\decode0|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux5~0_combout\ = (\A0[3]~input_o\ & ((\A0[1]~input_o\) # ((\A0[2]~input_o\)))) # (!\A0[3]~input_o\ & (\A0[2]~input_o\ & (\A0[1]~input_o\ $ (\A0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \A0[3]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[0]~input_o\,
	combout => \decode0|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y1_N12
\decode0|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux4~0_combout\ = (\A0[2]~input_o\ & (((\A0[3]~input_o\)))) # (!\A0[2]~input_o\ & (\A0[1]~input_o\ & ((\A0[3]~input_o\) # (!\A0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \A0[3]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[0]~input_o\,
	combout => \decode0|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y1_N22
\decode0|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux3~0_combout\ = (\A0[1]~input_o\ & ((\A0[3]~input_o\) # ((\A0[2]~input_o\ & \A0[0]~input_o\)))) # (!\A0[1]~input_o\ & (\A0[2]~input_o\ $ (((!\A0[3]~input_o\ & \A0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \A0[3]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[0]~input_o\,
	combout => \decode0|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y1_N24
\decode0|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux2~0_combout\ = (\A0[0]~input_o\) # ((\A0[1]~input_o\ & (\A0[3]~input_o\)) # (!\A0[1]~input_o\ & ((\A0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \A0[3]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[0]~input_o\,
	combout => \decode0|Mux2~0_combout\);

-- Location: LCCOMB_X15_Y1_N18
\decode0|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux1~0_combout\ = (\A0[2]~input_o\ & ((\A0[3]~input_o\) # ((\A0[1]~input_o\ & \A0[0]~input_o\)))) # (!\A0[2]~input_o\ & ((\A0[1]~input_o\) # ((!\A0[3]~input_o\ & \A0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \A0[3]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[0]~input_o\,
	combout => \decode0|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y1_N4
\decode0|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux0~0_combout\ = (\A0[1]~input_o\ & (!\A0[3]~input_o\ & ((!\A0[0]~input_o\) # (!\A0[2]~input_o\)))) # (!\A0[1]~input_o\ & (\A0[3]~input_o\ $ ((\A0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[1]~input_o\,
	datab => \A0[3]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[0]~input_o\,
	combout => \decode0|Mux0~0_combout\);

-- Location: IOIBUF_X33_Y25_N8
\A1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(1),
	o => \A1[1]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\A1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(0),
	o => \A1[0]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\A1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(3),
	o => \A1[3]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\A1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(2),
	o => \A1[2]~input_o\);

-- Location: LCCOMB_X32_Y24_N0
\decode1|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode1|Mux6~0_combout\ = (\A1[1]~input_o\ & (((\A1[3]~input_o\)))) # (!\A1[1]~input_o\ & (\A1[2]~input_o\ $ (((\A1[0]~input_o\ & !\A1[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \A1[3]~input_o\,
	datad => \A1[2]~input_o\,
	combout => \decode1|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y24_N2
\decode1|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode1|Mux5~0_combout\ = (\A1[3]~input_o\ & ((\A1[1]~input_o\) # ((\A1[2]~input_o\)))) # (!\A1[3]~input_o\ & (\A1[2]~input_o\ & (\A1[1]~input_o\ $ (\A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \A1[3]~input_o\,
	datad => \A1[2]~input_o\,
	combout => \decode1|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y24_N28
\decode1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode1|Mux4~0_combout\ = (\A1[2]~input_o\ & (((\A1[3]~input_o\)))) # (!\A1[2]~input_o\ & (\A1[1]~input_o\ & ((\A1[3]~input_o\) # (!\A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \A1[3]~input_o\,
	datad => \A1[2]~input_o\,
	combout => \decode1|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y24_N22
\decode1|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode1|Mux3~0_combout\ = (\A1[1]~input_o\ & ((\A1[3]~input_o\) # ((\A1[0]~input_o\ & \A1[2]~input_o\)))) # (!\A1[1]~input_o\ & (\A1[2]~input_o\ $ (((\A1[0]~input_o\ & !\A1[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \A1[3]~input_o\,
	datad => \A1[2]~input_o\,
	combout => \decode1|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y24_N8
\decode1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode1|Mux2~0_combout\ = (\A1[0]~input_o\) # ((\A1[1]~input_o\ & (\A1[3]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \A1[3]~input_o\,
	datad => \A1[2]~input_o\,
	combout => \decode1|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y24_N18
\decode1|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode1|Mux1~0_combout\ = (\A1[0]~input_o\ & ((\A1[1]~input_o\) # (\A1[3]~input_o\ $ (!\A1[2]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[2]~input_o\ & ((\A1[3]~input_o\))) # (!\A1[2]~input_o\ & (\A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \A1[3]~input_o\,
	datad => \A1[2]~input_o\,
	combout => \decode1|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y24_N4
\decode1|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode1|Mux0~0_combout\ = (\A1[1]~input_o\ & (!\A1[3]~input_o\ & ((!\A1[2]~input_o\) # (!\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[3]~input_o\ $ (\A1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \A1[3]~input_o\,
	datad => \A1[2]~input_o\,
	combout => \decode1|Mux0~0_combout\);

ww_S0(0) <= \S0[0]~output_o\;

ww_S0(1) <= \S0[1]~output_o\;

ww_S0(2) <= \S0[2]~output_o\;

ww_S0(3) <= \S0[3]~output_o\;

ww_S0(4) <= \S0[4]~output_o\;

ww_S0(5) <= \S0[5]~output_o\;

ww_S0(6) <= \S0[6]~output_o\;

ww_S1(0) <= \S1[0]~output_o\;

ww_S1(1) <= \S1[1]~output_o\;

ww_S1(2) <= \S1[2]~output_o\;

ww_S1(3) <= \S1[3]~output_o\;

ww_S1(4) <= \S1[4]~output_o\;

ww_S1(5) <= \S1[5]~output_o\;

ww_S1(6) <= \S1[6]~output_o\;
END structure;


