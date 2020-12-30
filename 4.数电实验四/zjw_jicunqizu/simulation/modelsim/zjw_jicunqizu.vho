-- Copyright (C) 1991-2009 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 184 04/29/2009 Service Pack 1 SJ Web Edition"

-- DATE "12/05/2019 18:52:40"

-- 
-- Device: Altera EP1C20F400C8 Package FBGA400
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cyclone;
USE IEEE.std_logic_1164.all;
USE cyclone.cyclone_components.all;

ENTITY 	zjw_jicunqizu IS
    PORT (
	CIN : IN std_logic_vector(7 DOWNTO 0);
	RAA : IN std_logic_vector(1 DOWNTO 0);
	RWBA : IN std_logic_vector(1 DOWNTO 0);
	WE : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	A_OUT : OUT std_logic_vector(7 DOWNTO 0);
	B_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END zjw_jicunqizu;

ARCHITECTURE structure OF zjw_jicunqizu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RWBA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_WE : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_A_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \WE~combout\ : std_logic;
SIGNAL \B[0]~16_combout\ : std_logic;
SIGNAL \A[0]~8_combout\ : std_logic;
SIGNAL \A_OUT[0]~22\ : std_logic;
SIGNAL \C[0]~24_combout\ : std_logic;
SIGNAL \A_OUT[0]~23\ : std_logic;
SIGNAL \A_OUT[0]$latch~combout\ : std_logic;
SIGNAL \A_OUT[1]~24\ : std_logic;
SIGNAL \A_OUT[1]~25\ : std_logic;
SIGNAL \A_OUT[1]$latch~combout\ : std_logic;
SIGNAL \A_OUT[2]~26\ : std_logic;
SIGNAL \A_OUT[2]~27\ : std_logic;
SIGNAL \A_OUT[2]$latch~combout\ : std_logic;
SIGNAL \A_OUT[3]~28\ : std_logic;
SIGNAL \A_OUT[3]~29\ : std_logic;
SIGNAL \A_OUT[3]$latch~combout\ : std_logic;
SIGNAL \A_OUT[4]~30\ : std_logic;
SIGNAL \A_OUT[4]~31\ : std_logic;
SIGNAL \A_OUT[4]$latch~combout\ : std_logic;
SIGNAL \A_OUT[5]~32\ : std_logic;
SIGNAL \A_OUT[5]~33\ : std_logic;
SIGNAL \A_OUT[5]$latch~combout\ : std_logic;
SIGNAL \A_OUT[6]~34\ : std_logic;
SIGNAL \A_OUT[6]~35\ : std_logic;
SIGNAL \A_OUT[6]$latch~combout\ : std_logic;
SIGNAL \A_OUT[7]~36\ : std_logic;
SIGNAL \A_OUT[7]~37\ : std_logic;
SIGNAL \A_OUT[7]$latch~combout\ : std_logic;
SIGNAL \B_OUT[0]~22\ : std_logic;
SIGNAL \B_OUT[0]~23_combout\ : std_logic;
SIGNAL \B_OUT[0]$latch~combout\ : std_logic;
SIGNAL \B_OUT[1]~24\ : std_logic;
SIGNAL \B_OUT[1]~25_combout\ : std_logic;
SIGNAL \B_OUT[1]$latch~combout\ : std_logic;
SIGNAL \B_OUT[2]~26\ : std_logic;
SIGNAL \B_OUT[2]~27_combout\ : std_logic;
SIGNAL \B_OUT[2]$latch~combout\ : std_logic;
SIGNAL \B_OUT[3]~28\ : std_logic;
SIGNAL \B_OUT[3]~29_combout\ : std_logic;
SIGNAL \B_OUT[3]$latch~combout\ : std_logic;
SIGNAL \B_OUT[4]~30\ : std_logic;
SIGNAL \B_OUT[4]~31_combout\ : std_logic;
SIGNAL \B_OUT[4]$latch~combout\ : std_logic;
SIGNAL \B_OUT[5]~32\ : std_logic;
SIGNAL \B_OUT[5]~33_combout\ : std_logic;
SIGNAL \B_OUT[5]$latch~combout\ : std_logic;
SIGNAL \B_OUT[6]~34\ : std_logic;
SIGNAL \B_OUT[6]~35_combout\ : std_logic;
SIGNAL \B_OUT[6]$latch~combout\ : std_logic;
SIGNAL \B_OUT[7]~36\ : std_logic;
SIGNAL \B_OUT[7]~37_combout\ : std_logic;
SIGNAL \B_OUT[7]$latch~combout\ : std_logic;
SIGNAL A : std_logic_vector(7 DOWNTO 0);
SIGNAL B : std_logic_vector(7 DOWNTO 0);
SIGNAL C : std_logic_vector(7 DOWNTO 0);
SIGNAL \CIN~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAA~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RWBA~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_clk~combout\ : std_logic;

BEGIN

ww_CIN <= CIN;
ww_RAA <= RAA;
ww_RWBA <= RWBA;
ww_WE <= WE;
ww_rst <= rst;
ww_clk <= clk;
A_OUT <= ww_A_OUT;
B_OUT <= ww_B_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;

\clk~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

\RWBA[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RWBA(1),
	combout => \RWBA~combout\(1));

\RWBA[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RWBA(0),
	combout => \RWBA~combout\(0));

\CIN[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CIN(0),
	combout => \CIN~combout\(0));

\RAA[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RAA(0),
	combout => \RAA~combout\(0));

\RAA[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RAA(1),
	combout => \RAA~combout\(1));

\rst~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

\WE~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WE,
	combout => \WE~combout\);

