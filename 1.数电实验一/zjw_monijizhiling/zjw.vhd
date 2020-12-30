library ieee;
use ieee.std_logic_1164.all;
entity zjw is
	port(EN:in std_logic;
	IR: in std_logic_vector(7 downto 0);
	order: out std_logic_vector(3 downto 0);
	RA,RB: out std_logic_vector(1 downto 0);
	MOVA,MOVB,MOVC,ADD,SUB,AND0,NOT0,SHR,SHL,JMP,JZ,JC,IN0,OUT0,NOP,HEAL: out std_logic);
end zjw;

architecture dec of zjw is
signal instruct: std_logic_vector(3 downto 0);
signal R1, R2: std_logic_vector(1 downto 0);
begin
	order <= instruct;
	RA <= R2;
	RB <= R1;
	instruct <= IR(7 downto 4);
	R1 <= IR(3 downto 2);
	R2 <= IR(1 downto 0);
	MOVA <= '1' when instruct & EN = "00111" and (R1 /= "11" and R2 /= "11") else '0';
	MOVB <= '1' when instruct & R1 & EN = "1111111" else '0';
	MOVC <= '1' when instruct & R2 & EN = "1111111" else '0';
	ADD <= '1' when instruct & EN = "10011" else '0';
	SUB <= '1' when instruct & EN = "01101" else '0';
	AND0 <= '1' when instruct & EN = "11101" else '0';
	NOT0 <= '1' when instruct & EN = "01011" else '0';
	SHR <= '1' when instruct & EN & R2= "1010100" else '0';
	SHL <= '1' when instruct & EN & R2= "1010111" else '0';
	JMP <= '1' when IR & EN = "000100001" else '0';
	JZ <= '1' when IR & EN = "000100011" else '0';
	JC <= '1' when IR & EN = "000100101" else '0';
	IN0 <= '1' when instruct & EN = "00101" else '0';
	OUT0 <= '1' when instruct & EN = "01001" else '0';
	NOP <= '1' when instruct & EN = "01111" else '0';
	HEAL <= '1' when instruct & EN = "10001" else '0';
end dec;