library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity zjw_SM is
	port(EN: in std_logic;
		clk: in std_logic;
		SM: out std_logic);
end zjw_SM;

architecture behavioral of zjw_SM is
signal d: std_logic:='0';
begin
	process(clk)
	begin
	if (clk='0' and clk'event and EN='1') then
		d <= not d;
	else d <= d;
	end if;
	end process;
	SM <= d;
end behavioral;