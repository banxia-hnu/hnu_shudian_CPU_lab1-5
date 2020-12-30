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

-- DATE "11/21/2019 19:56:15"

-- 
-- Device: Altera EP1C20F400C8 Package FBGA400
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cyclone;
USE IEEE.std_logic_1164.all;
USE cyclone.cyclone_components.all;

ENTITY 	zjw_ALU IS
    PORT (
	R1 : IN std_logic_vector(7 DOWNTO 0);
	R2 : IN std_logic_vector(7 DOWNTO 0);
	S : IN std_logic_vector(3 DOWNTO 0);
	M : IN std_logic;
	C : OUT std_logic;
	Z : OUT std_logic;
	Rlout : OUT std_logic_vector(7 DOWNTO 0)
	);
END zjw_ALU;

ARCHITECTURE structure OF zjw_ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_Rlout : std_logic_vector(7 DOWNTO 0);
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \M~combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Rlout[0]~61_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Rlout[0]~62_combout\ : std_logic;
SIGNAL \sum[8]~11_combout\ : std_logic;
SIGNAL \Rlout[0]~63_combout\ : std_logic;
SIGNAL \Rlout[0]~64_combout\ : std_logic;
SIGNAL \Rlout[0]~65_combout\ : std_logic;
SIGNAL \Rlout[0]~66_combout\ : std_logic;
SIGNAL \Rlout[0]~67_combout\ : std_logic;
SIGNAL \Rlout[0]~68_combout\ : std_logic;
SIGNAL \Rlout[7]~70_combout\ : std_logic;
SIGNAL \Rlout[7]~69_combout\ : std_logic;
SIGNAL \Rlout[7]~71_combout\ : std_logic;
SIGNAL \Rlout[1]~74_combout\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[0]~COUTCOUT1_10\ : std_logic;
SIGNAL \Rlout[1]~72_combout\ : std_logic;
SIGNAL \Rlout[1]~73_combout\ : std_logic;
SIGNAL \Rlout[1]~75_combout\ : std_logic;
SIGNAL \Rlout[2]~78_combout\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[1]~COUTCOUT1_12\ : std_logic;
SIGNAL \Rlout[2]~76_combout\ : std_logic;
SIGNAL \Rlout[2]~77_combout\ : std_logic;
SIGNAL \Rlout[2]~79_combout\ : std_logic;
SIGNAL \Rlout[3]~82_combout\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[2]~COUTCOUT1_14\ : std_logic;
SIGNAL \Rlout[3]~80_combout\ : std_logic;
SIGNAL \Rlout[3]~81_combout\ : std_logic;
SIGNAL \Rlout[3]~83_combout\ : std_logic;
SIGNAL \Rlout[4]~86_combout\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[3]~COUTCOUT1_16\ : std_logic;
SIGNAL \Rlout[4]~84_combout\ : std_logic;
SIGNAL \Rlout[4]~85_combout\ : std_logic;
SIGNAL \Rlout[4]~87_combout\ : std_logic;
SIGNAL \Rlout[5]~89_combout\ : std_logic;
SIGNAL \Rlout[5]~90_combout\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \Rlout[5]~88_combout\ : std_logic;
SIGNAL \Rlout[5]~91_combout\ : std_logic;
SIGNAL \Rlout[6]~93_combout\ : std_logic;
SIGNAL \Rlout[6]~94_combout\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[5]~COUTCOUT1_18\ : std_logic;
SIGNAL \Rlout[6]~92_combout\ : std_logic;
SIGNAL \Rlout[6]~95_combout\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[6]~COUTCOUT1_20\ : std_logic;
SIGNAL \Rlout[7]~96_combout\ : std_logic;
SIGNAL \Rlout[7]~97_combout\ : std_logic;
SIGNAL \Rlout[7]~98_combout\ : std_logic;
SIGNAL \Rlout[7]~99_combout\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \Add0|stratix_adder|add_sub_cell[7]~COUTCOUT1_22\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \R1~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R2~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \S~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL sum : std_logic_vector(8 DOWNTO 0);
SIGNAL \Add0|stratix_adder|add_sub_cell\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_R1 <= R1;
ww_R2 <= R2;
ww_S <= S;
ww_M <= M;
C <= ww_C;
Z <= ww_Z;
Rlout <= ww_Rlout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\S[0]~I\ : cyclone_io
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
	padio => ww_S(0),
	combout => \S~combout\(0));

\S[3]~I\ : cyclone_io
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
	padio => ww_S(3),
	combout => \S~combout\(3));

\S[1]~I\ : cyclone_io
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
	padio => ww_S(1),
	combout => \S~combout\(1));

\S[2]~I\ : cyclone_io
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
	padio => ww_S(2),
	combout => \S~combout\(2));

\Equal2~0\ : cyclone_lcell
-- Equation(s):
-- \Equal2~0_combout\ = !\S~combout\(0) & !\S~combout\(3) & \S~combout\(1) & \S~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datab => \S~combout\(3),
	datac => \S~combout\(1),
	datad => \S~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

\M~I\ : cyclone_io
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
	padio => ww_M,
	combout => \M~combout\);

\Equal1~1\ : cyclone_lcell
-- Equation(s):
-- \Equal1~1_combout\ = \S~combout\(0) & (!\S~combout\(2) & \S~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datac => \S~combout\(2),
	datad => \S~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

\Rlout[0]~61\ : cyclone_lcell
-- Equation(s):
-- \Rlout[0]~61_combout\ = \M~combout\ & (\Equal2~0_combout\ $ (!\S~combout\(1) & \Equal1~1_combout\)) # !\M~combout\ & (!\Equal1~1_combout\ # !\S~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "93af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \S~combout\(1),
	datac => \M~combout\,
	datad => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[0]~61_combout\);