\B[0]~16\ : cyclone_lcell
-- Equation(s):
-- \B[0]~16_combout\ = !\RWBA~combout\(1) & (!\WE~combout\ & \RWBA~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RWBA~combout\(1),
	datac => \WE~combout\,
	datad => \RWBA~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B[0]~16_combout\);

\B[0]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[0]~22\ = !\RAA~combout\(1) & (\RAA~combout\(0) & (B[0]) # !\RAA~combout\(0) & A(0))
-- B(0) = DFFEAS(\A_OUT[0]~22\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \B[0]~16_combout\, \CIN~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => A(0),
	datab => \RAA~combout\(0),
	datac => \CIN~combout\(0),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \B[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[0]~22\,
	regout => B(0));

\A[0]~8\ : cyclone_lcell
-- Equation(s):
-- \A[0]~8_combout\ = !\RWBA~combout\(1) & (!\WE~combout\ & !\RWBA~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RWBA~combout\(1),
	datac => \WE~combout\,
	datad => \RWBA~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A[0]~8_combout\);

\A[0]\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[0]~22\ = !\RWBA~combout\(1) & (\RWBA~combout\(0) & (B(0)) # !\RWBA~combout\(0) & A[0])
-- A(0) = DFFEAS(\B_OUT[0]~22\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \A[0]~8_combout\, \CIN~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \RWBA~combout\(1),
	datab => \RWBA~combout\(0),
	datac => \CIN~combout\(0),
	datad => B(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \A[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[0]~22\,
	regout => A(0));

\C[0]~24\ : cyclone_lcell
-- Equation(s):
-- \C[0]~24_combout\ = \RWBA~combout\(1) & (!\WE~combout\ & !\RWBA~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RWBA~combout\(1),
	datac => \WE~combout\,
	datad => \RWBA~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C[0]~24_combout\);

\C[0]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[0]~23\ = \A_OUT[0]~22\ # C[0] & \RAA~combout\(1)
-- C(0) = DFFEAS(\A_OUT[0]~23\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \C[0]~24_combout\, \CIN~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => \A_OUT[0]~22\,
	datac => \CIN~combout\(0),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \C[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[0]~23\,
	regout => C(0));

\A_OUT[0]$latch\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[0]$latch~combout\ = GLOBAL(\WE~combout\) & \A_OUT[0]~23\ # !GLOBAL(\WE~combout\) & (\A_OUT[0]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A_OUT[0]~23\,
	datac => \WE~combout\,
	datad => \A_OUT[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[0]$latch~combout\);

\CIN[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CIN(1),
	combout => \CIN~combout\(1));

\B[1]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[1]~24\ = !\RAA~combout\(1) & (\RAA~combout\(0) & (B[1]) # !\RAA~combout\(0) & A(1))
-- B(1) = DFFEAS(\A_OUT[1]~24\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \B[0]~16_combout\, \CIN~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => A(1),
	datab => \RAA~combout\(0),
	datac => \CIN~combout\(1),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \B[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[1]~24\,
	regout => B(1));

\A[1]\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[1]~24\ = !\RWBA~combout\(1) & (\RWBA~combout\(0) & (B(1)) # !\RWBA~combout\(0) & A[1])
-- A(1) = DFFEAS(\B_OUT[1]~24\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \A[0]~8_combout\, \CIN~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \RWBA~combout\(1),
	datab => \RWBA~combout\(0),
	datac => \CIN~combout\(1),
	datad => B(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \A[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[1]~24\,
	regout => A(1));

\C[1]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[1]~25\ = \A_OUT[1]~24\ # C[1] & \RAA~combout\(1)
-- C(1) = DFFEAS(\A_OUT[1]~25\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \C[0]~24_combout\, \CIN~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => \A_OUT[1]~24\,
	datac => \CIN~combout\(1),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \C[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[1]~25\,
	regout => C(1));

\A_OUT[1]$latch\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[1]$latch~combout\ = GLOBAL(\WE~combout\) & \A_OUT[1]~25\ # !GLOBAL(\WE~combout\) & (\A_OUT[1]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A_OUT[1]~25\,
	datac => \WE~combout\,
	datad => \A_OUT[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[1]$latch~combout\);

\CIN[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CIN(2),
	combout => \CIN~combout\(2));

\B[2]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[2]~26\ = !\RAA~combout\(1) & (\RAA~combout\(0) & (B[2]) # !\RAA~combout\(0) & A(2))
-- B(2) = DFFEAS(\A_OUT[2]~26\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \B[0]~16_combout\, \CIN~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \RAA~combout\(1),
	datab => A(2),
	datac => \CIN~combout\(2),
	datad => \RAA~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \B[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[2]~26\,
	regout => B(2));

\A[2]\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[2]~26\ = !\RWBA~combout\(1) & (\RWBA~combout\(0) & B(2) # !\RWBA~combout\(0) & (A[2]))
-- A(2) = DFFEAS(\B_OUT[2]~26\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \A[0]~8_combout\, \CIN~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => B(2),
	datab => \RWBA~combout\(1),
	datac => \CIN~combout\(2),
	datad => \RWBA~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \A[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[2]~26\,
	regout => A(2));

\C[2]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[2]~27\ = \A_OUT[2]~26\ # C[2] & \RAA~combout\(1)
-- C(2) = DFFEAS(\A_OUT[2]~27\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \C[0]~24_combout\, \CIN~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \A_OUT[2]~26\,
	datac => \CIN~combout\(2),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \C[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[2]~27\,
	regout => C(2));

\A_OUT[2]$latch\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[2]$latch~combout\ = GLOBAL(\WE~combout\) & \A_OUT[2]~27\ # !GLOBAL(\WE~combout\) & (\A_OUT[2]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A_OUT[2]~27\,
	datab => \A_OUT[2]$latch~combout\,
	datac => \WE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[2]$latch~combout\);

\CIN[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CIN(3),
	combout => \CIN~combout\(3));

\B[3]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[3]~28\ = !\RAA~combout\(1) & (\RAA~combout\(0) & (B[3]) # !\RAA~combout\(0) & A(3))
-- B(3) = DFFEAS(\A_OUT[3]~28\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \B[0]~16_combout\, \CIN~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => A(3),
	datab => \RAA~combout\(0),
	datac => \CIN~combout\(3),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \B[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[3]~28\,
	regout => B(3));

\A[3]\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[3]~28\ = !\RWBA~combout\(1) & (\RWBA~combout\(0) & B(3) # !\RWBA~combout\(0) & (A[3]))
-- A(3) = DFFEAS(\B_OUT[3]~28\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \A[0]~8_combout\, \CIN~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \RWBA~combout\(1),
	datab => B(3),
	datac => \CIN~combout\(3),
	datad => \RWBA~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \A[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[3]~28\,
	regout => A(3));

\C[3]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[3]~29\ = \A_OUT[3]~28\ # C[3] & \RAA~combout\(1)
-- C(3) = DFFEAS(\A_OUT[3]~29\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \C[0]~24_combout\, \CIN~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => \A_OUT[3]~28\,
	datac => \CIN~combout\(3),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \C[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[3]~29\,
	regout => C(3));

\A_OUT[3]$latch\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[3]$latch~combout\ = GLOBAL(\WE~combout\) & \A_OUT[3]~29\ # !GLOBAL(\WE~combout\) & (\A_OUT[3]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A_OUT[3]~29\,
	datac => \WE~combout\,
	datad => \A_OUT[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[3]$latch~combout\);

\CIN[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CIN(4),
	combout => \CIN~combout\(4));

\B[4]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[4]~30\ = !\RAA~combout\(1) & (\RAA~combout\(0) & (B[4]) # !\RAA~combout\(0) & A(4))
-- B(4) = DFFEAS(\A_OUT[4]~30\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \B[0]~16_combout\, \CIN~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \RAA~combout\(1),
	datab => A(4),
	datac => \CIN~combout\(4),
	datad => \RAA~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \B[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[4]~30\,
	regout => B(4));

\A[4]\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[4]~30\ = !\RWBA~combout\(1) & (\RWBA~combout\(0) & (B(4)) # !\RWBA~combout\(0) & A[4])
-- A(4) = DFFEAS(\B_OUT[4]~30\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \A[0]~8_combout\, \CIN~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \RWBA~combout\(1),
	datab => \RWBA~combout\(0),
	datac => \CIN~combout\(4),
	datad => B(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \A[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[4]~30\,
	regout => A(4));

\C[4]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[4]~31\ = \A_OUT[4]~30\ # C[4] & \RAA~combout\(1)
-- C(4) = DFFEAS(\A_OUT[4]~31\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \C[0]~24_combout\, \CIN~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => \A_OUT[4]~30\,
	datac => \CIN~combout\(4),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \C[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[4]~31\,
	regout => C(4));

\A_OUT[4]$latch\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[4]$latch~combout\ = GLOBAL(\WE~combout\) & \A_OUT[4]~31\ # !GLOBAL(\WE~combout\) & (\A_OUT[4]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A_OUT[4]~31\,
	datac => \WE~combout\,
	datad => \A_OUT[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[4]$latch~combout\);

\CIN[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CIN(5),
	combout => \CIN~combout\(5));

\B[5]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[5]~32\ = !\RAA~combout\(1) & (\RAA~combout\(0) & (B[5]) # !\RAA~combout\(0) & A(5))
-- B(5) = DFFEAS(\A_OUT[5]~32\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \B[0]~16_combout\, \CIN~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => A(5),
	datab => \RAA~combout\(0),
	datac => \CIN~combout\(5),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \B[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[5]~32\,
	regout => B(5));

\A[5]\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[5]~32\ = !\RWBA~combout\(1) & (\RWBA~combout\(0) & B(5) # !\RWBA~combout\(0) & (A[5]))
-- A(5) = DFFEAS(\B_OUT[5]~32\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \A[0]~8_combout\, \CIN~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \RWBA~combout\(1),
	datab => B(5),
	datac => \CIN~combout\(5),
	datad => \RWBA~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \A[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[5]~32\,
	regout => A(5));

\C[5]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[5]~33\ = \A_OUT[5]~32\ # C[5] & \RAA~combout\(1)
-- C(5) = DFFEAS(\A_OUT[5]~33\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \C[0]~24_combout\, \CIN~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => \A_OUT[5]~32\,
	datac => \CIN~combout\(5),
	datad => \RAA~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \C[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[5]~33\,
	regout => C(5));

\A_OUT[5]$latch\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[5]$latch~combout\ = GLOBAL(\WE~combout\) & (\A_OUT[5]~33\) # !GLOBAL(\WE~combout\) & \A_OUT[5]$latch~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A_OUT[5]$latch~combout\,
	datac => \WE~combout\,
	datad => \A_OUT[5]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[5]$latch~combout\);

\CIN[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CIN(6),
	combout => \CIN~combout\(6));

\B[6]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[6]~34\ = !\RAA~combout\(1) & (\RAA~combout\(0) & (B[6]) # !\RAA~combout\(0) & A(6))
-- B(6) = DFFEAS(\A_OUT[6]~34\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \B[0]~16_combout\, \CIN~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \RAA~combout\(1),
	datab => A(6),
	datac => \CIN~combout\(6),
	datad => \RAA~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \B[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[6]~34\,
	regout => B(6));

\A[6]\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[6]~34\ = !\RWBA~combout\(1) & (\RWBA~combout\(0) & B(6) # !\RWBA~combout\(0) & (A[6]))
-- A(6) = DFFEAS(\B_OUT[6]~34\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \A[0]~8_combout\, \CIN~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => B(6),
	datab => \RWBA~combout\(1),
	datac => \CIN~combout\(6),
	datad => \RWBA~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \A[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[6]~34\,
	regout => A(6));

\C[6]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[6]~35\ = \A_OUT[6]~34\ # \RAA~combout\(1) & C[6]
-- C(6) = DFFEAS(\A_OUT[6]~35\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \C[0]~24_combout\, \CIN~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \A_OUT[6]~34\,
	datab => \RAA~combout\(1),
	datac => \CIN~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \C[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[6]~35\,
	regout => C(6));

\A_OUT[6]$latch\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[6]$latch~combout\ = GLOBAL(\WE~combout\) & \A_OUT[6]~35\ # !GLOBAL(\WE~combout\) & (\A_OUT[6]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A_OUT[6]~35\,
	datac => \WE~combout\,
	datad => \A_OUT[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[6]$latch~combout\);

\CIN[7]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CIN(7),
	combout => \CIN~combout\(7));

\B[7]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[7]~36\ = !\RAA~combout\(1) & (\RAA~combout\(0) & (B[7]) # !\RAA~combout\(0) & A(7))
-- B(7) = DFFEAS(\A_OUT[7]~36\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \B[0]~16_combout\, \CIN~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => \RAA~combout\(1),
	datab => A(7),
	datac => \CIN~combout\(7),
	datad => \RAA~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \B[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[7]~36\,
	regout => B(7));

\A[7]\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[7]~36\ = !\RWBA~combout\(1) & (\RWBA~combout\(0) & B(7) # !\RWBA~combout\(0) & (A[7]))
-- A(7) = DFFEAS(\B_OUT[7]~36\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \A[0]~8_combout\, \CIN~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => B(7),
	datab => \RWBA~combout\(1),
	datac => \CIN~combout\(7),
	datad => \RWBA~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \A[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[7]~36\,
	regout => A(7));

\C[7]\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[7]~37\ = \A_OUT[7]~36\ # \RAA~combout\(1) & C[7]
-- C(7) = DFFEAS(\A_OUT[7]~37\, !GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \C[0]~24_combout\, \CIN~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => \RAA~combout\(1),
	datac => \CIN~combout\(7),
	datad => \A_OUT[7]~36\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \C[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[7]~37\,
	regout => C(7));

\A_OUT[7]$latch\ : cyclone_lcell
-- Equation(s):
-- \A_OUT[7]$latch~combout\ = GLOBAL(\WE~combout\) & \A_OUT[7]~37\ # !GLOBAL(\WE~combout\) & (\A_OUT[7]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A_OUT[7]~37\,
	datac => \WE~combout\,
	datad => \A_OUT[7]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A_OUT[7]$latch~combout\);

\B_OUT[0]~23\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[0]~23_combout\ = \B_OUT[0]~22\ # C(0) & \RWBA~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_OUT[0]~22\,
	datab => C(0),
	datac => \RWBA~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[0]~23_combout\);

\B_OUT[0]$latch\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[0]$latch~combout\ = GLOBAL(\WE~combout\) & \B_OUT[0]~23_combout\ # !GLOBAL(\WE~combout\) & (\B_OUT[0]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_OUT[0]~23_combout\,
	datac => \WE~combout\,
	datad => \B_OUT[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[0]$latch~combout\);

\B_OUT[1]~25\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[1]~25_combout\ = \B_OUT[1]~24\ # \RWBA~combout\(1) & C(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B_OUT[1]~24\,
	datac => \RWBA~combout\(1),
	datad => C(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[1]~25_combout\);

\B_OUT[1]$latch\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[1]$latch~combout\ = GLOBAL(\WE~combout\) & \B_OUT[1]~25_combout\ # !GLOBAL(\WE~combout\) & (\B_OUT[1]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_OUT[1]~25_combout\,
	datac => \WE~combout\,
	datad => \B_OUT[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[1]$latch~combout\);

\B_OUT[2]~27\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[2]~27_combout\ = \B_OUT[2]~26\ # \RWBA~combout\(1) & C(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_OUT[2]~26\,
	datac => \RWBA~combout\(1),
	datad => C(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[2]~27_combout\);

\B_OUT[2]$latch\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[2]$latch~combout\ = GLOBAL(\WE~combout\) & \B_OUT[2]~27_combout\ # !GLOBAL(\WE~combout\) & (\B_OUT[2]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_OUT[2]~27_combout\,
	datac => \WE~combout\,
	datad => \B_OUT[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[2]$latch~combout\);

\B_OUT[3]~29\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[3]~29_combout\ = \B_OUT[3]~28\ # C(3) & \RWBA~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => C(3),
	datac => \RWBA~combout\(1),
	datad => \B_OUT[3]~28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[3]~29_combout\);

\B_OUT[3]$latch\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[3]$latch~combout\ = GLOBAL(\WE~combout\) & \B_OUT[3]~29_combout\ # !GLOBAL(\WE~combout\) & (\B_OUT[3]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_OUT[3]~29_combout\,
	datac => \WE~combout\,
	datad => \B_OUT[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[3]$latch~combout\);

\B_OUT[4]~31\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[4]~31_combout\ = \B_OUT[4]~30\ # \RWBA~combout\(1) & C(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RWBA~combout\(1),
	datac => C(4),
	datad => \B_OUT[4]~30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[4]~31_combout\);

\B_OUT[4]$latch\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[4]$latch~combout\ = GLOBAL(\WE~combout\) & \B_OUT[4]~31_combout\ # !GLOBAL(\WE~combout\) & (\B_OUT[4]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B_OUT[4]~31_combout\,
	datac => \WE~combout\,
	datad => \B_OUT[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[4]$latch~combout\);

\B_OUT[5]~33\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[5]~33_combout\ = \B_OUT[5]~32\ # \RWBA~combout\(1) & C(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RWBA~combout\(1),
	datab => \B_OUT[5]~32\,
	datac => C(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[5]~33_combout\);

\B_OUT[5]$latch\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[5]$latch~combout\ = GLOBAL(\WE~combout\) & \B_OUT[5]~33_combout\ # !GLOBAL(\WE~combout\) & (\B_OUT[5]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B_OUT[5]~33_combout\,
	datac => \WE~combout\,
	datad => \B_OUT[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[5]$latch~combout\);

\B_OUT[6]~35\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[6]~35_combout\ = \B_OUT[6]~34\ # C(6) & \RWBA~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => C(6),
	datac => \RWBA~combout\(1),
	datad => \B_OUT[6]~34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[6]~35_combout\);

\B_OUT[6]$latch\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[6]$latch~combout\ = GLOBAL(\WE~combout\) & \B_OUT[6]~35_combout\ # !GLOBAL(\WE~combout\) & (\B_OUT[6]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_OUT[6]~35_combout\,
	datac => \WE~combout\,
	datad => \B_OUT[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[6]$latch~combout\);

\B_OUT[7]~37\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[7]~37_combout\ = \B_OUT[7]~36\ # \RWBA~combout\(1) & C(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_OUT[7]~36\,
	datac => \RWBA~combout\(1),
	datad => C(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[7]~37_combout\);

\B_OUT[7]$latch\ : cyclone_lcell
-- Equation(s):
-- \B_OUT[7]$latch~combout\ = GLOBAL(\WE~combout\) & \B_OUT[7]~37_combout\ # !GLOBAL(\WE~combout\) & (\B_OUT[7]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \B_OUT[7]~37_combout\,
	datac => \WE~combout\,
	datad => \B_OUT[7]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \B_OUT[7]$latch~combout\);

\A_OUT[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_OUT[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_OUT(0));

\A_OUT[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_OUT[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_OUT(1));

\A_OUT[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_OUT[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_OUT(2));

\A_OUT[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_OUT[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_OUT(3));

\A_OUT[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_OUT[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_OUT(4));

\A_OUT[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_OUT[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_OUT(5));

\A_OUT[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_OUT[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_OUT(6));

\A_OUT[7]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \A_OUT[7]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_OUT(7));

\B_OUT[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_OUT[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_OUT(0));

\B_OUT[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_OUT[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_OUT(1));

\B_OUT[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_OUT[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_OUT(2));

\B_OUT[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_OUT[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_OUT(3));

\B_OUT[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_OUT[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_OUT(4));

\B_OUT[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_OUT[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_OUT(5));

\B_OUT[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_OUT[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_OUT(6));

\B_OUT[7]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B_OUT[7]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_OUT(7));
END structure;


