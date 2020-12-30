library IEEE;
use ieee.std_logic_1164.all;

entity zjw_8_3_1 is
port(
	JUMP,MOVB,MOVC:in std_logic;
	in0,in1,in2:in std_logic_vector(7 downto 0);
	out1:out std_logic_vector(7 downto 0)
);
end zjw_8_3_1;

architecture struct of zjw_8_3_1 is
begin
	process(in0,in1,in2,JUMP,MOVB,MOVC)
	begin
		if JUMP='1' then
			out1<=in0;
		elsif MOVC='1' then
			out1<=in1;
		elsif MOVB='1' then
			out1<=in2;
		else
			out1<=in0;
		end if;
	end process;
end struct;