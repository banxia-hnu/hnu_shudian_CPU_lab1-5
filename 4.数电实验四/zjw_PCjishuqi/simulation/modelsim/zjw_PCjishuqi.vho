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

-- DATE "12/05/2019 18:39:34"

-- 
-- Device: Altera EP1C20F400C8 Package FBGA400
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cyclone;
USE IEEE.std_logic_1164.all;
USE cyclone.cyclone_components.all;

ENTITY 	zjw_PCjishuqi IS
    PORT (
	CIN : IN std_logic_vector(7 DOWNTO 0);
	IN_PC : IN std_logic;
	LD_PC : IN std_logic;
	Reset : IN std_logic;
	clk : IN std_logic;
	NOP : IN std_logic;
	PC : OUT std_logic_vector(7 DOWNTO 0)
	);
END zjw_PCjishuqi;

ARCHITECTURE structure OF zjw_PCjishuqi IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IN_PC : std_logic;
SIGNAL ww_LD_PC : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_NOP : std_logic;
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \LD_PC~combout\ : std_logic;
SIGNAL \NOP~combout\ : std_logic;
SIGNAL \IN_PC~combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \d[0]~32_combout\ : std_logic;
SIGNAL \d[0]~17\ : std_logic;
SIGNAL \d[0]~17COUT1_41\ : std_logic;
SIGNAL \d[1]~19\ : std_logic;
SIGNAL \d[1]~19COUT1_43\ : std_logic;
SIGNAL \d[2]~21\ : std_logic;
SIGNAL \d[2]~21COUT1_45\ : std_logic;
SIGNAL \d[3]~23\ : std_logic;
SIGNAL \d[3]~23COUT1_47\ : std_logic;
SIGNAL \d[4]~25\ : std_logic;
SIGNAL \d[5]~27\ : std_logic;
SIGNAL \d[5]~27COUT1_49\ : std_logic;
SIGNAL \d[6]~29\ : std_logic;
SIGNAL \d[6]~29COUT1_51\ : std_logic;
SIGNAL \CIN~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL d : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~combout\ : std_logic;

BEGIN

ww_CIN <= CIN;
ww_IN_PC <= IN_PC;
ww_LD_PC <= LD_PC;
ww_Reset <= Reset;
ww_clk <= clk;
ww_NOP <= NOP;
PC <= ww_PC;
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

\Reset~I\ : cyclone_io
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
	padio => ww_Reset,
	combout => \Reset~combout\);

\LD_PC~I\ : cyclone_io
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
	padio => ww_LD_PC,
	combout => \LD_PC~combout\);

\NOP~I\ : cyclone_io
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
	padio => ww_NOP,
	combout => \NOP~combout\);

\IN_PC~I\ : cyclone_io
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
	padio => ww_IN_PC,
	combout => \IN_PC~combout\);

\process_0~1\ : cyclone_lcell
-- Equation(s):
-- \process_0~1_combout\ = !\NOP~combout\ & (\LD_PC~combout\ # !\IN_PC~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LD_PC~combout\,
	datac => \NOP~combout\,
	datad => \IN_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~1_combout\);

\d[0]~32\ : cyclone_lcell
-- Equation(s):
-- \d[0]~32_combout\ = \NOP~combout\ # \LD_PC~combout\ $ \IN_PC~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LD_PC~combout\,
	datac => \NOP~combout\,
	datad => \IN_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[0]~32_combout\);

