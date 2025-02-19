library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity zjw_8_1 is
port(
	in1:in std_logic_vector(5 downto 0);
	enable:in std_logic_vector(0 downto 0);
	out1:out std_logic);
end zjw_8_1;

architecture struct of zjw_8_1 is
component zjw_canshuhua
	generic(n:integer:=4;
			m:integer:=2);
	port(
			in1:in std_logic_vector(n-1 downto 0);
			enable:in std_logic_vector(m-1 downto 0);
			out1:out std_logic
	);
end component;

begin
	g0:zjw_canshuhua generic map(6,1) port map(in1,enable,out1);
end struct;