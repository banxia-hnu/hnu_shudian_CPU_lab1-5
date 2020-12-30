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

-- DATE "11/21/2019 20:01:06"

-- 
-- Device: Altera EP1C20F400C8 Package FBGA400
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cyclone;
USE IEEE.std_logic_1164.all;
USE cyclone.cyclone_components.all;

ENTITY 	zjw_yiweiluoji IS
    PORT (
	F : IN std_logic;
	FRL : IN std_logic;
	FRR : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	FZ : OUT std_logic;
	FC : OUT std_logic;
	data_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END zjw_yiweiluoji;

ARCHITECTURE structure OF zjw_yiweiluoji IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_FRL : std_logic;
SIGNAL ww_FRR : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FZ : std_logic;
SIGNAL ww_FC : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \FRL~combout\ : std_logic;
SIGNAL \d[0]~26_combout\ : std_logic;
SIGNAL \F~combout\ : std_logic;
SIGNAL \d[0]~27_combout\ : std_logic;
SIGNAL \FRR~combout\ : std_logic;
SIGNAL \d[7]~24_combout\ : std_logic;
SIGNAL \d[1]~40_combout\ : std_logic;
SIGNAL \d[1]~41_combout\ : std_logic;
SIGNAL \d[2]~36_combout\ : std_logic;
SIGNAL \d[2]~37_combout\ : std_logic;
SIGNAL \d[3]~30_combout\ : std_logic;
SIGNAL \d[3]~31_combout\ : std_logic;
SIGNAL \d[4]~38_combout\ : std_logic;
SIGNAL \d[4]~39_combout\ : std_logic;
SIGNAL \d[5]~32_combout\ : std_logic;
SIGNAL \d[5]~33_combout\ : std_logic;
SIGNAL \d[6]~28_combout\ : std_logic;
SIGNAL \d[6]~29_combout\ : std_logic;
SIGNAL \d[7]~34_combout\ : std_logic;
SIGNAL \d[7]~35_combout\ : std_logic;
SIGNAL \FZ~4_combout\ : std_logic;
SIGNAL \FZ~5_combout\ : std_logic;
SIGNAL \FZ~3_combout\ : std_logic;
SIGNAL \FZ~6_combout\ : std_logic;
SIGNAL \FC~3_combout\ : std_logic;
SIGNAL \FC~4_combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_F <= F;
ww_FRL <= FRL;
ww_FRR <= FRR;
ww_data_in <= data_in;
FZ <= ww_FZ;
FC <= ww_FC;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\data_in[0]~I\ : cyclone_io
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
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

\FRL~I\ : cyclone_io
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
	padio => ww_FRL,
	combout => \FRL~combout\);

\data_in[1]~I\ : cyclone_io
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
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

\data_in[7]~I\ : cyclone_io
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
	padio => ww_data_in(7),
	combout => \data_in~combout\(7));

\d[0]~26\ : cyclone_lcell
-- Equation(s):
-- \d[0]~26_combout\ = \FRL~combout\ & (\data_in~combout\(7)) # !\FRL~combout\ & \data_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FRL~combout\,
	datac => \data_in~combout\(1),
	datad => \data_in~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[0]~26_combout\);

\F~I\ : cyclone_io
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
	padio => ww_F,
	combout => \F~combout\);

\d[0]~27\ : cyclone_lcell
-- Equation(s):
-- \d[0]~27_combout\ = \F~combout\ & \data_in~combout\(0) # !\F~combout\ & (\d[0]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(0),
	datac => \d[0]~26_combout\,
	datad => \F~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[0]~27_combout\);

\FRR~I\ : cyclone_io
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
	padio => ww_FRR,
	combout => \FRR~combout\);

\d[7]~24\ : cyclone_lcell
-- Equation(s):
-- \d[7]~24_combout\ = \FRL~combout\ # \FRR~combout\ # \F~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FRL~combout\,
	datac => \FRR~combout\,
	datad => \F~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[7]~24_combout\);

