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

-- DATE "11/04/2019 21:02:47"

-- 
-- Device: Altera EP1C4F324C8 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cyclone;
USE IEEE.std_logic_1164.all;
USE cyclone.cyclone_components.all;

ENTITY 	zjw_kongzhixinhao IS
    PORT (
	CF : OUT std_logic;
	IR : IN std_logic_vector(7 DOWNTO 0);
	MOVA : IN std_logic;
	MOVB : IN std_logic;
	MOVC : IN std_logic;
	ALU : IN std_logic;
	NOT0 : IN std_logic;
	SHR : IN std_logic;
	SHL : IN std_logic;
	JMP : IN std_logic;
	JZ : IN std_logic;
	Z : IN std_logic;
	JC : IN std_logic;
	C : IN std_logic;
	NOP : IN std_logic;
	HALT : IN std_logic;
	SM : IN std_logic;
	SME : OUT std_logic;
	LD_IR : OUT std_logic;
	DL : OUT std_logic;
	XL : OUT std_logic;
	F : OUT std_logic;
	FRL : OUT std_logic;
	FRR : OUT std_logic;
	ZF : OUT std_logic;
	M : OUT std_logic;
	LD_PC : OUT std_logic;
	IN_PC : OUT std_logic;
	N_WE : OUT std_logic;
	N_CS : OUT std_logic;
	CFE : OUT std_logic;
	ZFE : OUT std_logic;
	MADD : OUT std_logic_vector(1 DOWNTO 0);
	RAA : OUT std_logic_vector(1 DOWNTO 0);
	RWBA : OUT std_logic_vector(1 DOWNTO 0);
	S : OUT std_logic_vector(3 DOWNTO 0)
	);
END zjw_kongzhixinhao;

ARCHITECTURE structure OF zjw_kongzhixinhao IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CF : std_logic;
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MOVA : std_logic;
SIGNAL ww_MOVB : std_logic;
SIGNAL ww_MOVC : std_logic;
SIGNAL ww_ALU : std_logic;
SIGNAL ww_NOT0 : std_logic;
SIGNAL ww_SHR : std_logic;
SIGNAL ww_SHL : std_logic;
SIGNAL ww_JMP : std_logic;
SIGNAL ww_JZ : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_JC : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_NOP : std_logic;
SIGNAL ww_HALT : std_logic;
SIGNAL ww_SM : std_logic;
SIGNAL ww_SME : std_logic;
SIGNAL ww_LD_IR : std_logic;
SIGNAL ww_DL : std_logic;
SIGNAL ww_XL : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_FRL : std_logic;
SIGNAL ww_FRR : std_logic;
SIGNAL ww_ZF : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_LD_PC : std_logic;
SIGNAL ww_IN_PC : std_logic;
SIGNAL ww_N_WE : std_logic;
SIGNAL ww_N_CS : std_logic;
SIGNAL ww_CFE : std_logic;
SIGNAL ww_ZFE : std_logic;
SIGNAL ww_MADD : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RAA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RWBA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \NOP~combout\ : std_logic;
SIGNAL \JC~combout\ : std_logic;
SIGNAL \Z~combout\ : std_logic;
SIGNAL \JZ~combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \JMP~combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \ALU~combout\ : std_logic;
SIGNAL \MOVB~combout\ : std_logic;
SIGNAL \MOVC~combout\ : std_logic;
SIGNAL \MOVA~combout\ : std_logic;
SIGNAL \CFE~4_combout\ : std_logic;
SIGNAL \SHR~combout\ : std_logic;
SIGNAL \NOT0~combout\ : std_logic;
SIGNAL \SHL~combout\ : std_logic;
SIGNAL \M~6_combout\ : std_logic;
SIGNAL \SME~19_combout\ : std_logic;
SIGNAL \SME~20_combout\ : std_logic;
SIGNAL \SME~21_combout\ : std_logic;
SIGNAL \SM~combout\ : std_logic;
SIGNAL \HALT~combout\ : std_logic;
SIGNAL \SME~22_combout\ : std_logic;
SIGNAL \SME$latch~combout\ : std_logic;
SIGNAL \SME~16_combout\ : std_logic;
SIGNAL \LD_IR$latch~combout\ : std_logic;
SIGNAL \DL~7_combout\ : std_logic;
SIGNAL \DL~8_combout\ : std_logic;
SIGNAL \DL$latch~combout\ : std_logic;
SIGNAL \XL~1_combout\ : std_logic;
SIGNAL \XL$latch~combout\ : std_logic;
SIGNAL \F~4_combout\ : std_logic;
SIGNAL \F$latch~combout\ : std_logic;
SIGNAL \FRL~6_combout\ : std_logic;
SIGNAL \FRL$latch~combout\ : std_logic;
SIGNAL \FRR~5_combout\ : std_logic;
SIGNAL \FRR$latch~combout\ : std_logic;
SIGNAL \M~7_combout\ : std_logic;
SIGNAL \M~8_combout\ : std_logic;
SIGNAL \M$latch~combout\ : std_logic;
SIGNAL \LD_PC~7_combout\ : std_logic;
SIGNAL \LD_PC$latch~combout\ : std_logic;
SIGNAL \IN_PC~8_combout\ : std_logic;
SIGNAL \IN_PC$latch~combout\ : std_logic;
SIGNAL \N_WE~6_combout\ : std_logic;
SIGNAL \N_WE$latch~combout\ : std_logic;
SIGNAL \N_CS~8_combout\ : std_logic;
SIGNAL \N_CS$latch~combout\ : std_logic;
SIGNAL \CFE~5_combout\ : std_logic;
SIGNAL \CFE~6_combout\ : std_logic;
SIGNAL \CFE$latch~combout\ : std_logic;
SIGNAL \ZFE~5_combout\ : std_logic;
SIGNAL \ZFE~6_combout\ : std_logic;
SIGNAL \ZFE$latch~combout\ : std_logic;
SIGNAL \MADD[0]~2_combout\ : std_logic;
SIGNAL \MADD[0]$latch~combout\ : std_logic;
SIGNAL \RAA[0]~6_combout\ : std_logic;
SIGNAL \RAA[0]$latch~combout\ : std_logic;
SIGNAL \RAA[1]~7_combout\ : std_logic;
SIGNAL \RAA[1]$latch~combout\ : std_logic;
SIGNAL \RWBA[0]~4_combout\ : std_logic;
SIGNAL \RWBA[0]$latch~combout\ : std_logic;
SIGNAL \RWBA[1]~5_combout\ : std_logic;
SIGNAL \RWBA[1]$latch~combout\ : std_logic;
SIGNAL \IR~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