\process_0~0\ : cyclone_lcell
-- Equation(s):
-- \process_0~0_combout\ = !\S~combout\(0) & (\S~combout\(1) & !\S~combout\(2) & \S~combout\(3) # !\S~combout\(1) & \S~combout\(2) & !\S~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datab => \S~combout\(1),
	datac => \S~combout\(2),
	datad => \S~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0_combout\);

\Equal1~0\ : cyclone_lcell
-- Equation(s):
-- \Equal1~0_combout\ = \S~combout\(1) # \S~combout\(2) # !\S~combout\(3) # !\S~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datab => \S~combout\(3),
	datac => \S~combout\(1),
	datad => \S~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

\Rlout[0]~62\ : cyclone_lcell
-- Equation(s):
-- \Rlout[0]~62_combout\ = \M~combout\ & (\process_0~0_combout\ # \Equal1~0_combout\ $ !\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c88c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \M~combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[0]~62_combout\);

\R1[0]~I\ : cyclone_io
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
	padio => ww_R1(0),
	combout => \R1~combout\(0));

\R2[0]~I\ : cyclone_io
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
	padio => ww_R2(0),
	combout => \R2~combout\(0));

\Add0|stratix_adder|add_sub_cell[0]\ : cyclone_lcell
-- Equation(s):
-- \Add0|stratix_adder|add_sub_cell\(0) = \R2~combout\(0) $ \Equal1~0_combout\ $ \R1~combout\(0) $ \Equal1~0_combout\
-- \Add0|stratix_adder|add_sub_cell[0]~COUT\ = CARRY(\R2~combout\(0) $ \Equal1~0_combout\ & (\R1~combout\(0) # \Equal1~0_combout\) # !\R2~combout\(0) $ \Equal1~0_combout\ & \R1~combout\(0) & \Equal1~0_combout\)
-- \Add0|stratix_adder|add_sub_cell[0]~COUTCOUT1_10\ = CARRY(\R2~combout\(0) $ \Equal1~0_combout\ & (\R1~combout\(0) # \Equal1~0_combout\) # !\R2~combout\(0) $ \Equal1~0_combout\ & \R1~combout\(0) & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96e8",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(0),
	datab => \R1~combout\(0),
	inverta => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0|stratix_adder|add_sub_cell\(0),
	cout0 => \Add0|stratix_adder|add_sub_cell[0]~COUT\,
	cout1 => \Add0|stratix_adder|add_sub_cell[0]~COUTCOUT1_10\);

\sum[8]~11\ : cyclone_lcell
-- Equation(s):
-- \sum[8]~11_combout\ = \M~combout\ & (\Equal2~0_combout\ # !\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \M~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sum[8]~11_combout\);

\sum[0]\ : cyclone_lcell
-- Equation(s):
-- sum(0) = GLOBAL(\sum[8]~11_combout\) & (\Add0|stratix_adder|add_sub_cell\(0)) # !GLOBAL(\sum[8]~11_combout\) & sum(0)

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
	datab => sum(0),
	datac => \Add0|stratix_adder|add_sub_cell\(0),
	datad => \sum[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => sum(0));

\Rlout[0]~63\ : cyclone_lcell
-- Equation(s):
-- \Rlout[0]~63_combout\ = \Rlout[0]~61_combout\ & (\Rlout[0]~62_combout\ & (sum(0)) # !\Rlout[0]~62_combout\ & !\R1~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[0]~61_combout\,
	datab => \Rlout[0]~62_combout\,
	datac => \R1~combout\(0),
	datad => sum(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[0]~63_combout\);

\Rlout[0]~64\ : cyclone_lcell
-- Equation(s):
-- \Rlout[0]~64_combout\ = \S~combout\(0) & \S~combout\(1) & !\S~combout\(2) & \S~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datab => \S~combout\(1),
	datac => \S~combout\(2),
	datad => \S~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[0]~64_combout\);

\Rlout[0]~65\ : cyclone_lcell
-- Equation(s):
-- \Rlout[0]~65_combout\ = !\M~combout\ & \Rlout[0]~64_combout\ & (\R1~combout\(0) # \R2~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M~combout\,
	datab => \R1~combout\(0),
	datac => \Rlout[0]~64_combout\,
	datad => \R2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[0]~65_combout\);

\Rlout[0]~66\ : cyclone_lcell
-- Equation(s):
-- \Rlout[0]~66_combout\ = \Rlout[0]~62_combout\ & (\R1~combout\(0)) # !\Rlout[0]~62_combout\ & \R2~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(0),
	datab => \R1~combout\(0),
	datad => \Rlout[0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[0]~66_combout\);

\Rlout[0]~67\ : cyclone_lcell
-- Equation(s):
-- \Rlout[0]~67_combout\ = \M~combout\ & (\Equal2~0_combout\ $ (\S~combout\(1) # !\Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \S~combout\(1),
	datac => \M~combout\,
	datad => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[0]~67_combout\);

\Rlout[0]~68\ : cyclone_lcell
-- Equation(s):
-- \Rlout[0]~68_combout\ = \Rlout[0]~63_combout\ # \Rlout[0]~65_combout\ # \Rlout[0]~66_combout\ & \Rlout[0]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[0]~63_combout\,
	datab => \Rlout[0]~65_combout\,
	datac => \Rlout[0]~66_combout\,
	datad => \Rlout[0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[0]~68_combout\);

\Rlout[7]~70\ : cyclone_lcell
-- Equation(s):
-- \Rlout[7]~70_combout\ = \S~combout\(1) & \S~combout\(3) & (\S~combout\(2) $ !\M~combout\) # !\S~combout\(1) & \S~combout\(2) & !\M~combout\ & !\S~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8402",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(2),
	datab => \S~combout\(1),
	datac => \M~combout\,
	datad => \S~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[7]~70_combout\);

\Rlout[7]~69\ : cyclone_lcell
-- Equation(s):
-- \Rlout[7]~69_combout\ = \S~combout\(2) & !\S~combout\(0) & (!\S~combout\(3)) # !\S~combout\(2) & \S~combout\(3) & (\S~combout\(0) $ \S~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0650",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datab => \S~combout\(1),
	datac => \S~combout\(2),
	datad => \S~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[7]~69_combout\);

\Rlout[7]~71\ : cyclone_lcell
-- Equation(s):
-- \Rlout[7]~71_combout\ = \S~combout\(0) & (\Rlout[7]~70_combout\ # \M~combout\ & \Rlout[7]~69_combout\) # !\S~combout\(0) & (\M~combout\ & \Rlout[7]~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(0),
	datab => \Rlout[7]~70_combout\,
	datac => \M~combout\,
	datad => \Rlout[7]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[7]~71_combout\);

\R1[1]~I\ : cyclone_io
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
	padio => ww_R1(1),
	combout => \R1~combout\(1));

\R2[1]~I\ : cyclone_io
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
	padio => ww_R2(1),
	combout => \R2~combout\(1));

\Rlout[1]~74\ : cyclone_lcell
-- Equation(s):
-- \Rlout[1]~74_combout\ = \Rlout[0]~62_combout\ & \R1~combout\(1) # !\Rlout[0]~62_combout\ & (\R2~combout\(1))

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
	dataa => \R1~combout\(1),
	datab => \R2~combout\(1),
	datac => \Rlout[0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[1]~74_combout\);

\Add0|stratix_adder|add_sub_cell[1]\ : cyclone_lcell
-- Equation(s):
-- \Add0|stratix_adder|add_sub_cell\(1) = \R2~combout\(1) $ \Equal1~0_combout\ $ \R1~combout\(1) $ (!\Equal1~0_combout\ & \Add0|stratix_adder|add_sub_cell[0]~COUT\) # (\Equal1~0_combout\ & \Add0|stratix_adder|add_sub_cell[0]~COUTCOUT1_10\)
-- \Add0|stratix_adder|add_sub_cell[1]~COUT\ = CARRY(\R2~combout\(1) $ \Equal1~0_combout\ & !\R1~combout\(1) & !\Add0|stratix_adder|add_sub_cell[0]~COUT\ # !\R2~combout\(1) $ \Equal1~0_combout\ & (!\Add0|stratix_adder|add_sub_cell[0]~COUT\ # 
-- !\R1~combout\(1)))
-- \Add0|stratix_adder|add_sub_cell[1]~COUTCOUT1_12\ = CARRY(\R2~combout\(1) $ \Equal1~0_combout\ & !\R1~combout\(1) & !\Add0|stratix_adder|add_sub_cell[0]~COUTCOUT1_10\ # !\R2~combout\(1) $ \Equal1~0_combout\ & 
-- (!\Add0|stratix_adder|add_sub_cell[0]~COUTCOUT1_10\ # !\R1~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(1),
	datab => \R1~combout\(1),
	cin0 => \Add0|stratix_adder|add_sub_cell[0]~COUT\,
	cin1 => \Add0|stratix_adder|add_sub_cell[0]~COUTCOUT1_10\,
	inverta => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0|stratix_adder|add_sub_cell\(1),
	cout0 => \Add0|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \Add0|stratix_adder|add_sub_cell[1]~COUTCOUT1_12\);

\sum[1]\ : cyclone_lcell
-- Equation(s):
-- sum(1) = GLOBAL(\sum[8]~11_combout\) & \Add0|stratix_adder|add_sub_cell\(1) # !GLOBAL(\sum[8]~11_combout\) & (sum(1))

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
	dataa => \Add0|stratix_adder|add_sub_cell\(1),
	datac => sum(1),
	datad => \sum[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => sum(1));

\Rlout[1]~72\ : cyclone_lcell
-- Equation(s):
-- \Rlout[1]~72_combout\ = \Rlout[0]~61_combout\ & (\Rlout[0]~62_combout\ & sum(1) # !\Rlout[0]~62_combout\ & (!\R1~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[0]~62_combout\,
	datab => \Rlout[0]~61_combout\,
	datac => sum(1),
	datad => \R1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[1]~72_combout\);

\Rlout[1]~73\ : cyclone_lcell
-- Equation(s):
-- \Rlout[1]~73_combout\ = \Rlout[0]~64_combout\ & !\M~combout\ & (\R1~combout\(1) # \R2~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1~combout\(1),
	datab => \Rlout[0]~64_combout\,
	datac => \R2~combout\(1),
	datad => \M~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[1]~73_combout\);

\Rlout[1]~75\ : cyclone_lcell
-- Equation(s):
-- \Rlout[1]~75_combout\ = \Rlout[1]~72_combout\ # \Rlout[1]~73_combout\ # \Rlout[1]~74_combout\ & \Rlout[0]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[1]~74_combout\,
	datab => \Rlout[1]~72_combout\,
	datac => \Rlout[1]~73_combout\,
	datad => \Rlout[0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[1]~75_combout\);

\R2[2]~I\ : cyclone_io
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
	padio => ww_R2(2),
	combout => \R2~combout\(2));