\data_in[2]~I\ : cyclone_io
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
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

\d[1]~40\ : cyclone_lcell
-- Equation(s):
-- \d[1]~40_combout\ = \FRL~combout\ & \data_in~combout\(0) # !\FRL~combout\ & (\data_in~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FRL~combout\,
	datac => \data_in~combout\(0),
	datad => \data_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[1]~40_combout\);

\d[1]~41\ : cyclone_lcell
-- Equation(s):
-- \d[1]~41_combout\ = \F~combout\ & \data_in~combout\(1) # !\F~combout\ & (\d[1]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(1),
	datac => \d[1]~40_combout\,
	datad => \F~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[1]~41_combout\);

\data_in[3]~I\ : cyclone_io
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
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

\d[2]~36\ : cyclone_lcell
-- Equation(s):
-- \d[2]~36_combout\ = \FRL~combout\ & \data_in~combout\(1) # !\FRL~combout\ & (\data_in~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(1),
	datab => \FRL~combout\,
	datac => \data_in~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[2]~36_combout\);

\d[2]~37\ : cyclone_lcell
-- Equation(s):
-- \d[2]~37_combout\ = \F~combout\ & \data_in~combout\(2) # !\F~combout\ & (\d[2]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(2),
	datac => \d[2]~36_combout\,
	datad => \F~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[2]~37_combout\);

\data_in[4]~I\ : cyclone_io
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
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

\d[3]~30\ : cyclone_lcell
-- Equation(s):
-- \d[3]~30_combout\ = \FRL~combout\ & (\data_in~combout\(2)) # !\FRL~combout\ & \data_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FRL~combout\,
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[3]~30_combout\);

\d[3]~31\ : cyclone_lcell
-- Equation(s):
-- \d[3]~31_combout\ = \F~combout\ & (\data_in~combout\(3)) # !\F~combout\ & \d[3]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d[3]~30_combout\,
	datac => \data_in~combout\(3),
	datad => \F~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[3]~31_combout\);

\data_in[5]~I\ : cyclone_io
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
	padio => ww_data_in(5),
	combout => \data_in~combout\(5));

\d[4]~38\ : cyclone_lcell
-- Equation(s):
-- \d[4]~38_combout\ = \FRL~combout\ & \data_in~combout\(3) # !\FRL~combout\ & (\data_in~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FRL~combout\,
	datac => \data_in~combout\(3),
	datad => \data_in~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[4]~38_combout\);

\d[4]~39\ : cyclone_lcell
-- Equation(s):
-- \d[4]~39_combout\ = \F~combout\ & (\data_in~combout\(4)) # !\F~combout\ & \d[4]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \d[4]~38_combout\,
	datac => \data_in~combout\(4),
	datad => \F~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[4]~39_combout\);

\data_in[6]~I\ : cyclone_io
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
	padio => ww_data_in(6),
	combout => \data_in~combout\(6));

\d[5]~32\ : cyclone_lcell
-- Equation(s):
-- \d[5]~32_combout\ = \FRL~combout\ & \data_in~combout\(4) # !\FRL~combout\ & (\data_in~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FRL~combout\,
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[5]~32_combout\);

\d[5]~33\ : cyclone_lcell
-- Equation(s):
-- \d[5]~33_combout\ = \F~combout\ & (\data_in~combout\(5)) # !\F~combout\ & (\d[5]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F~combout\,
	datac => \d[5]~32_combout\,
	datad => \data_in~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[5]~33_combout\);

\d[6]~28\ : cyclone_lcell
-- Equation(s):
-- \d[6]~28_combout\ = \FRL~combout\ & \data_in~combout\(5) # !\FRL~combout\ & (\data_in~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datab => \FRL~combout\,
	datad => \data_in~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[6]~28_combout\);

\d[6]~29\ : cyclone_lcell
-- Equation(s):
-- \d[6]~29_combout\ = \F~combout\ & \data_in~combout\(6) # !\F~combout\ & (\d[6]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(6),
	datac => \d[6]~28_combout\,
	datad => \F~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[6]~29_combout\);