CF <= ww_CF;
ww_IR <= IR;
ww_MOVA <= MOVA;
ww_MOVB <= MOVB;
ww_MOVC <= MOVC;
ww_ALU <= ALU;
ww_NOT0 <= NOT0;
ww_SHR <= SHR;
ww_SHL <= SHL;
ww_JMP <= JMP;
ww_JZ <= JZ;
ww_Z <= Z;
ww_JC <= JC;
ww_C <= C;
ww_NOP <= NOP;
ww_HALT <= HALT;
ww_SM <= SM;
SME <= ww_SME;
LD_IR <= ww_LD_IR;
DL <= ww_DL;
XL <= ww_XL;
F <= ww_F;
FRL <= ww_FRL;
FRR <= ww_FRR;
ZF <= ww_ZF;
M <= ww_M;
LD_PC <= ww_LD_PC;
IN_PC <= ww_IN_PC;
N_WE <= ww_N_WE;
N_CS <= ww_N_CS;
CFE <= ww_CFE;
ZFE <= ww_ZFE;
MADD <= ww_MADD;
RAA <= ww_RAA;
RWBA <= ww_RWBA;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

\JC~I\ : cyclone_io
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
	padio => ww_JC,
	combout => \JC~combout\);

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
	padio => ww_Z,
	combout => \Z~combout\);

\JZ~I\ : cyclone_io
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
	padio => ww_JZ,
	combout => \JZ~combout\);

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
	padio => ww_C,
	combout => \C~combout\);

\process_0~8\ : cyclone_lcell
-- Equation(s):
-- \process_0~8_combout\ = \JC~combout\ & (!\Z~combout\ & \JZ~combout\ # !\C~combout\) # !\JC~combout\ & !\Z~combout\ & \JZ~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JC~combout\,
	datab => \Z~combout\,
	datac => \JZ~combout\,
	datad => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~8_combout\);

