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

-- DATE "10/22/2020 21:46:56"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	board IS
    PORT (
	clock : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	output : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END board;

-- Design Ports Information
-- enable	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF board IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_output : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \clock_div_counter~5_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \clock_div_counter~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \clock_div_counter~3_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \clock_div_counter~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \clock_div_counter~1_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \clock_div_counter~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \counter_enable~feeder_combout\ : std_logic;
SIGNAL \counter_enable~q\ : std_logic;
SIGNAL \bcd_counter|cnt_reg[3]~4_combout\ : std_logic;
SIGNAL \bcd_counter|cnt_reg[3]~5\ : std_logic;
SIGNAL \bcd_counter|cnt_reg[2]~6_combout\ : std_logic;
SIGNAL \bcd_counter|cnt_reg[2]~7\ : std_logic;
SIGNAL \bcd_counter|cnt_reg[1]~8_combout\ : std_logic;
SIGNAL \bcd_counter|cnt_reg[1]~9\ : std_logic;
SIGNAL \bcd_counter|cnt_reg[0]~10_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \bcd_counter|cnt_reg\ : std_logic_vector(0 TO 3);
SIGNAL clock_div_counter : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_enable <= enable;
ww_reset <= reset;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X46_Y91_N2
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X28_Y91_N9
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X30_Y91_N2
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X28_Y91_N16
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X53_Y91_N2
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X53_Y91_N23
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X46_Y91_N9
\output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOIBUF_X57_Y0_N8
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G28
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X84_Y50_N4
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clock_div_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(clock_div_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X83_Y50_N26
\clock_div_counter~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clock_div_counter~5_combout\ = (\Add0~0_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \clock_div_counter~5_combout\);

-- Location: IOIBUF_X117_Y42_N1
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X84_Y50_N11
\clock_div_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clock_div_counter~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(0));

-- Location: LCCOMB_X84_Y50_N6
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clock_div_counter(1) & (!\Add0~1\)) # (!clock_div_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clock_div_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X84_Y50_N7
\clock_div_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(1));

-- Location: LCCOMB_X84_Y50_N8
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clock_div_counter(2) & (\Add0~3\ $ (GND))) # (!clock_div_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clock_div_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X84_Y50_N9
\clock_div_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(2));

-- Location: LCCOMB_X84_Y50_N10
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clock_div_counter(3) & (!\Add0~5\)) # (!clock_div_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clock_div_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X84_Y50_N2
\clock_div_counter~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clock_div_counter~4_combout\ = (\Add0~6_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Equal0~3_combout\,
	combout => \clock_div_counter~4_combout\);

-- Location: FF_X84_Y50_N3
\clock_div_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(3));

-- Location: LCCOMB_X84_Y50_N12
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clock_div_counter(4) & (\Add0~7\ $ (GND))) # (!clock_div_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clock_div_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X84_Y50_N13
\clock_div_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(4));

-- Location: LCCOMB_X84_Y50_N14
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clock_div_counter(5) & (!\Add0~9\)) # (!clock_div_counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clock_div_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X84_Y50_N15
\clock_div_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(5));

-- Location: LCCOMB_X84_Y50_N16
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clock_div_counter(6) & (\Add0~11\ $ (GND))) # (!clock_div_counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clock_div_counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X84_Y50_N17
\clock_div_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(6));

-- Location: LCCOMB_X84_Y50_N18
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clock_div_counter(7) & (!\Add0~13\)) # (!clock_div_counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clock_div_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X83_Y50_N22
\clock_div_counter~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clock_div_counter~3_combout\ = (!\Equal0~3_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~3_combout\,
	datad => \Add0~14_combout\,
	combout => \clock_div_counter~3_combout\);

-- Location: FF_X83_Y50_N23
\clock_div_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(7));

-- Location: LCCOMB_X84_Y50_N20
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clock_div_counter(8) & (\Add0~15\ $ (GND))) # (!clock_div_counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clock_div_counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X84_Y50_N30
\clock_div_counter~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clock_div_counter~2_combout\ = (\Add0~16_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \Equal0~3_combout\,
	combout => \clock_div_counter~2_combout\);

-- Location: FF_X84_Y50_N31
\clock_div_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(8));