\d[7]~34\ : cyclone_lcell
-- Equation(s):
-- \d[7]~34_combout\ = \FRL~combout\ & (\data_in~combout\(6)) # !\FRL~combout\ & \data_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FRL~combout\,
	datac => \data_in~combout\(0),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[7]~34_combout\);

\d[7]~35\ : cyclone_lcell
-- Equation(s):
-- \d[7]~35_combout\ = \F~combout\ & (\data_in~combout\(7)) # !\F~combout\ & (\d[7]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F~combout\,
	datac => \d[7]~34_combout\,
	datad => \data_in~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \d[7]~35_combout\);

\FZ~4\ : cyclone_lcell
-- Equation(s):
-- \FZ~4_combout\ = !\d[1]~41_combout\ & !\d[7]~35_combout\ & !\d[4]~39_combout\ & !\d[2]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d[1]~41_combout\,
	datab => \d[7]~35_combout\,
	datac => \d[4]~39_combout\,
	datad => \d[2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FZ~4_combout\);

\FZ~5\ : cyclone_lcell
-- Equation(s):
-- \FZ~5_combout\ = !\F~combout\ & (\FRL~combout\ # \FRR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FRL~combout\,
	datac => \F~combout\,
	datad => \FRR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FZ~5_combout\);

\FZ~3\ : cyclone_lcell
-- Equation(s):
-- \FZ~3_combout\ = !\d[0]~27_combout\ & !\d[3]~31_combout\ & !\d[5]~33_combout\ & !\d[6]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~27_combout\,
	datab => \d[3]~31_combout\,
	datac => \d[5]~33_combout\,
	datad => \d[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FZ~3_combout\);

\FZ~6\ : cyclone_lcell
-- Equation(s):
-- \FZ~6_combout\ = \FZ~4_combout\ & \FZ~5_combout\ & \FZ~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FZ~4_combout\,
	datac => \FZ~5_combout\,
	datad => \FZ~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FZ~6_combout\);

\FC~3\ : cyclone_lcell
-- Equation(s):
-- \FC~3_combout\ = \data_in~combout\(0) & \FRR~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(0),
	datac => \FRR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FC~3_combout\);

\FC~4\ : cyclone_lcell
-- Equation(s):
-- \FC~4_combout\ = !\F~combout\ & (\FRL~combout\ & (\data_in~combout\(7)) # !\FRL~combout\ & \FC~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \F~combout\,
	datab => \FRL~combout\,
	datac => \FC~3_combout\,
	datad => \data_in~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FC~4_combout\);

\data_out[0]~I\ : cyclone_io
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
	datain => \d[0]~27_combout\,
	oe => \d[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_data_out(0));

\data_out[1]~I\ : cyclone_io
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
	datain => \d[1]~41_combout\,
	oe => \d[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_data_out(1));

\data_out[2]~I\ : cyclone_io
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
	datain => \d[2]~37_combout\,
	oe => \d[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_data_out(2));

\data_out[3]~I\ : cyclone_io
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
	datain => \d[3]~31_combout\,
	oe => \d[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_data_out(3));

\data_out[4]~I\ : cyclone_io
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
	datain => \d[4]~39_combout\,
	oe => \d[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_data_out(4));

\data_out[5]~I\ : cyclone_io
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
	datain => \d[5]~33_combout\,
	oe => \d[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_data_out(5));

\data_out[6]~I\ : cyclone_io
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
	datain => \d[6]~29_combout\,
	oe => \d[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_data_out(6));

\data_out[7]~I\ : cyclone_io
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
	datain => \d[7]~35_combout\,
	oe => \d[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_data_out(7));

\FZ~I\ : cyclone_io
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
	datain => \FZ~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FZ);

\FC~I\ : cyclone_io
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
	datain => \FC~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FC);
END structure;