\JMP~I\ : cyclone_io
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
	padio => ww_JMP,
	combout => \JMP~combout\);

\process_0~9\ : cyclone_lcell
-- Equation(s):
-- \process_0~9_combout\ = !\Z~combout\ # !\JZ~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \JZ~combout\,
	datad => \Z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~9_combout\);

\process_0~10\ : cyclone_lcell
-- Equation(s):
-- \process_0~10_combout\ = !\JMP~combout\ & \process_0~9_combout\ & (!\C~combout\ # !\JC~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \JC~combout\,
	datab => \JMP~combout\,
	datac => \process_0~9_combout\,
	datad => \C~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~10_combout\);

\ALU~I\ : cyclone_io
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
	padio => ww_ALU,
	combout => \ALU~combout\);

\MOVB~I\ : cyclone_io
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
	padio => ww_MOVB,
	combout => \MOVB~combout\);

\MOVC~I\ : cyclone_io
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
	padio => ww_MOVC,
	combout => \MOVC~combout\);

\MOVA~I\ : cyclone_io
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
	padio => ww_MOVA,
	combout => \MOVA~combout\);

\CFE~4\ : cyclone_lcell
-- Equation(s):
-- \CFE~4_combout\ = !\MOVB~combout\ & !\MOVC~combout\ & !\MOVA~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOVB~combout\,
	datac => \MOVC~combout\,
	datad => \MOVA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CFE~4_combout\);

\SHR~I\ : cyclone_io
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
	padio => ww_SHR,
	combout => \SHR~combout\);

\NOT0~I\ : cyclone_io
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
	padio => ww_NOT0,
	combout => \NOT0~combout\);

\SHL~I\ : cyclone_io
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
	padio => ww_SHL,
	combout => \SHL~combout\);

\M~6\ : cyclone_lcell
-- Equation(s):
-- \M~6_combout\ = !\SHR~combout\ & !\NOT0~combout\ & !\SHL~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \SHR~combout\,
	datac => \NOT0~combout\,
	datad => \SHL~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M~6_combout\);

\SME~19\ : cyclone_lcell
-- Equation(s):
-- \SME~19_combout\ = !\ALU~combout\ & \CFE~4_combout\ & \M~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU~combout\,
	datac => \CFE~4_combout\,
	datad => \M~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SME~19_combout\);

\SME~20\ : cyclone_lcell
-- Equation(s):
-- \SME~20_combout\ = \NOP~combout\ # \process_0~8_combout\ # !\SME~19_combout\ # !\process_0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NOP~combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~10_combout\,
	datad => \SME~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SME~20_combout\);

\SME~21\ : cyclone_lcell
-- Equation(s):
-- \SME~21_combout\ = !\NOP~combout\ & \process_0~10_combout\ & \SME~19_combout\ & !\process_0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NOP~combout\,
	datab => \process_0~10_combout\,
	datac => \SME~19_combout\,
	datad => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SME~21_combout\);

\SM~I\ : cyclone_io
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
	padio => ww_SM,
	combout => \SM~combout\);

\HALT~I\ : cyclone_io
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
	padio => ww_HALT,
	combout => \HALT~combout\);

\SME~22\ : cyclone_lcell
-- Equation(s):
-- \SME~22_combout\ = \SM~combout\ & (\HALT~combout\ # !\SME~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \SME~21_combout\,
	datac => \SM~combout\,
	datad => \HALT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SME~22_combout\);

\SME$latch\ : cyclone_lcell
-- Equation(s):
-- \SME$latch~combout\ = GLOBAL(\SME~22_combout\) & \SME~20_combout\ # !GLOBAL(\SME~22_combout\) & (\SME$latch~combout\)

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
	dataa => \SME~20_combout\,
	datac => \SME$latch~combout\,
	datad => \SME~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SME$latch~combout\);

\SME~16\ : cyclone_lcell
-- Equation(s):
-- \SME~16_combout\ = \HALT~combout\ # !\SME~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \SME~21_combout\,
	datad => \HALT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SME~16_combout\);

