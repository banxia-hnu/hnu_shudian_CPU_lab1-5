library ieee;
use ieee.std_logic_1164.all;
entity zjw_DC_DZ is
port(
	C,Z,JZ,JC,SM,clk:in std_logic;
	DC,DZ:out std_logic);
end zjw_DC_DZ;
architecture pnine of zjw_DC_DZ is
signal X,Y:std_logic;
begin
	process(JZ,JC,C,Z)
	begin
		if(clk'event and clk='1')then
			if(SM='1')then
				X<=C;
				Y<=Z;
			end if;
		end if;
	end process;
	DC<=X;
	DZ<=Y;
end pnine;