\d[0]\ : cyclone_lcell
-- Equation(s):
-- d(0) = DFFEAS(!d(0), !GLOBAL(\clk~combout\), !GLOBAL(\Reset~combout\), , \d[0]~32_combout\, \CIN~combout\(0), , , \process_0~1_combout\)
-- \d[0]~17\ = CARRY(d(0))
-- \d[0]~17COUT1_41\ = CARRY(d(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => d(0),
	datac => \CIN~combout\(0),
	aclr => \Reset~combout\,
	sload => \process_0~1_combout\,
	ena => \d[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(0),
	cout0 => \d[0]~17\,
	cout1 => \d[0]~17COUT1_41\);

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

\d[1]\ : cyclone_lcell
-- Equation(s):
-- d(1) = DFFEAS(d(1) $ (\d[0]~17\), !GLOBAL(\clk~combout\), !GLOBAL(\Reset~combout\), , \d[0]~32_combout\, \CIN~combout\(1), , , \process_0~1_combout\)
-- \d[1]~19\ = CARRY(!\d[0]~17\ # !d(1))
-- \d[1]~19COUT1_43\ = CARRY(!\d[0]~17COUT1_41\ # !d(1))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => d(1),
	datac => \CIN~combout\(1),
	aclr => \Reset~combout\,
	sload => \process_0~1_combout\,
	ena => \d[0]~32_combout\,
	cin0 => \d[0]~17\,
	cin1 => \d[0]~17COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(1),
	cout0 => \d[1]~19\,
	cout1 => \d[1]~19COUT1_43\);

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

\d[2]\ : cyclone_lcell
-- Equation(s):
-- d(2) = DFFEAS(d(2) $ (!\d[1]~19\), !GLOBAL(\clk~combout\), !GLOBAL(\Reset~combout\), , \d[0]~32_combout\, \CIN~combout\(2), , , \process_0~1_combout\)
-- \d[2]~21\ = CARRY(d(2) & (!\d[1]~19\))
-- \d[2]~21COUT1_45\ = CARRY(d(2) & (!\d[1]~19COUT1_43\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => d(2),
	datac => \CIN~combout\(2),
	aclr => \Reset~combout\,
	sload => \process_0~1_combout\,
	ena => \d[0]~32_combout\,
	cin0 => \d[1]~19\,
	cin1 => \d[1]~19COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(2),
	cout0 => \d[2]~21\,
	cout1 => \d[2]~21COUT1_45\);

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

\d[3]\ : cyclone_lcell
-- Equation(s):
-- d(3) = DFFEAS(d(3) $ \d[2]~21\, !GLOBAL(\clk~combout\), !GLOBAL(\Reset~combout\), , \d[0]~32_combout\, \CIN~combout\(3), , , \process_0~1_combout\)
-- \d[3]~23\ = CARRY(!\d[2]~21\ # !d(3))
-- \d[3]~23COUT1_47\ = CARRY(!\d[2]~21COUT1_45\ # !d(3))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => d(3),
	datac => \CIN~combout\(3),
	aclr => \Reset~combout\,
	sload => \process_0~1_combout\,
	ena => \d[0]~32_combout\,
	cin0 => \d[2]~21\,
	cin1 => \d[2]~21COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(3),
	cout0 => \d[3]~23\,
	cout1 => \d[3]~23COUT1_47\);

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

\d[4]\ : cyclone_lcell
-- Equation(s):
-- d(4) = DFFEAS(d(4) $ !\d[3]~23\, !GLOBAL(\clk~combout\), !GLOBAL(\Reset~combout\), , \d[0]~32_combout\, \CIN~combout\(4), , , \process_0~1_combout\)
-- \d[4]~25\ = CARRY(d(4) & !\d[3]~23COUT1_47\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => d(4),
	datac => \CIN~combout\(4),
	aclr => \Reset~combout\,
	sload => \process_0~1_combout\,
	ena => \d[0]~32_combout\,
	cin0 => \d[3]~23\,
	cin1 => \d[3]~23COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(4),
	cout => \d[4]~25\);

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

\d[5]\ : cyclone_lcell
-- Equation(s):
-- d(5) = DFFEAS(d(5) $ \d[4]~25\, !GLOBAL(\clk~combout\), !GLOBAL(\Reset~combout\), , \d[0]~32_combout\, \CIN~combout\(5), , , \process_0~1_combout\)
-- \d[5]~27\ = CARRY(!\d[4]~25\ # !d(5))
-- \d[5]~27COUT1_49\ = CARRY(!\d[4]~25\ # !d(5))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datab => d(5),
	datac => \CIN~combout\(5),
	aclr => \Reset~combout\,
	sload => \process_0~1_combout\,
	ena => \d[0]~32_combout\,
	cin => \d[4]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(5),
	cout0 => \d[5]~27\,
	cout1 => \d[5]~27COUT1_49\);

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

\d[6]\ : cyclone_lcell
-- Equation(s):
-- d(6) = DFFEAS(d(6) $ (!(!\d[4]~25\ & \d[5]~27\) # (\d[4]~25\ & \d[5]~27COUT1_49\)), !GLOBAL(\clk~combout\), !GLOBAL(\Reset~combout\), , \d[0]~32_combout\, \CIN~combout\(6), , , \process_0~1_combout\)
-- \d[6]~29\ = CARRY(d(6) & (!\d[5]~27\))
-- \d[6]~29COUT1_51\ = CARRY(d(6) & (!\d[5]~27COUT1_49\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => d(6),
	datac => \CIN~combout\(6),
	aclr => \Reset~combout\,
	sload => \process_0~1_combout\,
	ena => \d[0]~32_combout\,
	cin => \d[4]~25\,
	cin0 => \d[5]~27\,
	cin1 => \d[5]~27COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(6),
	cout0 => \d[6]~29\,
	cout1 => \d[6]~29COUT1_51\);

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

\d[7]\ : cyclone_lcell
-- Equation(s):
-- d(7) = DFFEAS(d(7) $ ((!\d[4]~25\ & \d[6]~29\) # (\d[4]~25\ & \d[6]~29COUT1_51\)), !GLOBAL(\clk~combout\), !GLOBAL(\Reset~combout\), , \d[0]~32_combout\, \CIN~combout\(7), , , \process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	dataa => d(7),
	datac => \CIN~combout\(7),
	aclr => \Reset~combout\,
	sload => \process_0~1_combout\,
	ena => \d[0]~32_combout\,
	cin => \d[4]~25\,
	cin0 => \d[6]~29\,
	cin1 => \d[6]~29COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d(7));

\PC[0]~I\ : cyclone_io
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
	datain => d(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(0));

\PC[1]~I\ : cyclone_io
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
	datain => d(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(1));

\PC[2]~I\ : cyclone_io
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
	datain => d(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(2));

\PC[3]~I\ : cyclone_io
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
	datain => d(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(3));

\PC[4]~I\ : cyclone_io
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
	datain => d(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(4));

\PC[5]~I\ : cyclone_io
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
	datain => d(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(5));

\PC[6]~I\ : cyclone_io
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
	datain => d(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(6));

\PC[7]~I\ : cyclone_io
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
	datain => d(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(7));
END structure;