-- Location: LCCOMB_X83_Y50_N4
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clock_div_counter(7) & (!clock_div_counter(5) & (clock_div_counter(8) & !clock_div_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_counter(7),
	datab => clock_div_counter(5),
	datac => clock_div_counter(8),
	datad => clock_div_counter(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X83_Y50_N14
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clock_div_counter(1) & (!clock_div_counter(4) & (!clock_div_counter(2) & clock_div_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_counter(1),
	datab => clock_div_counter(4),
	datac => clock_div_counter(2),
	datad => clock_div_counter(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X84_Y50_N22
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clock_div_counter(9) & (!\Add0~17\)) # (!clock_div_counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clock_div_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X84_Y50_N0
\clock_div_counter~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clock_div_counter~1_combout\ = (\Add0~18_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal0~3_combout\,
	combout => \clock_div_counter~1_combout\);

-- Location: FF_X84_Y50_N1
\clock_div_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(9));

-- Location: LCCOMB_X84_Y50_N24
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clock_div_counter(10) & (\Add0~19\ $ (GND))) # (!clock_div_counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clock_div_counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clock_div_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X84_Y50_N25
\clock_div_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(10));

-- Location: LCCOMB_X84_Y50_N26
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clock_div_counter(11) & (!\Add0~21\)) # (!clock_div_counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clock_div_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X84_Y50_N27
\clock_div_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(11));

-- Location: LCCOMB_X84_Y50_N28
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \Add0~23\ $ (!clock_div_counter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clock_div_counter(12),
	cin => \Add0~23\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X83_Y50_N30
\clock_div_counter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clock_div_counter~0_combout\ = (!\Equal0~3_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~3_combout\,
	datad => \Add0~24_combout\,
	combout => \clock_div_counter~0_combout\);

-- Location: FF_X83_Y50_N31
\clock_div_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div_counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clock_div_counter(12));

-- Location: LCCOMB_X83_Y50_N24
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clock_div_counter(12) & (clock_div_counter(9) & (!clock_div_counter(10) & !clock_div_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_counter(12),
	datab => clock_div_counter(9),
	datac => clock_div_counter(10),
	datad => clock_div_counter(11),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X83_Y50_N20
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clock_div_counter(0) & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clock_div_counter(0),
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X83_Y50_N28
\counter_enable~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter_enable~feeder_combout\ = \Equal0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~3_combout\,
	combout => \counter_enable~feeder_combout\);

-- Location: FF_X83_Y50_N29
counter_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter_enable~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_enable~q\);