\LD_IR$latch\ : cyclone_lcell
-- Equation(s):
-- \LD_IR$latch~combout\ = !\SME~16_combout\ & \LD_IR$latch~combout\ # !\SM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \SME~16_combout\,
	datac => \SM~combout\,
	datad => \LD_IR$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LD_IR$latch~combout\);

\DL~7\ : cyclone_lcell
-- Equation(s):
-- \DL~7_combout\ = \MOVC~combout\ & (!\MOVB~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOVC~combout\,
	datad => \MOVB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DL~7_combout\);

\DL~8\ : cyclone_lcell
-- Equation(s):
-- \DL~8_combout\ = \SME~19_combout\ & (!\process_0~10_combout\) # !\SME~19_combout\ & (\DL~7_combout\ # \MOVA~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DL~7_combout\,
	datab => \process_0~10_combout\,
	datac => \MOVA~combout\,
	datad => \SME~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DL~8_combout\);

\DL$latch\ : cyclone_lcell
-- Equation(s):
-- \DL$latch~combout\ = GLOBAL(\SME~16_combout\) & \DL~8_combout\ # !GLOBAL(\SME~16_combout\) & (\DL$latch~combout\) # !\SM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbf3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DL~8_combout\,
	datab => \SM~combout\,
	datac => \DL$latch~combout\,
	datad => \SME~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \DL$latch~combout\);

\XL~1\ : cyclone_lcell
-- Equation(s):
-- \XL~1_combout\ = !\MOVA~combout\ & \MOVB~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \MOVA~combout\,
	datad => \MOVB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \XL~1_combout\);

\XL$latch\ : cyclone_lcell
-- Equation(s):
-- \XL$latch~combout\ = \SM~combout\ & (GLOBAL(\SME~16_combout\) & (\XL~1_combout\) # !GLOBAL(\SME~16_combout\) & \XL$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SM~combout\,
	datab => \XL$latch~combout\,
	datac => \XL~1_combout\,
	datad => \SME~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \XL$latch~combout\);

\F~4\ : cyclone_lcell
-- Equation(s):
-- \F~4_combout\ = \ALU~combout\ # \NOT0~combout\ # !\CFE~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \CFE~4_combout\,
	datac => \ALU~combout\,
	datad => \NOT0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F~4_combout\);

\F$latch\ : cyclone_lcell
-- Equation(s):
-- \F$latch~combout\ = GLOBAL(\SME~22_combout\) & \F~4_combout\ # !GLOBAL(\SME~22_combout\) & (\F$latch~combout\)

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
	datab => \F~4_combout\,
	datac => \SME~22_combout\,
	datad => \F$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \F$latch~combout\);

\FRL~6\ : cyclone_lcell
-- Equation(s):
-- \FRL~6_combout\ = !\SHR~combout\ & !\F~4_combout\ & (\SHL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHR~combout\,
	datab => \F~4_combout\,
	datad => \SHL~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FRL~6_combout\);

\FRL$latch\ : cyclone_lcell
-- Equation(s):
-- \FRL$latch~combout\ = GLOBAL(\SME~22_combout\) & \FRL~6_combout\ # !GLOBAL(\SME~22_combout\) & (\FRL$latch~combout\)

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
	dataa => \FRL~6_combout\,
	datac => \SME~22_combout\,
	datad => \FRL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FRL$latch~combout\);

\FRR~5\ : cyclone_lcell
-- Equation(s):
-- \FRR~5_combout\ = \SHR~combout\ & \CFE~4_combout\ & !\ALU~combout\ & !\NOT0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHR~combout\,
	datab => \CFE~4_combout\,
	datac => \ALU~combout\,
	datad => \NOT0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FRR~5_combout\);

\FRR$latch\ : cyclone_lcell
-- Equation(s):
-- \FRR$latch~combout\ = GLOBAL(\SME~22_combout\) & \FRR~5_combout\ # !GLOBAL(\SME~22_combout\) & (\FRR$latch~combout\)

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
	datab => \FRR~5_combout\,
	datac => \FRR$latch~combout\,
	datad => \SME~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FRR$latch~combout\);

\IR[5]~I\ : cyclone_io
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
	padio => ww_IR(5),
	combout => \IR~combout\(5));

