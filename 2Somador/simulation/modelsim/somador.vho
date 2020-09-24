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

-- DATE "09/24/2020 20:21:06"

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

ENTITY 	somador IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	S : BUFFER std_logic;
	R : BUFFER std_logic
	);
END somador;

-- Design Ports Information
-- S	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF somador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \R~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
S <= ww_S;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X117_Y43_N9
\S~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOOBUF_X117_Y43_N2
\R~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~1_combout\,
	devoe => ww_devoe,
	o => \R~output_o\);

-- Location: IOIBUF_X117_Y28_N8
\C~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X117_Y42_N1
\B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X117_Y39_N1
\A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X116_Y43_N8
\S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S~0_combout\ = \C~input_o\ $ (\B~input_o\ $ (\A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \B~input_o\,
	datad => \A~input_o\,
	combout => \S~0_combout\);

-- Location: LCCOMB_X116_Y43_N10
\S~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S~1_combout\ = \A~input_o\ $ (\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \B~input_o\,
	combout => \S~1_combout\);

ww_S <= \S~output_o\;

ww_R <= \R~output_o\;
END structure;