\R1[2]~I\ : cyclone_io
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
	padio => ww_R1(2),
	combout => \R1~combout\(2));

\Rlout[2]~78\ : cyclone_lcell
-- Equation(s):
-- \Rlout[2]~78_combout\ = \Rlout[0]~62_combout\ & (\R1~combout\(2)) # !\Rlout[0]~62_combout\ & \R2~combout\(2)

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
	datab => \R2~combout\(2),
	datac => \Rlout[0]~62_combout\,
	datad => \R1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[2]~78_combout\);

\Add0|stratix_adder|add_sub_cell[2]\ : cyclone_lcell
-- Equation(s):
-- \Add0|stratix_adder|add_sub_cell\(2) = \R2~combout\(2) $ \Equal1~0_combout\ $ \R1~combout\(2) $ !(!\Equal1~0_combout\ & \Add0|stratix_adder|add_sub_cell[1]~COUT\) # (\Equal1~0_combout\ & \Add0|stratix_adder|add_sub_cell[1]~COUTCOUT1_12\)
-- \Add0|stratix_adder|add_sub_cell[2]~COUT\ = CARRY(\R2~combout\(2) $ \Equal1~0_combout\ & (\R1~combout\(2) # !\Add0|stratix_adder|add_sub_cell[1]~COUT\) # !\R2~combout\(2) $ \Equal1~0_combout\ & \R1~combout\(2) & !\Add0|stratix_adder|add_sub_cell[1]~COUT\)
-- \Add0|stratix_adder|add_sub_cell[2]~COUTCOUT1_14\ = CARRY(\R2~combout\(2) $ \Equal1~0_combout\ & (\R1~combout\(2) # !\Add0|stratix_adder|add_sub_cell[1]~COUTCOUT1_12\) # !\R2~combout\(2) $ \Equal1~0_combout\ & \R1~combout\(2) & 
-- !\Add0|stratix_adder|add_sub_cell[1]~COUTCOUT1_12\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(2),
	datab => \R1~combout\(2),
	cin0 => \Add0|stratix_adder|add_sub_cell[1]~COUT\,
	cin1 => \Add0|stratix_adder|add_sub_cell[1]~COUTCOUT1_12\,
	inverta => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0|stratix_adder|add_sub_cell\(2),
	cout0 => \Add0|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \Add0|stratix_adder|add_sub_cell[2]~COUTCOUT1_14\);

\sum[2]\ : cyclone_lcell
-- Equation(s):
-- sum(2) = GLOBAL(\sum[8]~11_combout\) & (\Add0|stratix_adder|add_sub_cell\(2)) # !GLOBAL(\sum[8]~11_combout\) & sum(2)

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
	datab => sum(2),
	datac => \Add0|stratix_adder|add_sub_cell\(2),
	datad => \sum[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => sum(2));

\Rlout[2]~76\ : cyclone_lcell
-- Equation(s):
-- \Rlout[2]~76_combout\ = \Rlout[0]~61_combout\ & (\Rlout[0]~62_combout\ & sum(2) # !\Rlout[0]~62_combout\ & (!\R1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sum(2),
	datab => \Rlout[0]~62_combout\,
	datac => \Rlout[0]~61_combout\,
	datad => \R1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[2]~76_combout\);

\Rlout[2]~77\ : cyclone_lcell
-- Equation(s):
-- \Rlout[2]~77_combout\ = !\M~combout\ & \Rlout[0]~64_combout\ & (\R2~combout\(2) # \R1~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M~combout\,
	datab => \R2~combout\(2),
	datac => \Rlout[0]~64_combout\,
	datad => \R1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[2]~77_combout\);

\Rlout[2]~79\ : cyclone_lcell
-- Equation(s):
-- \Rlout[2]~79_combout\ = \Rlout[2]~76_combout\ # \Rlout[2]~77_combout\ # \Rlout[2]~78_combout\ & \Rlout[0]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[2]~78_combout\,
	datab => \Rlout[0]~67_combout\,
	datac => \Rlout[2]~76_combout\,
	datad => \Rlout[2]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[2]~79_combout\);

\R1[3]~I\ : cyclone_io
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
	padio => ww_R1(3),
	combout => \R1~combout\(3));

\R2[3]~I\ : cyclone_io
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
	padio => ww_R2(3),
	combout => \R2~combout\(3));