\IR[6]~I\ : cyclone_io
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
	padio => ww_IR(6),
	combout => \IR~combout\(6));

\IR[7]~I\ : cyclone_io
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
	padio => ww_IR(7),
	combout => \IR~combout\(7));

\IR[4]~I\ : cyclone_io
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
	padio => ww_IR(4),
	combout => \IR~combout\(4));

\M~7\ : cyclone_lcell
-- Equation(s):
-- \M~7_combout\ = \IR~combout\(6) # !\IR~combout\(4) # !\IR~combout\(7) # !\IR~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \IR~combout\(6),
	datac => \IR~combout\(7),
	datad => \IR~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M~7_combout\);

\M~8\ : cyclone_lcell
-- Equation(s):
-- \M~8_combout\ = \ALU~combout\ & (\M~7_combout\) # !\ALU~combout\ & !\M~6_combout\ # !\CFE~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df57",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CFE~4_combout\,
	datab => \ALU~combout\,
	datac => \M~6_combout\,
	datad => \M~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M~8_combout\);

\M$latch\ : cyclone_lcell
-- Equation(s):
-- \M$latch~combout\ = GLOBAL(\SME~22_combout\) & \M~8_combout\ # !GLOBAL(\SME~22_combout\) & (\M$latch~combout\)

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
	dataa => \M~8_combout\,
	datac => \SME~22_combout\,
	datad => \M$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M$latch~combout\);

\LD_PC~7\ : cyclone_lcell
-- Equation(s):
-- \LD_PC~7_combout\ = \SME~19_combout\ & (\NOP~combout\ # \process_0~8_combout\ # !\process_0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NOP~combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~10_combout\,
	datad => \SME~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LD_PC~7_combout\);

\LD_PC$latch\ : cyclone_lcell
-- Equation(s):
-- \LD_PC$latch~combout\ = \SM~combout\ & (GLOBAL(\SME~16_combout\) & \LD_PC~7_combout\ # !GLOBAL(\SME~16_combout\) & (\LD_PC$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SM~combout\,
	datab => \LD_PC~7_combout\,
	datac => \LD_PC$latch~combout\,
	datad => \SME~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LD_PC$latch~combout\);

\IN_PC~8\ : cyclone_lcell
-- Equation(s):
-- \IN_PC~8_combout\ = \process_0~10_combout\ & \SME~19_combout\ & (\NOP~combout\ # \process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NOP~combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~10_combout\,
	datad => \SME~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IN_PC~8_combout\);

\IN_PC$latch\ : cyclone_lcell
-- Equation(s):
-- \IN_PC$latch~combout\ = GLOBAL(\SME~16_combout\) & \IN_PC~8_combout\ # !GLOBAL(\SME~16_combout\) & (\IN_PC$latch~combout\) # !\SM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbf3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IN_PC~8_combout\,
	datab => \SM~combout\,
	datac => \IN_PC$latch~combout\,
	datad => \SME~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IN_PC$latch~combout\);

\N_WE~6\ : cyclone_lcell
-- Equation(s):
-- \N_WE~6_combout\ = \XL~1_combout\ # !\SHR~combout\ & !\F~4_combout\ & !\SHL~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SHR~combout\,
	datab => \F~4_combout\,
	datac => \XL~1_combout\,
	datad => \SHL~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \N_WE~6_combout\);

\N_WE$latch\ : cyclone_lcell
-- Equation(s):
-- \N_WE$latch~combout\ = GLOBAL(\SME~16_combout\) & \N_WE~6_combout\ # !GLOBAL(\SME~16_combout\) & (\N_WE$latch~combout\) # !\SM~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddf5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SM~combout\,
	datab => \N_WE~6_combout\,
	datac => \N_WE$latch~combout\,
	datad => \SME~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \N_WE$latch~combout\);

\N_CS~8\ : cyclone_lcell
-- Equation(s):
-- \N_CS~8_combout\ = \SME~21_combout\ # \CFE~4_combout\ & (\ALU~combout\ # !\M~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M~6_combout\,
	datab => \ALU~combout\,
	datac => \SME~21_combout\,
	datad => \CFE~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \N_CS~8_combout\);

