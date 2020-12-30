library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity zjw_ALU is
port(R1, R2: in std_logic_vector(7 downto 0);
	S: in std_logic_vector(3 downto 0);
	M:in std_logic;
	C, Z: out std_logic;
	Rlout: out std_logic_vector(7 downto 0));
end zjw_ALU;

architecture bev of zjw_ALU is
signal instruct: std_logic_vector(3 downto 0);
signal sum: std_logic_vector(8 downto 0);
signal d: std_logic;
begin
instruct <= S;
C <= sum(8);
Z <= '1' when sum="00000000" else '0';
process(instruct,M)
begin
if M='1' then
	if instruct = "1001" then
		sum <= ('0' & R1) + ('0' & R2);
		Rlout <= sum(7 downto 0);
	elsif instruct = "0110" then
		sum <= ('0' & R1) - ('0' & R2);
		Rlout <= sum(7 downto 0);
	elsif instruct = "1010" or instruct = "0100" then
		Rlout <= R1;
	elsif instruct = "1111" then
		Rlout <= R2;
	else
		Rlout <= "ZZZZZZZZ";
	end if;
else
	if instruct = "1011" then
		Rlout <= R1 or R2;
	elsif instruct = "0101" then
		Rlout <= not R1;
	else
		Rlout <= "ZZZZZZZZ";
	end if;
end if;
end process;
end;