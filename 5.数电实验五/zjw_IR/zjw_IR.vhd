library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity zjw_IR is
port(data_in: in std_logic_vector(7 downto 0);
	LD_IR: in std_logic;
	data_out: out std_logic_vector(7 downto 0));
end zjw_IR;

architecture behave of zjw_IR is
	signal d: std_logic_vector(7 downto 0):="00000000";
begin
	d <= data_in when LD_IR = '1' else d;
	data_out <= d when LD_IR = '0' else "ZZZZZZZZ";
end;