\Rlout[3]~82\ : cyclone_lcell
-- Equation(s):
-- \Rlout[3]~82_combout\ = \Rlout[0]~62_combout\ & \R1~combout\(3) # !\Rlout[0]~62_combout\ & (\R2~combout\(3))

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
	dataa => \R1~combout\(3),
	datab => \R2~combout\(3),
	datac => \Rlout[0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[3]~82_combout\);

\Add0|stratix_adder|add_sub_cell[3]\ : cyclone_lcell
-- Equation(s):
-- \Add0|stratix_adder|add_sub_cell\(3) = \R2~combout\(3) $ \Equal1~0_combout\ $ \R1~combout\(3) $ (!\Equal1~0_combout\ & \Add0|stratix_adder|add_sub_cell[2]~COUT\) # (\Equal1~0_combout\ & \Add0|stratix_adder|add_sub_cell[2]~COUTCOUT1_14\)
-- \Add0|stratix_adder|add_sub_cell[3]~COUT\ = CARRY(\R2~combout\(3) $ \Equal1~0_combout\ & !\R1~combout\(3) & !\Add0|stratix_adder|add_sub_cell[2]~COUT\ # !\R2~combout\(3) $ \Equal1~0_combout\ & (!\Add0|stratix_adder|add_sub_cell[2]~COUT\ # 
-- !\R1~combout\(3)))
-- \Add0|stratix_adder|add_sub_cell[3]~COUTCOUT1_16\ = CARRY(\R2~combout\(3) $ \Equal1~0_combout\ & !\R1~combout\(3) & !\Add0|stratix_adder|add_sub_cell[2]~COUTCOUT1_14\ # !\R2~combout\(3) $ \Equal1~0_combout\ & 
-- (!\Add0|stratix_adder|add_sub_cell[2]~COUTCOUT1_14\ # !\R1~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(3),
	datab => \R1~combout\(3),
	cin0 => \Add0|stratix_adder|add_sub_cell[2]~COUT\,
	cin1 => \Add0|stratix_adder|add_sub_cell[2]~COUTCOUT1_14\,
	inverta => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0|stratix_adder|add_sub_cell\(3),
	cout0 => \Add0|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \Add0|stratix_adder|add_sub_cell[3]~COUTCOUT1_16\);

\sum[3]\ : cyclone_lcell
-- Equation(s):
-- sum(3) = GLOBAL(\sum[8]~11_combout\) & (\Add0|stratix_adder|add_sub_cell\(3)) # !GLOBAL(\sum[8]~11_combout\) & sum(3)

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
	datab => sum(3),
	datac => \Add0|stratix_adder|add_sub_cell\(3),
	datad => \sum[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => sum(3));

\Rlout[3]~80\ : cyclone_lcell
-- Equation(s):
-- \Rlout[3]~80_combout\ = \Rlout[0]~61_combout\ & (\Rlout[0]~62_combout\ & (sum(3)) # !\Rlout[0]~62_combout\ & !\R1~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[0]~62_combout\,
	datab => \Rlout[0]~61_combout\,
	datac => \R1~combout\(3),
	datad => sum(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[3]~80_combout\);

\Rlout[3]~81\ : cyclone_lcell
-- Equation(s):
-- \Rlout[3]~81_combout\ = \Rlout[0]~64_combout\ & !\M~combout\ & (\R1~combout\(3) # \R2~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1~combout\(3),
	datab => \Rlout[0]~64_combout\,
	datac => \R2~combout\(3),
	datad => \M~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[3]~81_combout\);

\Rlout[3]~83\ : cyclone_lcell
-- Equation(s):
-- \Rlout[3]~83_combout\ = \Rlout[3]~80_combout\ # \Rlout[3]~81_combout\ # \Rlout[3]~82_combout\ & \Rlout[0]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[3]~82_combout\,
	datab => \Rlout[3]~80_combout\,
	datac => \Rlout[3]~81_combout\,
	datad => \Rlout[0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[3]~83_combout\);

\R1[4]~I\ : cyclone_io
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
	padio => ww_R1(4),
	combout => \R1~combout\(4));

\R2[4]~I\ : cyclone_io
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
	padio => ww_R2(4),
	combout => \R2~combout\(4));