\N_CS$latch\ : cyclone_lcell
-- Equation(s):
-- \N_CS$latch~combout\ = \SM~combout\ & (GLOBAL(\SME~16_combout\) & (\N_CS~8_combout\) # !GLOBAL(\SME~16_combout\) & \N_CS$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SM~combout\,
	datab => \N_CS$latch~combout\,
	datac => \N_CS~8_combout\,
	datad => \SME~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \N_CS$latch~combout\);

\CFE~5\ : cyclone_lcell
-- Equation(s):
-- \CFE~5_combout\ = !\IR~combout\(6) & \IR~combout\(7) & \IR~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(6),
	datac => \IR~combout\(7),
	datad => \IR~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CFE~5_combout\);

\CFE~6\ : cyclone_lcell
-- Equation(s):
-- \CFE~6_combout\ = \ALU~combout\ & !\IR~combout\(5) & \CFE~4_combout\ & \CFE~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU~combout\,
	datab => \IR~combout\(5),
	datac => \CFE~4_combout\,
	datad => \CFE~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CFE~6_combout\);

\CFE$latch\ : cyclone_lcell
-- Equation(s):
-- \CFE$latch~combout\ = GLOBAL(\SME~22_combout\) & \CFE~6_combout\ # !GLOBAL(\SME~22_combout\) & (\CFE$latch~combout\)

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
	dataa => \CFE~6_combout\,
	datac => \SME~22_combout\,
	datad => \CFE$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CFE$latch~combout\);

\ZFE~5\ : cyclone_lcell
-- Equation(s):
-- \ZFE~5_combout\ = \IR~combout\(5) & \IR~combout\(6) & !\IR~combout\(7) & !\IR~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(5),
	datab => \IR~combout\(6),
	datac => \IR~combout\(7),
	datad => \IR~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZFE~5_combout\);

\ZFE~6\ : cyclone_lcell
-- Equation(s):
-- \ZFE~6_combout\ = \ZFE~5_combout\ & (\CFE~4_combout\ & \ALU~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ZFE~5_combout\,
	datac => \CFE~4_combout\,
	datad => \ALU~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZFE~6_combout\);

\ZFE$latch\ : cyclone_lcell
-- Equation(s):
-- \ZFE$latch~combout\ = GLOBAL(\SME~22_combout\) & \ZFE~6_combout\ # !GLOBAL(\SME~22_combout\) & (\ZFE$latch~combout\)

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
	datab => \ZFE~6_combout\,
	datac => \SME~22_combout\,
	datad => \ZFE$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ZFE$latch~combout\);

\MADD[0]~2\ : cyclone_lcell
-- Equation(s):
-- \MADD[0]~2_combout\ = !\MOVA~combout\ & (\MOVC~combout\ & !\MOVB~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOVA~combout\,
	datac => \MOVC~combout\,
	datad => \MOVB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MADD[0]~2_combout\);

\MADD[0]$latch\ : cyclone_lcell
-- Equation(s):
-- \MADD[0]$latch~combout\ = \SM~combout\ & (GLOBAL(\SME~16_combout\) & (\MADD[0]~2_combout\) # !GLOBAL(\SME~16_combout\) & \MADD[0]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SM~combout\,
	datab => \MADD[0]$latch~combout\,
	datac => \MADD[0]~2_combout\,
	datad => \SME~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MADD[0]$latch~combout\);

\IR[0]~I\ : cyclone_io
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
	padio => ww_IR(0),
	combout => \IR~combout\(0));

\RAA[0]~6\ : cyclone_lcell
-- Equation(s):
-- \RAA[0]~6_combout\ = \IR~combout\(0) # !\MOVA~combout\ & !\MOVB~combout\ & \MOVC~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOVA~combout\,
	datab => \MOVB~combout\,
	datac => \MOVC~combout\,
	datad => \IR~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RAA[0]~6_combout\);

\RAA[0]$latch\ : cyclone_lcell
-- Equation(s):
-- \RAA[0]$latch~combout\ = GLOBAL(\SME~22_combout\) & \RAA[0]~6_combout\ # !GLOBAL(\SME~22_combout\) & (\RAA[0]$latch~combout\)

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
	dataa => \RAA[0]~6_combout\,
	datab => \RAA[0]$latch~combout\,
	datad => \SME~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RAA[0]$latch~combout\);

