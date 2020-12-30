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

-- PROGRAM		"Quartus II"
-- VERSION		"Version 9.0 Build 184 04/29/2009 Service Pack 1 SJ Web Edition"
-- CREATED ON		"Sun Dec 01 12:40:38 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
-- use the following when compiling in Quartus II
--LIBRARY lpm;
--USE lpm.lpm_components.all; 

-- use the following when compiling in third party tools --
-- add lpm_pack.vhd from the Quartus II library
LIBRARY work;
USE work.lpm_components.all;

ENTITY lpm_ram_io_0 IS 
PORT 
( 
	inclock	:	IN	 STD_LOGIC;
	we	:	IN	 STD_LOGIC;
	outenab	:	IN	 STD_LOGIC;
	address	:	IN	 STD_LOGIC_VECTOR(7 DOWNTO 0);
	dio	:	INOUT	 STD_LOGIC_VECTOR(7 DOWNTO 0)
); 
END lpm_ram_io_0;

ARCHITECTURE bdf_type OF lpm_ram_io_0 IS 
BEGIN 

-- instantiate LPM macrofunction 

b2v_inst : lpm_ram_io
GENERIC MAP(LPM_ADDRESS_CONTROL => "REGISTERED",
			LPM_FILE => "./zjw_RAM.mif",
			LPM_INDATA => "REGISTERED",
			LPM_NUMWORDS => 256,
			LPM_OUTDATA => "UNREGISTERED",
			LPM_WIDTH => 8,
			LPM_WIDTHAD => 8)
PORT MAP(inclock => inclock,
		 we => we,
		 outenab => outenab,
		 address => address,
		 dio => dio);

END bdf_type; 