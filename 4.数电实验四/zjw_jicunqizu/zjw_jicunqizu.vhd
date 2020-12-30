library ieee;
use ieee.std_logic_1164.all;

entity zjw_jicunqizu is
	port(CIN: in std_logic_vector(7 downto 0);
	RAA, RWBA: in std_logic_vector(1 downto 0);
	WE,rst,clk: in std_logic;
	A_OUT, B_OUT: out std_logic_vector(7 downto 0));
end zjw_jicunqizu;

architecture behavorial of zjw_jicunqizu is
signal A,B,C: std_logic_vector(7 downto 0):="00000000";
begin
	A_OUT<=A when (WE='1' and RAA="00") else
			B when (WE='1' and RAA="01") else
			C when (WE='1' and (RAA="10" or RAA="11"));
	B_OUT<=A when (WE='1' and RWBA="00") else
			B when (WE='1' and RWBA="01") else
			C when (WE='1' and (RWBA="10" or RWBA="11"));
	process(rst,WE,RWBA,RAA,clk)
	begin
	if rst = '1' then
		A <= "00000000";
		B <= "00000000";
		C <= "00000000";
	elsif (WE='0' and (clk'event and clk = '0') )then
			if(RWBA="00") then
				A<=CIN;
			elsif(RWBA="01") then
				B<=CIN;
			elsif(RWBA="10") then
				C<=CIN;
			end if;
	else 
	end if;
	end process;
end;