\Rlout[4]~86\ : cyclone_lcell
-- Equation(s):
-- \Rlout[4]~86_combout\ = \Rlout[0]~62_combout\ & \R1~combout\(4) # !\Rlout[0]~62_combout\ & (\R2~combout\(4))

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
	datab => \Rlout[0]~62_combout\,
	datac => \R1~combout\(4),
	datad => \R2~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[4]~86_combout\);

\Add0|stratix_adder|add_sub_cell[4]\ : cyclone_lcell
-- Equation(s):
-- \Add0|stratix_adder|add_sub_cell\(4) = \R2~combout\(4) $ \Equal1~0_combout\ $ \R1~combout\(4) $ !(!\Equal1~0_combout\ & \Add0|stratix_adder|add_sub_cell[3]~COUT\) # (\Equal1~0_combout\ & \Add0|stratix_adder|add_sub_cell[3]~COUTCOUT1_16\)
-- \Add0|stratix_adder|add_sub_cell[4]~COUT\ = CARRY(\R2~combout\(4) $ \Equal1~0_combout\ & (\R1~combout\(4) # !\Add0|stratix_adder|add_sub_cell[3]~COUTCOUT1_16\) # !\R2~combout\(4) $ \Equal1~0_combout\ & \R1~combout\(4) & 
-- !\Add0|stratix_adder|add_sub_cell[3]~COUTCOUT1_16\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(4),
	datab => \R1~combout\(4),
	cin0 => \Add0|stratix_adder|add_sub_cell[3]~COUT\,
	cin1 => \Add0|stratix_adder|add_sub_cell[3]~COUTCOUT1_16\,
	inverta => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0|stratix_adder|add_sub_cell\(4),
	cout => \Add0|stratix_adder|add_sub_cell[4]~COUT\);

\sum[4]\ : cyclone_lcell
-- Equation(s):
-- sum(4) = GLOBAL(\sum[8]~11_combout\) & \Add0|stratix_adder|add_sub_cell\(4) # !GLOBAL(\sum[8]~11_combout\) & (sum(4))

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
	dataa => \Add0|stratix_adder|add_sub_cell\(4),
	datac => \sum[8]~11_combout\,
	datad => sum(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => sum(4));

\Rlout[4]~84\ : cyclone_lcell
-- Equation(s):
-- \Rlout[4]~84_combout\ = \Rlout[0]~61_combout\ & (\Rlout[0]~62_combout\ & sum(4) # !\Rlout[0]~62_combout\ & (!\R1~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "880a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[0]~61_combout\,
	datab => sum(4),
	datac => \R1~combout\(4),
	datad => \Rlout[0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[4]~84_combout\);

\Rlout[4]~85\ : cyclone_lcell
-- Equation(s):
-- \Rlout[4]~85_combout\ = \Rlout[0]~64_combout\ & !\M~combout\ & (\R1~combout\(4) # \R2~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[0]~64_combout\,
	datab => \M~combout\,
	datac => \R1~combout\(4),
	datad => \R2~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[4]~85_combout\);

\Rlout[4]~87\ : cyclone_lcell
-- Equation(s):
-- \Rlout[4]~87_combout\ = \Rlout[4]~84_combout\ # \Rlout[4]~85_combout\ # \Rlout[4]~86_combout\ & \Rlout[0]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[4]~86_combout\,
	datab => \Rlout[4]~84_combout\,
	datac => \Rlout[4]~85_combout\,
	datad => \Rlout[0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[4]~87_combout\);

\R1[5]~I\ : cyclone_io
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
	padio => ww_R1(5),
	combout => \R1~combout\(5));

\R2[5]~I\ : cyclone_io
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
	padio => ww_R2(5),
	combout => \R2~combout\(5));

