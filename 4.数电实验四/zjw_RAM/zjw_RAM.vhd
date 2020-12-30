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

LIBRARY work;

ENTITY zjw_RAM IS 
	PORT
	(
		inclock :  IN  STD_LOGIC;
		XL :  IN  STD_LOGIC;
		DL :  IN  STD_LOGIC;
		address :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		address2 :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		dio :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END zjw_RAM;

ARCHITECTURE bdf_type OF zjw_RAM IS 

ATTRIBUTE black_box : BOOLEAN;
nATTRIBUTE noopt : BOOLEAN;

COMPONENT lpm_ram_io_0
	PORT(inclock : IN STD_LOGIC;
		 we : IN STD_LOGIC;
		 outenab : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
);
END COMPONENT;
ATTRIBUTE black_box OF lpm_ram_io_0: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_ram_io_0: COMPONENT IS true;



BEGIN 



b2v_inst : lpm_ram_io_0
PORT MAP(inclock => inclock,
		 we => XL,
		 outenab => DL,
		 address => address,
		 dio => dio);


PROCESS(address2,XL)
BEGIN
if (XL = '1') THEN
	dio(7) <= address2(7);
ELSE
	dio(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(address2,XL)
BEGIN
if (XL = '1') THEN
	dio(6) <= address2(6);
ELSE
	dio(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(address2,XL)
BEGIN
if (XL = '1') THEN
	dio(5) <= address2(5);
ELSE
	dio(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(address2,XL)
BEGIN
if (XL = '1') THEN
	dio(4) <= address2(4);
ELSE
	dio(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(address2,XL)
BEGIN
if (XL = '1') THEN
	dio(3) <= address2(3);
ELSE
	dio(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(address2,XL)
BEGIN
if (XL = '1') THEN
	dio(2) <= address2(2);
ELSE
	dio(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(address2,XL)
BEGIN
if (XL = '1') THEN
	dio(1) <= address2(1);
ELSE
	dio(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(address2,XL)
BEGIN
if (XL = '1') THEN
	dio(0) <= address2(0);
ELSE
	dio(0) <= 'Z';
END IF;
END PROCESS;


END bdf_type;