-- Location: LCCOMB_X83_Y50_N6
\bcd_counter|cnt_reg[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd_counter|cnt_reg[3]~4_combout\ = (\bcd_counter|cnt_reg\(3) & (\counter_enable~q\ $ (VCC))) # (!\bcd_counter|cnt_reg\(3) & (\counter_enable~q\ & VCC))
-- \bcd_counter|cnt_reg[3]~5\ = CARRY((\bcd_counter|cnt_reg\(3) & \counter_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(3),
	datab => \counter_enable~q\,
	datad => VCC,
	combout => \bcd_counter|cnt_reg[3]~4_combout\,
	cout => \bcd_counter|cnt_reg[3]~5\);

-- Location: FF_X83_Y50_N7
\bcd_counter|cnt_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_counter|cnt_reg[3]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|cnt_reg\(3));

-- Location: LCCOMB_X83_Y50_N8
\bcd_counter|cnt_reg[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd_counter|cnt_reg[2]~6_combout\ = (\bcd_counter|cnt_reg\(2) & (!\bcd_counter|cnt_reg[3]~5\)) # (!\bcd_counter|cnt_reg\(2) & ((\bcd_counter|cnt_reg[3]~5\) # (GND)))
-- \bcd_counter|cnt_reg[2]~7\ = CARRY((!\bcd_counter|cnt_reg[3]~5\) # (!\bcd_counter|cnt_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(2),
	datad => VCC,
	cin => \bcd_counter|cnt_reg[3]~5\,
	combout => \bcd_counter|cnt_reg[2]~6_combout\,
	cout => \bcd_counter|cnt_reg[2]~7\);

-- Location: FF_X83_Y50_N9
\bcd_counter|cnt_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_counter|cnt_reg[2]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|cnt_reg\(2));

-- Location: LCCOMB_X83_Y50_N10
\bcd_counter|cnt_reg[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd_counter|cnt_reg[1]~8_combout\ = (\bcd_counter|cnt_reg\(1) & (\bcd_counter|cnt_reg[2]~7\ $ (GND))) # (!\bcd_counter|cnt_reg\(1) & (!\bcd_counter|cnt_reg[2]~7\ & VCC))
-- \bcd_counter|cnt_reg[1]~9\ = CARRY((\bcd_counter|cnt_reg\(1) & !\bcd_counter|cnt_reg[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(1),
	datad => VCC,
	cin => \bcd_counter|cnt_reg[2]~7\,
	combout => \bcd_counter|cnt_reg[1]~8_combout\,
	cout => \bcd_counter|cnt_reg[1]~9\);

-- Location: FF_X83_Y50_N11
\bcd_counter|cnt_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_counter|cnt_reg[1]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|cnt_reg\(1));

-- Location: LCCOMB_X83_Y50_N12
\bcd_counter|cnt_reg[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bcd_counter|cnt_reg[0]~10_combout\ = \bcd_counter|cnt_reg[1]~9\ $ (\bcd_counter|cnt_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bcd_counter|cnt_reg\(0),
	cin => \bcd_counter|cnt_reg[1]~9\,
	combout => \bcd_counter|cnt_reg[0]~10_combout\);

-- Location: FF_X83_Y50_N13
\bcd_counter|cnt_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_counter|cnt_reg[0]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_counter|cnt_reg\(0));

-- Location: LCCOMB_X75_Y50_N0
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\bcd_counter|cnt_reg\(2) & (\bcd_counter|cnt_reg\(3) & (\bcd_counter|cnt_reg\(0) & !\bcd_counter|cnt_reg\(1)))) # (!\bcd_counter|cnt_reg\(2) & (\bcd_counter|cnt_reg\(1) $ (((\bcd_counter|cnt_reg\(3) & !\bcd_counter|cnt_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(3),
	datab => \bcd_counter|cnt_reg\(0),
	datac => \bcd_counter|cnt_reg\(2),
	datad => \bcd_counter|cnt_reg\(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X75_Y50_N18
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\bcd_counter|cnt_reg\(0) & ((\bcd_counter|cnt_reg\(3) & (\bcd_counter|cnt_reg\(2))) # (!\bcd_counter|cnt_reg\(3) & ((\bcd_counter|cnt_reg\(1)))))) # (!\bcd_counter|cnt_reg\(0) & (\bcd_counter|cnt_reg\(1) & (\bcd_counter|cnt_reg\(3) $ 
-- (\bcd_counter|cnt_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(3),
	datab => \bcd_counter|cnt_reg\(0),
	datac => \bcd_counter|cnt_reg\(2),
	datad => \bcd_counter|cnt_reg\(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X75_Y50_N16
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\bcd_counter|cnt_reg\(2) & ((\bcd_counter|cnt_reg\(0) & ((\bcd_counter|cnt_reg\(1)))) # (!\bcd_counter|cnt_reg\(0) & (!\bcd_counter|cnt_reg\(3) & !\bcd_counter|cnt_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(3),
	datab => \bcd_counter|cnt_reg\(0),
	datac => \bcd_counter|cnt_reg\(2),
	datad => \bcd_counter|cnt_reg\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X75_Y50_N30
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\bcd_counter|cnt_reg\(3) & ((\bcd_counter|cnt_reg\(2) $ (!\bcd_counter|cnt_reg\(1))))) # (!\bcd_counter|cnt_reg\(3) & ((\bcd_counter|cnt_reg\(0) & (\bcd_counter|cnt_reg\(2) & !\bcd_counter|cnt_reg\(1))) # (!\bcd_counter|cnt_reg\(0) & 
-- (!\bcd_counter|cnt_reg\(2) & \bcd_counter|cnt_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(3),
	datab => \bcd_counter|cnt_reg\(0),
	datac => \bcd_counter|cnt_reg\(2),
	datad => \bcd_counter|cnt_reg\(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X75_Y50_N8
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\bcd_counter|cnt_reg\(2) & (\bcd_counter|cnt_reg\(3) & (!\bcd_counter|cnt_reg\(0)))) # (!\bcd_counter|cnt_reg\(2) & ((\bcd_counter|cnt_reg\(1) & ((!\bcd_counter|cnt_reg\(0)))) # (!\bcd_counter|cnt_reg\(1) & 
-- (\bcd_counter|cnt_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(3),
	datab => \bcd_counter|cnt_reg\(0),
	datac => \bcd_counter|cnt_reg\(2),
	datad => \bcd_counter|cnt_reg\(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X75_Y50_N10
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\bcd_counter|cnt_reg\(3) & (\bcd_counter|cnt_reg\(0) $ (((\bcd_counter|cnt_reg\(2)) # (!\bcd_counter|cnt_reg\(1)))))) # (!\bcd_counter|cnt_reg\(3) & (!\bcd_counter|cnt_reg\(0) & (\bcd_counter|cnt_reg\(2) & !\bcd_counter|cnt_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(3),
	datab => \bcd_counter|cnt_reg\(0),
	datac => \bcd_counter|cnt_reg\(2),
	datad => \bcd_counter|cnt_reg\(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X75_Y50_N4
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\bcd_counter|cnt_reg\(3) & ((\bcd_counter|cnt_reg\(0)) # (\bcd_counter|cnt_reg\(2) $ (\bcd_counter|cnt_reg\(1))))) # (!\bcd_counter|cnt_reg\(3) & ((\bcd_counter|cnt_reg\(2)) # (\bcd_counter|cnt_reg\(0) $ (\bcd_counter|cnt_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_counter|cnt_reg\(3),
	datab => \bcd_counter|cnt_reg\(0),
	datac => \bcd_counter|cnt_reg\(2),
	datad => \bcd_counter|cnt_reg\(1),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X117_Y39_N1
\enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;
END structure;