\Rlout[5]~89\ : cyclone_lcell
-- Equation(s):
-- \Rlout[5]~89_combout\ = \Rlout[0]~64_combout\ & !\M~combout\ & (\R1~combout\(5) # \R2~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1~combout\(5),
	datab => \Rlout[0]~64_combout\,
	datac => \M~combout\,
	datad => \R2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[5]~89_combout\);

\Rlout[5]~90\ : cyclone_lcell
-- Equation(s):
-- \Rlout[5]~90_combout\ = \Rlout[0]~62_combout\ & \R1~combout\(5) # !\Rlout[0]~62_combout\ & (\R2~combout\(5))

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
	dataa => \R1~combout\(5),
	datac => \Rlout[0]~62_combout\,
	datad => \R2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[5]~90_combout\);

\Add0|stratix_adder|add_sub_cell[5]\ : cyclone_lcell
-- Equation(s):
-- \Add0|stratix_adder|add_sub_cell\(5) = \R2~combout\(5) $ \Equal1~0_combout\ $ \R1~combout\(5) $ \Add0|stratix_adder|add_sub_cell[4]~COUT\
-- \Add0|stratix_adder|add_sub_cell[5]~COUT\ = CARRY(\R2~combout\(5) $ \Equal1~0_combout\ & !\R1~combout\(5) & !\Add0|stratix_adder|add_sub_cell[4]~COUT\ # !\R2~combout\(5) $ \Equal1~0_combout\ & (!\Add0|stratix_adder|add_sub_cell[4]~COUT\ # 
-- !\R1~combout\(5)))
-- \Add0|stratix_adder|add_sub_cell[5]~COUTCOUT1_18\ = CARRY(\R2~combout\(5) $ \Equal1~0_combout\ & !\R1~combout\(5) & !\Add0|stratix_adder|add_sub_cell[4]~COUT\ # !\R2~combout\(5) $ \Equal1~0_combout\ & (!\Add0|stratix_adder|add_sub_cell[4]~COUT\ # 
-- !\R1~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(5),
	datab => \R1~combout\(5),
	cin => \Add0|stratix_adder|add_sub_cell[4]~COUT\,
	inverta => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0|stratix_adder|add_sub_cell\(5),
	cout0 => \Add0|stratix_adder|add_sub_cell[5]~COUT\,
	cout1 => \Add0|stratix_adder|add_sub_cell[5]~COUTCOUT1_18\);

\sum[5]\ : cyclone_lcell
-- Equation(s):
-- sum(5) = GLOBAL(\sum[8]~11_combout\) & \Add0|stratix_adder|add_sub_cell\(5) # !GLOBAL(\sum[8]~11_combout\) & (sum(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0|stratix_adder|add_sub_cell\(5),
	datab => sum(5),
	datad => \sum[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => sum(5));

\Rlout[5]~88\ : cyclone_lcell
-- Equation(s):
-- \Rlout[5]~88_combout\ = \Rlout[0]~61_combout\ & (\Rlout[0]~62_combout\ & sum(5) # !\Rlout[0]~62_combout\ & (!\R1~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[0]~61_combout\,
	datab => \Rlout[0]~62_combout\,
	datac => sum(5),
	datad => \R1~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[5]~88_combout\);

\Rlout[5]~91\ : cyclone_lcell
-- Equation(s):
-- \Rlout[5]~91_combout\ = \Rlout[5]~89_combout\ # \Rlout[5]~88_combout\ # \Rlout[5]~90_combout\ & \Rlout[0]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[5]~89_combout\,
	datab => \Rlout[5]~90_combout\,
	datac => \Rlout[0]~67_combout\,
	datad => \Rlout[5]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[5]~91_combout\);

\R1[6]~I\ : cyclone_io
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
	padio => ww_R1(6),
	combout => \R1~combout\(6));

\R2[6]~I\ : cyclone_io
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
	padio => ww_R2(6),
	combout => \R2~combout\(6));

\Rlout[6]~93\ : cyclone_lcell
-- Equation(s):
-- \Rlout[6]~93_combout\ = \Rlout[0]~64_combout\ & !\M~combout\ & (\R1~combout\(6) # \R2~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1~combout\(6),
	datab => \Rlout[0]~64_combout\,
	datac => \M~combout\,
	datad => \R2~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[6]~93_combout\);

