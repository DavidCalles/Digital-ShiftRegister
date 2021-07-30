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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/29/2021 08:28:44"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShifRegister IS
    PORT (
	clk : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	result : OUT std_logic_vector(3 DOWNTO 0);
	segmentIn : OUT std_logic_vector(6 DOWNTO 0);
	segmentOut : OUT std_logic_vector(6 DOWNTO 0)
	);
END ShifRegister;

-- Design Ports Information
-- result[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentIn[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentIn[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentIn[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentIn[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentIn[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentIn[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentIn[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentOut[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentOut[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentOut[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentOut[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentOut[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentOut[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentOut[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShifRegister IS
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
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segmentIn : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentOut : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Shifter1|Mux0~0_combout\ : std_logic;
SIGNAL \Shifter1|R[0]~0_combout\ : std_logic;
SIGNAL \Shifter1|Mux1~0_combout\ : std_logic;
SIGNAL \Shifter1|Mux2~0_combout\ : std_logic;
SIGNAL \Shifter1|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegments0|Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegments1|Mux0~0_combout\ : std_logic;
SIGNAL \Shifter1|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Shifter1|ALT_INV_R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SevenSegments0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegments1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_SW <= SW;
result <= ww_result;
segmentIn <= ww_segmentIn;
segmentOut <= ww_segmentOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Shifter1|ALT_INV_R\(0) <= NOT \Shifter1|R\(0);
\Shifter1|ALT_INV_R\(1) <= NOT \Shifter1|R\(1);
\Shifter1|ALT_INV_R\(2) <= NOT \Shifter1|R\(2);
\Shifter1|ALT_INV_R\(3) <= NOT \Shifter1|R\(3);
\SevenSegments0|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegments0|Mux0~0_combout\;
\SevenSegments1|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegments1|Mux0~0_combout\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Shifter1|R\(0),
	devoe => ww_devoe,
	o => ww_result(0));

-- Location: IOOBUF_X52_Y0_N19
\result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Shifter1|R\(1),
	devoe => ww_devoe,
	o => ww_result(1));

-- Location: IOOBUF_X60_Y0_N2
\result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Shifter1|R\(2),
	devoe => ww_devoe,
	o => ww_result(2));

-- Location: IOOBUF_X80_Y0_N2
\result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Shifter1|R\(3),
	devoe => ww_devoe,
	o => ww_result(3));

-- Location: IOOBUF_X89_Y9_N22
\segmentIn[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentIn(0));

-- Location: IOOBUF_X89_Y23_N39
\segmentIn[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentIn(1));

-- Location: IOOBUF_X89_Y23_N56
\segmentIn[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentIn(2));

-- Location: IOOBUF_X89_Y20_N79
\segmentIn[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentIn(3));

-- Location: IOOBUF_X89_Y25_N39
\segmentIn[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentIn(4));

-- Location: IOOBUF_X89_Y20_N96
\segmentIn[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentIn(5));

-- Location: IOOBUF_X89_Y25_N56
\segmentIn[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentIn(6));

-- Location: IOOBUF_X89_Y8_N39
\segmentOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentOut(0));

-- Location: IOOBUF_X89_Y11_N79
\segmentOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentOut(1));

-- Location: IOOBUF_X89_Y11_N96
\segmentOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentOut(2));

-- Location: IOOBUF_X89_Y4_N79
\segmentOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentOut(3));

-- Location: IOOBUF_X89_Y13_N56
\segmentOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentOut(4));

-- Location: IOOBUF_X89_Y13_N39
\segmentOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentOut(5));

-- Location: IOOBUF_X89_Y4_N96
\segmentOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegments1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentOut(6));

-- Location: IOIBUF_X36_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X83_Y4_N27
\Shifter1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Shifter1|Mux0~0_combout\ = ( \Shifter1|R\(2) & ( (!\SW[7]~input_o\) # ((!\SW[6]~input_o\ & (\SW[5]~input_o\)) # (\SW[6]~input_o\ & ((\SW[4]~input_o\)))) ) ) # ( !\Shifter1|R\(2) & ( (\SW[7]~input_o\ & ((!\SW[6]~input_o\ & (\SW[5]~input_o\)) # 
-- (\SW[6]~input_o\ & ((\SW[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \Shifter1|ALT_INV_R\(2),
	combout => \Shifter1|Mux0~0_combout\);

-- Location: LABCELL_X83_Y4_N30
\Shifter1|R[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Shifter1|R[0]~0_combout\ = (\SW[7]~input_o\) # (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	combout => \Shifter1|R[0]~0_combout\);

-- Location: FF_X83_Y4_N29
\Shifter1|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Shifter1|Mux0~0_combout\,
	ena => \Shifter1|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Shifter1|R\(3));

-- Location: LABCELL_X83_Y4_N15
\Shifter1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Shifter1|Mux1~0_combout\ = ( \Shifter1|R\(1) & ( (!\SW[7]~input_o\) # ((!\SW[6]~input_o\ & ((\Shifter1|R\(3)))) # (\SW[6]~input_o\ & (\SW[3]~input_o\))) ) ) # ( !\Shifter1|R\(1) & ( (\SW[7]~input_o\ & ((!\SW[6]~input_o\ & ((\Shifter1|R\(3)))) # 
-- (\SW[6]~input_o\ & (\SW[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \Shifter1|ALT_INV_R\(3),
	dataf => \Shifter1|ALT_INV_R\(1),
	combout => \Shifter1|Mux1~0_combout\);

-- Location: FF_X83_Y4_N17
\Shifter1|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Shifter1|Mux1~0_combout\,
	ena => \Shifter1|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Shifter1|R\(2));

-- Location: LABCELL_X83_Y4_N12
\Shifter1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Shifter1|Mux2~0_combout\ = ( \Shifter1|R\(2) & ( (!\SW[7]~input_o\ & (((\Shifter1|R\(0))))) # (\SW[7]~input_o\ & ((!\SW[6]~input_o\) # ((\SW[2]~input_o\)))) ) ) # ( !\Shifter1|R\(2) & ( (!\SW[7]~input_o\ & (((\Shifter1|R\(0))))) # (\SW[7]~input_o\ & 
-- (\SW[6]~input_o\ & ((\SW[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \Shifter1|ALT_INV_R\(0),
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \Shifter1|ALT_INV_R\(2),
	combout => \Shifter1|Mux2~0_combout\);

-- Location: FF_X83_Y4_N14
\Shifter1|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Shifter1|Mux2~0_combout\,
	ena => \Shifter1|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Shifter1|R\(1));

-- Location: LABCELL_X83_Y4_N24
\Shifter1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Shifter1|Mux3~0_combout\ = ( \Shifter1|R\(1) & ( (!\SW[7]~input_o\ & (((\SW[0]~input_o\)))) # (\SW[7]~input_o\ & ((!\SW[6]~input_o\) # ((\SW[1]~input_o\)))) ) ) # ( !\Shifter1|R\(1) & ( (!\SW[7]~input_o\ & (((\SW[0]~input_o\)))) # (\SW[7]~input_o\ & 
-- (\SW[6]~input_o\ & ((\SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110100101110001111110010111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \Shifter1|ALT_INV_R\(1),
	combout => \Shifter1|Mux3~0_combout\);

-- Location: FF_X83_Y4_N26
\Shifter1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Shifter1|Mux3~0_combout\,
	ena => \Shifter1|R[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Shifter1|R\(0));

-- Location: LABCELL_X83_Y4_N39
\SevenSegments0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux6~0_combout\ = ( \SW[4]~input_o\ & ( (\SW[1]~input_o\ & (!\SW[2]~input_o\ $ (!\SW[3]~input_o\))) ) ) # ( !\SW[4]~input_o\ & ( (!\SW[2]~input_o\ & (!\SW[1]~input_o\ $ (!\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \SevenSegments0|Mux6~0_combout\);

-- Location: LABCELL_X83_Y4_N36
\SevenSegments0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux5~0_combout\ = ( \SW[4]~input_o\ & ( (!\SW[1]~input_o\ & ((\SW[3]~input_o\))) # (\SW[1]~input_o\ & (\SW[2]~input_o\)) ) ) # ( !\SW[4]~input_o\ & ( (\SW[3]~input_o\ & (!\SW[2]~input_o\ $ (!\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \SevenSegments0|Mux5~0_combout\);

-- Location: LABCELL_X83_Y4_N6
\SevenSegments0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux4~0_combout\ = ( \SW[4]~input_o\ & ( (\SW[3]~input_o\ & ((!\SW[1]~input_o\) # (\SW[2]~input_o\))) ) ) # ( !\SW[4]~input_o\ & ( (\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \SevenSegments0|Mux4~0_combout\);

-- Location: LABCELL_X83_Y4_N9
\SevenSegments0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux3~0_combout\ = ( \SW[4]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[3]~input_o\)) # (\SW[2]~input_o\ & (!\SW[1]~input_o\ $ (\SW[3]~input_o\))) ) ) # ( !\SW[4]~input_o\ & ( (!\SW[2]~input_o\ & (!\SW[1]~input_o\ $ 
-- (!\SW[3]~input_o\))) # (\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \SevenSegments0|Mux3~0_combout\);

-- Location: LABCELL_X83_Y4_N42
\SevenSegments0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux2~0_combout\ = ( \SW[4]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[3]~input_o\)) ) ) # ( !\SW[4]~input_o\ & ( ((!\SW[2]~input_o\ & \SW[3]~input_o\)) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \SevenSegments0|Mux2~0_combout\);

-- Location: LABCELL_X83_Y4_N45
\SevenSegments0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux1~0_combout\ = ( \SW[4]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[3]~input_o\)) ) ) # ( !\SW[4]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[3]~input_o\)) # (\SW[2]~input_o\ & ((!\SW[3]~input_o\) # 
-- (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \SevenSegments0|Mux1~0_combout\);

-- Location: LABCELL_X83_Y4_N54
\SevenSegments0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments0|Mux0~0_combout\ = ( \SW[3]~input_o\ & ( \SW[4]~input_o\ & ( (\SW[2]~input_o\) # (\SW[1]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( \SW[4]~input_o\ ) ) # ( \SW[3]~input_o\ & ( !\SW[4]~input_o\ & ( (!\SW[1]~input_o\) # (!\SW[2]~input_o\) ) ) ) 
-- # ( !\SW[3]~input_o\ & ( !\SW[4]~input_o\ & ( \SW[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111110101111101011111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \SevenSegments0|Mux0~0_combout\);

-- Location: LABCELL_X83_Y4_N33
\SevenSegments1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux6~0_combout\ = ( \Shifter1|R\(0) & ( (!\Shifter1|R\(3) & (!\Shifter1|R\(2) & !\Shifter1|R\(1))) # (\Shifter1|R\(3) & (!\Shifter1|R\(2) $ (!\Shifter1|R\(1)))) ) ) # ( !\Shifter1|R\(0) & ( (!\Shifter1|R\(3) & (\Shifter1|R\(2) & 
-- !\Shifter1|R\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter1|ALT_INV_R\(3),
	datab => \Shifter1|ALT_INV_R\(2),
	datac => \Shifter1|ALT_INV_R\(1),
	dataf => \Shifter1|ALT_INV_R\(0),
	combout => \SevenSegments1|Mux6~0_combout\);

-- Location: LABCELL_X83_Y4_N3
\SevenSegments1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux5~0_combout\ = ( \Shifter1|R\(0) & ( (!\Shifter1|R\(1) & (\Shifter1|R\(2) & !\Shifter1|R\(3))) # (\Shifter1|R\(1) & ((\Shifter1|R\(3)))) ) ) # ( !\Shifter1|R\(0) & ( (\Shifter1|R\(2) & ((\Shifter1|R\(3)) # (\Shifter1|R\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shifter1|ALT_INV_R\(1),
	datac => \Shifter1|ALT_INV_R\(2),
	datad => \Shifter1|ALT_INV_R\(3),
	dataf => \Shifter1|ALT_INV_R\(0),
	combout => \SevenSegments1|Mux5~0_combout\);

-- Location: LABCELL_X83_Y4_N48
\SevenSegments1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux4~0_combout\ = ( \Shifter1|R\(0) & ( (\Shifter1|R\(2) & (\Shifter1|R\(1) & \Shifter1|R\(3))) ) ) # ( !\Shifter1|R\(0) & ( (!\Shifter1|R\(2) & (\Shifter1|R\(1) & !\Shifter1|R\(3))) # (\Shifter1|R\(2) & ((\Shifter1|R\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter1|ALT_INV_R\(2),
	datab => \Shifter1|ALT_INV_R\(1),
	datac => \Shifter1|ALT_INV_R\(3),
	dataf => \Shifter1|ALT_INV_R\(0),
	combout => \SevenSegments1|Mux4~0_combout\);

-- Location: LABCELL_X83_Y4_N0
\SevenSegments1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux3~0_combout\ = ( \Shifter1|R\(0) & ( !\Shifter1|R\(2) $ (\Shifter1|R\(1)) ) ) # ( !\Shifter1|R\(0) & ( (!\Shifter1|R\(2) & (\Shifter1|R\(1) & \Shifter1|R\(3))) # (\Shifter1|R\(2) & (!\Shifter1|R\(1) & !\Shifter1|R\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter1|ALT_INV_R\(2),
	datab => \Shifter1|ALT_INV_R\(1),
	datac => \Shifter1|ALT_INV_R\(3),
	dataf => \Shifter1|ALT_INV_R\(0),
	combout => \SevenSegments1|Mux3~0_combout\);

-- Location: LABCELL_X83_Y4_N18
\SevenSegments1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux2~0_combout\ = ( \Shifter1|R\(0) & ( (!\Shifter1|R\(3)) # ((!\Shifter1|R\(2) & !\Shifter1|R\(1))) ) ) # ( !\Shifter1|R\(0) & ( (\Shifter1|R\(2) & (!\Shifter1|R\(1) & !\Shifter1|R\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter1|ALT_INV_R\(2),
	datab => \Shifter1|ALT_INV_R\(1),
	datac => \Shifter1|ALT_INV_R\(3),
	dataf => \Shifter1|ALT_INV_R\(0),
	combout => \SevenSegments1|Mux2~0_combout\);

-- Location: LABCELL_X83_Y4_N21
\SevenSegments1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux1~0_combout\ = ( \Shifter1|R\(0) & ( !\Shifter1|R\(3) $ (((!\Shifter1|R\(1) & \Shifter1|R\(2)))) ) ) # ( !\Shifter1|R\(0) & ( (\Shifter1|R\(1) & (!\Shifter1|R\(2) & !\Shifter1|R\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011110011000011001111001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shifter1|ALT_INV_R\(1),
	datac => \Shifter1|ALT_INV_R\(2),
	datad => \Shifter1|ALT_INV_R\(3),
	dataf => \Shifter1|ALT_INV_R\(0),
	combout => \SevenSegments1|Mux1~0_combout\);

-- Location: LABCELL_X83_Y4_N51
\SevenSegments1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegments1|Mux0~0_combout\ = (!\Shifter1|R\(0) & ((!\Shifter1|R\(2) $ (!\Shifter1|R\(3))) # (\Shifter1|R\(1)))) # (\Shifter1|R\(0) & ((!\Shifter1|R\(2) $ (!\Shifter1|R\(1))) # (\Shifter1|R\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011010111111011101101011111101110110101111110111011010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shifter1|ALT_INV_R\(2),
	datab => \Shifter1|ALT_INV_R\(1),
	datac => \Shifter1|ALT_INV_R\(0),
	datad => \Shifter1|ALT_INV_R\(3),
	combout => \SevenSegments1|Mux0~0_combout\);

-- Location: LABCELL_X79_Y9_N0
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


