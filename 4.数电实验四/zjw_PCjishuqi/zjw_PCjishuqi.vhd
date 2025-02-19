library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity zjw_PCjishuqi is
	port(CIN: in std_logic_vector(7 downto 0);
		IN_PC, LD_PC: in std_logic;
		Reset,clk,NOP: in std_logic;
		PC: out std_logic_vector(7 downto 0));
end zjw_PCjishuqi;

architecture behavioral of zjw_PCjishuqi is
signal d: std_logic_vector(7 downto 0):="00000000";
begin
	process(LD_PC,Reset,clk,NOP)
	begin
	if Reset='1' then
		d <= "00000000";
	elsif clk='0' and clk'event then
		if NOP='1' or (LD_PC='0' and IN_PC='1') then
			d<=d+1;
		elsif LD_PC='1' and IN_PC='0'then
			d<=CIN;
		end if;
	end if;
	end process;
	PC <= d;
end behavioral;