\Rlout[6]~94\ : cyclone_lcell
-- Equation(s):
-- \Rlout[6]~94_combout\ = \Rlout[0]~62_combout\ & \R1~combout\(6) # !\Rlout[0]~62_combout\ & (\R2~combout\(6))

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
	dataa => \R1~combout\(6),
	datac => \Rlout[0]~62_combout\,
	datad => \R2~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[6]~94_combout\);

\Add0|stratix_adder|add_sub_cell[6]\ : cyclone_lcell
-- Equation(s):
-- \Add0|stratix_adder|add_sub_cell\(6) = \R2~combout\(6) $ \Equal1~0_combout\ $ \R1~combout\(6) $ !(!\Add0|stratix_adder|add_sub_cell[4]~COUT\ & \Add0|stratix_adder|add_sub_cell[5]~COUT\) # (\Add0|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \Add0|stratix_adder|add_sub_cell[5]~COUTCOUT1_18\)
-- \Add0|stratix_adder|add_sub_cell[6]~COUT\ = CARRY(\R2~combout\(6) $ \Equal1~0_combout\ & (\R1~combout\(6) # !\Add0|stratix_adder|add_sub_cell[5]~COUT\) # !\R2~combout\(6) $ \Equal1~0_combout\ & \R1~combout\(6) & !\Add0|stratix_adder|add_sub_cell[5]~COUT\)
-- \Add0|stratix_adder|add_sub_cell[6]~COUTCOUT1_20\ = CARRY(\R2~combout\(6) $ \Equal1~0_combout\ & (\R1~combout\(6) # !\Add0|stratix_adder|add_sub_cell[5]~COUTCOUT1_18\) # !\R2~combout\(6) $ \Equal1~0_combout\ & \R1~combout\(6) & 
-- !\Add0|stratix_adder|add_sub_cell[5]~COUTCOUT1_18\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(6),
	datab => \R1~combout\(6),
	cin => \Add0|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \Add0|stratix_adder|add_sub_cell[5]~COUT\,
	cin1 => \Add0|stratix_adder|add_sub_cell[5]~COUTCOUT1_18\,
	inverta => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0|stratix_adder|add_sub_cell\(6),
	cout0 => \Add0|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \Add0|stratix_adder|add_sub_cell[6]~COUTCOUT1_20\);

\sum[6]\ : cyclone_lcell
-- Equation(s):
-- sum(6) = GLOBAL(\sum[8]~11_combout\) & (\Add0|stratix_adder|add_sub_cell\(6)) # !GLOBAL(\sum[8]~11_combout\) & sum(6)

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
	datab => sum(6),
	datac => \Add0|stratix_adder|add_sub_cell\(6),
	datad => \sum[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => sum(6));

\Rlout[6]~92\ : cyclone_lcell
-- Equation(s):
-- \Rlout[6]~92_combout\ = \Rlout[0]~61_combout\ & (\Rlout[0]~62_combout\ & sum(6) # !\Rlout[0]~62_combout\ & (!\R1~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "808a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[0]~61_combout\,
	datab => sum(6),
	datac => \Rlout[0]~62_combout\,
	datad => \R1~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[6]~92_combout\);

\Rlout[6]~95\ : cyclone_lcell
-- Equation(s):
-- \Rlout[6]~95_combout\ = \Rlout[6]~93_combout\ # \Rlout[6]~92_combout\ # \Rlout[6]~94_combout\ & \Rlout[0]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[6]~93_combout\,
	datab => \Rlout[6]~94_combout\,
	datac => \Rlout[0]~67_combout\,
	datad => \Rlout[6]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[6]~95_combout\);

\R2[7]~I\ : cyclone_io
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
	padio => ww_R2(7),
	combout => \R2~combout\(7));

\R1[7]~I\ : cyclone_io
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
	padio => ww_R1(7),
	combout => \R1~combout\(7));

