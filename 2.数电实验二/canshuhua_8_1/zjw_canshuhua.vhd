library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity zjw_canshuhua is
generic(n:integer:=4;
		m:integer:=2);
port(
		in1:in std_logic_vector(n-1 downto 0);
		enable:in std_logic_vector(m-1 downto 0);
		out1:out std_logic
);
end zjw_canshuhua;

architecture struct of zjw_canshuhua is
begin
	process(in1,enable)
	begin
	out1<=in1(conv_integer(enable));
	end process;
end struct;