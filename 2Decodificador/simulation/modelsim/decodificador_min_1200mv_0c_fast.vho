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

-- DATE "09/25/2020 00:00:05"

-- 
-- Device: Altera EP4CGX150DF31C7 Package FBGA896
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
	S0 : OUT std_logic_vector(6 DOWNTO 0);
	S1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END circuito;

-- Design Ports Information
-- S0[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[2]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[3]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A0[3]~input_o\ : std_logic;
SIGNAL \A0[0]~input_o\ : std_logic;
SIGNAL \A0[2]~input_o\ : std_logic;
SIGNAL \A0[1]~input_o\ : std_logic;
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

-- Location: IOOBUF_X46_Y91_N2
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

-- Location: IOOBUF_X28_Y91_N9
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

-- Location: IOOBUF_X30_Y91_N2
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

-- Location: IOOBUF_X28_Y91_N16
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

-- Location: IOOBUF_X53_Y91_N2
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

-- Location: IOOBUF_X53_Y91_N23
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

-- Location: IOOBUF_X46_Y91_N9
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

-- Location: IOOBUF_X50_Y91_N9
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

-- Location: IOOBUF_X48_Y91_N16
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

-- Location: IOOBUF_X50_Y91_N2
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

-- Location: IOOBUF_X37_Y91_N2
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

-- Location: IOOBUF_X37_Y91_N9
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

-- Location: IOOBUF_X8_Y91_N16
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

-- Location: IOOBUF_X21_Y91_N23
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

-- Location: IOIBUF_X15_Y91_N15
\A0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(3),
	o => \A0[3]~input_o\);

-- Location: IOIBUF_X117_Y39_N1
\A0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(0),
	o => \A0[0]~input_o\);

-- Location: IOIBUF_X117_Y28_N8
\A0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(2),
	o => \A0[2]~input_o\);

-- Location: IOIBUF_X117_Y42_N1
\A0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0(1),
	o => \A0[1]~input_o\);

-- Location: LCCOMB_X47_Y90_N0
\decode0|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux6~0_combout\ = (\A0[1]~input_o\ & (\A0[3]~input_o\)) # (!\A0[1]~input_o\ & (\A0[2]~input_o\ $ (((!\A0[3]~input_o\ & \A0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[3]~input_o\,
	datab => \A0[0]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[1]~input_o\,
	combout => \decode0|Mux6~0_combout\);

-- Location: LCCOMB_X47_Y90_N18
\decode0|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux5~0_combout\ = (\A0[3]~input_o\ & (((\A0[2]~input_o\) # (\A0[1]~input_o\)))) # (!\A0[3]~input_o\ & (\A0[2]~input_o\ & (\A0[0]~input_o\ $ (\A0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[3]~input_o\,
	datab => \A0[0]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[1]~input_o\,
	combout => \decode0|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y90_N20
\decode0|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux4~0_combout\ = (\A0[2]~input_o\ & (\A0[3]~input_o\)) # (!\A0[2]~input_o\ & (\A0[1]~input_o\ & ((\A0[3]~input_o\) # (!\A0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[3]~input_o\,
	datab => \A0[0]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[1]~input_o\,
	combout => \decode0|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y90_N6
\decode0|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux3~0_combout\ = (\A0[1]~input_o\ & ((\A0[3]~input_o\) # ((\A0[0]~input_o\ & \A0[2]~input_o\)))) # (!\A0[1]~input_o\ & (\A0[2]~input_o\ $ (((!\A0[3]~input_o\ & \A0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[3]~input_o\,
	datab => \A0[0]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[1]~input_o\,
	combout => \decode0|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y90_N24
\decode0|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux2~0_combout\ = (\A0[0]~input_o\) # ((\A0[1]~input_o\ & (\A0[3]~input_o\)) # (!\A0[1]~input_o\ & ((\A0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[3]~input_o\,
	datab => \A0[0]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[1]~input_o\,
	combout => \decode0|Mux2~0_combout\);

-- Location: LCCOMB_X47_Y90_N26
\decode0|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux1~0_combout\ = (\A0[0]~input_o\ & ((\A0[1]~input_o\) # (\A0[3]~input_o\ $ (!\A0[2]~input_o\)))) # (!\A0[0]~input_o\ & ((\A0[2]~input_o\ & (\A0[3]~input_o\)) # (!\A0[2]~input_o\ & ((\A0[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[3]~input_o\,
	datab => \A0[0]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[1]~input_o\,
	combout => \decode0|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y90_N12
\decode0|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \decode0|Mux0~0_combout\ = (\A0[2]~input_o\ & (!\A0[3]~input_o\ & ((!\A0[1]~input_o\) # (!\A0[0]~input_o\)))) # (!\A0[2]~input_o\ & (\A0[3]~input_o\ $ (((\A0[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0[3]~input_o\,
	datab => \A0[0]~input_o\,
	datac => \A0[2]~input_o\,
	datad => \A0[1]~input_o\,
	combout => \decode0|Mux0~0_combout\);

-- Location: IOIBUF_X117_Y33_N8
\A1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(1),
	o => \A1[1]~input_o\);

-- Location: IOIBUF_X117_Y27_N8
\A1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(0),
	o => \A1[0]~input_o\);

-- Location: IOIBUF_X117_Y51_N1
\A1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(3),
	o => \A1[3]~input_o\);

-- Location: IOIBUF_X117_Y48_N1
\A1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(2),
	o => \A1[2]~input_o\);

-- Location: LCCOMB_X51_Y87_N16
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

-- Location: LCCOMB_X51_Y87_N18
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

-- Location: LCCOMB_X51_Y87_N12
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

-- Location: LCCOMB_X51_Y87_N14
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

-- Location: LCCOMB_X51_Y87_N24
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

-- Location: LCCOMB_X51_Y87_N10
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

-- Location: LCCOMB_X51_Y87_N28
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