\Add0|stratix_adder|add_sub_cell[7]\ : cyclone_lcell
-- Equation(s):
-- \Add0|stratix_adder|add_sub_cell\(7) = \R2~combout\(7) $ \Equal1~0_combout\ $ \R1~combout\(7) $ (!\Add0|stratix_adder|add_sub_cell[4]~COUT\ & \Add0|stratix_adder|add_sub_cell[6]~COUT\) # (\Add0|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \Add0|stratix_adder|add_sub_cell[6]~COUTCOUT1_20\)
-- \Add0|stratix_adder|add_sub_cell[7]~COUT\ = CARRY(\R2~combout\(7) $ \Equal1~0_combout\ & !\R1~combout\(7) & !\Add0|stratix_adder|add_sub_cell[6]~COUT\ # !\R2~combout\(7) $ \Equal1~0_combout\ & (!\Add0|stratix_adder|add_sub_cell[6]~COUT\ # 
-- !\R1~combout\(7)))
-- \Add0|stratix_adder|add_sub_cell[7]~COUTCOUT1_22\ = CARRY(\R2~combout\(7) $ \Equal1~0_combout\ & !\R1~combout\(7) & !\Add0|stratix_adder|add_sub_cell[6]~COUTCOUT1_20\ # !\R2~combout\(7) $ \Equal1~0_combout\ & 
-- (!\Add0|stratix_adder|add_sub_cell[6]~COUTCOUT1_20\ # !\R1~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(7),
	datab => \R1~combout\(7),
	cin => \Add0|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \Add0|stratix_adder|add_sub_cell[6]~COUT\,
	cin1 => \Add0|stratix_adder|add_sub_cell[6]~COUTCOUT1_20\,
	inverta => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0|stratix_adder|add_sub_cell\(7),
	cout0 => \Add0|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \Add0|stratix_adder|add_sub_cell[7]~COUTCOUT1_22\);

\sum[7]\ : cyclone_lcell
-- Equation(s):
-- sum(7) = GLOBAL(\sum[8]~11_combout\) & (\Add0|stratix_adder|add_sub_cell\(7)) # !GLOBAL(\sum[8]~11_combout\) & sum(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sum(7),
	datab => \Add0|stratix_adder|add_sub_cell\(7),
	datac => \sum[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => sum(7));

\Rlout[7]~96\ : cyclone_lcell
-- Equation(s):
-- \Rlout[7]~96_combout\ = \Rlout[0]~61_combout\ & (\Rlout[0]~62_combout\ & sum(7) # !\Rlout[0]~62_combout\ & (!\R1~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[0]~61_combout\,
	datab => \Rlout[0]~62_combout\,
	datac => sum(7),
	datad => \R1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[7]~96_combout\);

\Rlout[7]~97\ : cyclone_lcell
-- Equation(s):
-- \Rlout[7]~97_combout\ = !\M~combout\ & \Rlout[0]~64_combout\ & (\R2~combout\(7) # \R1~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2~combout\(7),
	datab => \M~combout\,
	datac => \Rlout[0]~64_combout\,
	datad => \R1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[7]~97_combout\);

\Rlout[7]~98\ : cyclone_lcell
-- Equation(s):
-- \Rlout[7]~98_combout\ = \Rlout[0]~62_combout\ & (\R1~combout\(7)) # !\Rlout[0]~62_combout\ & \R2~combout\(7)

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
	datab => \Rlout[0]~62_combout\,
	datac => \R2~combout\(7),
	datad => \R1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[7]~98_combout\);

\Rlout[7]~99\ : cyclone_lcell
-- Equation(s):
-- \Rlout[7]~99_combout\ = \Rlout[7]~96_combout\ # \Rlout[7]~97_combout\ # \Rlout[7]~98_combout\ & \Rlout[0]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Rlout[7]~96_combout\,
	datab => \Rlout[7]~97_combout\,
	datac => \Rlout[7]~98_combout\,
	datad => \Rlout[0]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Rlout[7]~99_combout\);

\Add0|stratix_adder|add_sub_cell[8]\ : cyclone_lcell
-- Equation(s):
-- \Add0|stratix_adder|add_sub_cell\(8) = VCC $ \Equal1~0_combout\ $ ((!\Add0|stratix_adder|add_sub_cell[4]~COUT\ & \Add0|stratix_adder|add_sub_cell[7]~COUT\) # (\Add0|stratix_adder|add_sub_cell[4]~COUT\ & \Add0|stratix_adder|add_sub_cell[7]~COUTCOUT1_22\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	cin => \Add0|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \Add0|stratix_adder|add_sub_cell[7]~COUT\,
	cin1 => \Add0|stratix_adder|add_sub_cell[7]~COUTCOUT1_22\,
	inverta => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0|stratix_adder|add_sub_cell\(8));

\sum[8]\ : cyclone_lcell
-- Equation(s):
-- sum(8) = GLOBAL(\sum[8]~11_combout\) & \Add0|stratix_adder|add_sub_cell\(8) # !GLOBAL(\sum[8]~11_combout\) & (sum(8))

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
	datab => \Add0|stratix_adder|add_sub_cell\(8),
	datac => sum(8),
	datad => \sum[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => sum(8));

\Equal0~0\ : cyclone_lcell
-- Equation(s):
-- \Equal0~0_combout\ = !sum(1) & !sum(2) & !sum(8) & !sum(3)

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
	dataa => sum(1),
	datab => sum(2),
	datac => sum(8),
	datad => sum(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclone_lcell
-- Equation(s):
-- \Equal0~1_combout\ = !sum(7) & !sum(5) & !sum(4) & !sum(6)

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
	dataa => sum(7),
	datab => sum(5),
	datac => sum(4),
	datad => sum(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclone_lcell
-- Equation(s):
-- \Equal0~2_combout\ = !sum(0) & (\Equal0~0_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sum(0),
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

\Rlout[0]~I\ : cyclone_io
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
	datain => \Rlout[0]~68_combout\,
	oe => \Rlout[7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Rlout(0));

\Rlout[1]~I\ : cyclone_io
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
	datain => \Rlout[1]~75_combout\,
	oe => \Rlout[7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Rlout(1));

\Rlout[2]~I\ : cyclone_io
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
	datain => \Rlout[2]~79_combout\,
	oe => \Rlout[7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Rlout(2));

\Rlout[3]~I\ : cyclone_io
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
	datain => \Rlout[3]~83_combout\,
	oe => \Rlout[7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Rlout(3));

\Rlout[4]~I\ : cyclone_io
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
	datain => \Rlout[4]~87_combout\,
	oe => \Rlout[7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Rlout(4));

\Rlout[5]~I\ : cyclone_io
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
	datain => \Rlout[5]~91_combout\,
	oe => \Rlout[7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Rlout(5));

\Rlout[6]~I\ : cyclone_io
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
	datain => \Rlout[6]~95_combout\,
	oe => \Rlout[7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Rlout(6));

\Rlout[7]~I\ : cyclone_io
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
	datain => \Rlout[7]~99_combout\,
	oe => \Rlout[7]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_Rlout(7));

\C~I\ : cyclone_io
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
	datain => sum(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C);

\Z~I\ : cyclone_io
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
	datain => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z);
END structure;


