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

-- DATE "10/16/2018 19:29:03"

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

ENTITY 	MCU IS
    PORT (
	clk_in : IN std_logic;
	rst_in : IN std_logic;
	port_in : IN std_logic_vector(15 DOWNTO 0);
	port_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END MCU;

-- Design Ports Information
-- port_in[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[7]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[10]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[11]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[13]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_in[15]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[9]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[11]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[12]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[14]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_out[15]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_in	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MCU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_rst_in : std_logic;
SIGNAL ww_port_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_port_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \port_in[0]~input_o\ : std_logic;
SIGNAL \port_in[1]~input_o\ : std_logic;
SIGNAL \port_in[2]~input_o\ : std_logic;
SIGNAL \port_in[3]~input_o\ : std_logic;
SIGNAL \port_in[4]~input_o\ : std_logic;
SIGNAL \port_in[5]~input_o\ : std_logic;
SIGNAL \port_in[6]~input_o\ : std_logic;
SIGNAL \port_in[7]~input_o\ : std_logic;
SIGNAL \port_in[8]~input_o\ : std_logic;
SIGNAL \port_in[9]~input_o\ : std_logic;
SIGNAL \port_in[10]~input_o\ : std_logic;
SIGNAL \port_in[11]~input_o\ : std_logic;
SIGNAL \port_in[12]~input_o\ : std_logic;
SIGNAL \port_in[13]~input_o\ : std_logic;
SIGNAL \port_in[14]~input_o\ : std_logic;
SIGNAL \port_in[15]~input_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \rst_in~input_o\ : std_logic;
SIGNAL \port_out[0]~output_o\ : std_logic;
SIGNAL \port_out[1]~output_o\ : std_logic;
SIGNAL \port_out[2]~output_o\ : std_logic;
SIGNAL \port_out[3]~output_o\ : std_logic;
SIGNAL \port_out[4]~output_o\ : std_logic;
SIGNAL \port_out[5]~output_o\ : std_logic;
SIGNAL \port_out[6]~output_o\ : std_logic;
SIGNAL \port_out[7]~output_o\ : std_logic;
SIGNAL \port_out[8]~output_o\ : std_logic;
SIGNAL \port_out[9]~output_o\ : std_logic;
SIGNAL \port_out[10]~output_o\ : std_logic;
SIGNAL \port_out[11]~output_o\ : std_logic;
SIGNAL \port_out[12]~output_o\ : std_logic;
SIGNAL \port_out[13]~output_o\ : std_logic;
SIGNAL \port_out[14]~output_o\ : std_logic;
SIGNAL \port_out[15]~output_o\ : std_logic;

BEGIN

ww_clk_in <= clk_in;
ww_rst_in <= rst_in;
ww_port_in <= port_in;
port_out <= ww_port_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y27_N2
\port_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\port_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[1]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\port_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\port_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[3]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\port_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[4]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\port_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\port_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[6]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\port_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[7]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\port_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[8]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\port_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[9]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\port_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[10]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\port_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[11]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\port_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[12]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\port_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\port_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[14]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\port_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \port_out[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\port_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(0),
	o => \port_in[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\port_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(1),
	o => \port_in[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\port_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(2),
	o => \port_in[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\port_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(3),
	o => \port_in[3]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\port_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(4),
	o => \port_in[4]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\port_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(5),
	o => \port_in[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\port_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(6),
	o => \port_in[6]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\port_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(7),
	o => \port_in[7]~input_o\);

-- Location: IOIBUF_X20_Y31_N1
\port_in[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(8),
	o => \port_in[8]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\port_in[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(9),
	o => \port_in[9]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\port_in[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(10),
	o => \port_in[10]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\port_in[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(11),
	o => \port_in[11]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\port_in[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(12),
	o => \port_in[12]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\port_in[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(13),
	o => \port_in[13]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\port_in[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(14),
	o => \port_in[14]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\port_in[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in(15),
	o => \port_in[15]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\clk_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\rst_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_in,
	o => \rst_in~input_o\);

ww_port_out(0) <= \port_out[0]~output_o\;

ww_port_out(1) <= \port_out[1]~output_o\;

ww_port_out(2) <= \port_out[2]~output_o\;

ww_port_out(3) <= \port_out[3]~output_o\;

ww_port_out(4) <= \port_out[4]~output_o\;

ww_port_out(5) <= \port_out[5]~output_o\;

ww_port_out(6) <= \port_out[6]~output_o\;

ww_port_out(7) <= \port_out[7]~output_o\;

ww_port_out(8) <= \port_out[8]~output_o\;

ww_port_out(9) <= \port_out[9]~output_o\;

ww_port_out(10) <= \port_out[10]~output_o\;

ww_port_out(11) <= \port_out[11]~output_o\;

ww_port_out(12) <= \port_out[12]~output_o\;

ww_port_out(13) <= \port_out[13]~output_o\;

ww_port_out(14) <= \port_out[14]~output_o\;

ww_port_out(15) <= \port_out[15]~output_o\;
END structure;