\IR[1]~I\ : cyclone_io
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
	padio => ww_IR(1),
	combout => \IR~combout\(1));

\RAA[1]~7\ : cyclone_lcell
-- Equation(s):
-- \RAA[1]~7_combout\ = \IR~combout\(1) # \MOVC~combout\ & !\MOVA~combout\ & !\MOVB~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(1),
	datab => \MOVC~combout\,
	datac => \MOVA~combout\,
	datad => \MOVB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RAA[1]~7_combout\);

\RAA[1]$latch\ : cyclone_lcell
-- Equation(s):
-- \RAA[1]$latch~combout\ = GLOBAL(\SME~22_combout\) & \RAA[1]~7_combout\ # !GLOBAL(\SME~22_combout\) & (\RAA[1]$latch~combout\)

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
	datab => \RAA[1]~7_combout\,
	datac => \RAA[1]$latch~combout\,
	datad => \SME~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RAA[1]$latch~combout\);

\IR[2]~I\ : cyclone_io
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
	padio => ww_IR(2),
	combout => \IR~combout\(2));

\RWBA[0]~4\ : cyclone_lcell
-- Equation(s):
-- \RWBA[0]~4_combout\ = \IR~combout\(2) # !\MOVA~combout\ & \MOVB~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOVA~combout\,
	datac => \IR~combout\(2),
	datad => \MOVB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RWBA[0]~4_combout\);

\RWBA[0]$latch\ : cyclone_lcell
-- Equation(s):
-- \RWBA[0]$latch~combout\ = GLOBAL(\SME~22_combout\) & \RWBA[0]~4_combout\ # !GLOBAL(\SME~22_combout\) & (\RWBA[0]$latch~combout\)

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
	dataa => \RWBA[0]~4_combout\,
	datac => \RWBA[0]$latch~combout\,
	datad => \SME~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RWBA[0]$latch~combout\);

\IR[3]~I\ : cyclone_io
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
	padio => ww_IR(3),
	combout => \IR~combout\(3));

\RWBA[1]~5\ : cyclone_lcell
-- Equation(s):
-- \RWBA[1]~5_combout\ = \IR~combout\(3) # !\MOVA~combout\ & \MOVB~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOVA~combout\,
	datac => \IR~combout\(3),
	datad => \MOVB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RWBA[1]~5_combout\);

\RWBA[1]$latch\ : cyclone_lcell
-- Equation(s):
-- \RWBA[1]$latch~combout\ = GLOBAL(\SME~22_combout\) & (\RWBA[1]~5_combout\) # !GLOBAL(\SME~22_combout\) & \RWBA[1]$latch~combout\

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
	datab => \RWBA[1]$latch~combout\,
	datac => \RWBA[1]~5_combout\,
	datad => \SME~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RWBA[1]$latch~combout\);

\SME~I\ : cyclone_io
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
	datain => \SME$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SME);

\LD_IR~I\ : cyclone_io
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
	datain => \LD_IR$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LD_IR);

\DL~I\ : cyclone_io
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
	datain => \DL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DL);

\XL~I\ : cyclone_io
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
	datain => \XL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_XL);

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \F$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F);

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \FRL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRL);

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \FRR$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FRR);

\CF~I\ : cyclone_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CF);

\ZF~I\ : cyclone_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ZF);

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \M$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_M);

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LD_PC$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LD_PC);

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IN_PC$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IN_PC);

\N_WE~I\ : cyclone_io
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
	datain => \N_WE$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_N_WE);

\N_CS~I\ : cyclone_io
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
	datain => \N_CS$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_N_CS);

\CFE~I\ : cyclone_io
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
	datain => \CFE$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CFE);

\ZFE~I\ : cyclone_io
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
	datain => \ZFE$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ZFE);

\MADD[0]~I\ : cyclone_io
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
	datain => \MADD[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MADD(0));

\MADD[1]~I\ : cyclone_io
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
	datain => \XL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MADD(1));

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RAA[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAA(0));

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RAA[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RAA(1));

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RWBA[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RWBA(0));

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RWBA[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RWBA(1));

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(0));

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(1));

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(2));

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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IR~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S(3));
END structure;


