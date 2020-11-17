-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Standard Edition"

-- DATE "11/07/2020 19:41:44"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rom IS
    PORT (
	rom_addr : IN std_logic_vector(2 DOWNTO 0);
	rom_value : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END rom;

-- Design Ports Information
-- rom_value[0]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_value[1]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_value[2]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_value[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_value[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_value[5]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_value[6]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_value[7]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_addr[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_addr[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_addr[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rom IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rom_addr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rom_value : std_logic_vector(7 DOWNTO 0);
SIGNAL \rom_value[0]~output_o\ : std_logic;
SIGNAL \rom_value[1]~output_o\ : std_logic;
SIGNAL \rom_value[2]~output_o\ : std_logic;
SIGNAL \rom_value[3]~output_o\ : std_logic;
SIGNAL \rom_value[4]~output_o\ : std_logic;
SIGNAL \rom_value[5]~output_o\ : std_logic;
SIGNAL \rom_value[6]~output_o\ : std_logic;
SIGNAL \rom_value[7]~output_o\ : std_logic;
SIGNAL \rom_addr[2]~input_o\ : std_logic;
SIGNAL \rom_addr[1]~input_o\ : std_logic;
SIGNAL \rom_addr[0]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rom_addr <= rom_addr;
rom_value <= ww_rom_value;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X117_Y43_N2
\rom_value[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \rom_value[0]~output_o\);

-- Location: IOOBUF_X117_Y43_N9
\rom_value[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \rom_value[1]~output_o\);

-- Location: IOOBUF_X117_Y41_N9
\rom_value[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \rom_value[2]~output_o\);

-- Location: IOOBUF_X117_Y36_N9
\rom_value[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_value[3]~output_o\);

-- Location: IOOBUF_X117_Y32_N2
\rom_value[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \rom_value[4]~output_o\);

-- Location: IOOBUF_X117_Y49_N9
\rom_value[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \rom_value[5]~output_o\);

-- Location: IOOBUF_X117_Y49_N2
\rom_value[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \rom_value[6]~output_o\);

-- Location: IOOBUF_X117_Y44_N9
\rom_value[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_value[7]~output_o\);

-- Location: IOIBUF_X117_Y28_N8
\rom_addr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rom_addr(2),
	o => \rom_addr[2]~input_o\);

-- Location: IOIBUF_X117_Y42_N1
\rom_addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rom_addr(1),
	o => \rom_addr[1]~input_o\);

-- Location: IOIBUF_X117_Y39_N1
\rom_addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rom_addr(0),
	o => \rom_addr[0]~input_o\);

-- Location: LCCOMB_X116_Y43_N24
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ((!\rom_addr[1]~input_o\ & \rom_addr[0]~input_o\)) # (!\rom_addr[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_addr[2]~input_o\,
	datab => \rom_addr[1]~input_o\,
	datac => \rom_addr[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X116_Y43_N2
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = \rom_addr[2]~input_o\ $ (((\rom_addr[1]~input_o\ & !\rom_addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_addr[2]~input_o\,
	datab => \rom_addr[1]~input_o\,
	datac => \rom_addr[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X116_Y43_N20
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ((\rom_addr[2]~input_o\ & !\rom_addr[1]~input_o\)) # (!\rom_addr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_addr[2]~input_o\,
	datab => \rom_addr[1]~input_o\,
	datac => \rom_addr[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X116_Y43_N14
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\rom_addr[2]~input_o\) # (\rom_addr[1]~input_o\ $ (!\rom_addr[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_addr[2]~input_o\,
	datab => \rom_addr[1]~input_o\,
	datac => \rom_addr[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X116_Y43_N16
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\rom_addr[2]~input_o\ & (\rom_addr[1]~input_o\ & \rom_addr[0]~input_o\)) # (!\rom_addr[2]~input_o\ & ((!\rom_addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_addr[2]~input_o\,
	datab => \rom_addr[1]~input_o\,
	datac => \rom_addr[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X116_Y43_N10
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\rom_addr[0]~input_o\ & (!\rom_addr[2]~input_o\)) # (!\rom_addr[0]~input_o\ & ((\rom_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_addr[2]~input_o\,
	datab => \rom_addr[1]~input_o\,
	datac => \rom_addr[0]~input_o\,
	combout => \Mux0~0_combout\);

ww_rom_value(0) <= \rom_value[0]~output_o\;

ww_rom_value(1) <= \rom_value[1]~output_o\;

ww_rom_value(2) <= \rom_value[2]~output_o\;

ww_rom_value(3) <= \rom_value[3]~output_o\;

ww_rom_value(4) <= \rom_value[4]~output_o\;

ww_rom_value(5) <= \rom_value[5]~output_o\;

ww_rom_value(6) <= \rom_value[6]~output_o\;

ww_rom_value(7) <= \rom_value[7]~output_o\;
END structure;


