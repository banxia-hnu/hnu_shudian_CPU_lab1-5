library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity zjw_yiweiluoji is
port(F,FRL,FRR: in std_logic;
	data_in: in std_logic_vector(7 downto 0);
	FZ,FC: out std_logic;
	data_out: out std_logic_vector(7 downto 0));
end zjw_yiweiluoji;

architecture behave of zjw_yiweiluoji is
signal d: std_logic_vector(7 downto 0);
begin
	data_out<=d;
	process(F,FRL,FRR,data_in)
	begin
	if F='1' then
		d <=data_in;
		FC <= '0';
		FZ <= '0';
	elsif FRL='1' then
		d <=data_in(6 downto 0)&data_in(7);
		FC <= data_in(7);
		if d="00000000" then
			FZ <= '1';
		else
			FZ <= '0';
		end if;
	elsif FRR='1' then
		d <=data_in(0) & data_in(7 downto 1);
		FC <= data_in(0);
		if d="00000000" then
			FZ <= '1';
		else
			FZ <= '0';
		end if;
	else
		d <="ZZZZZZZZ";
		FC <= '0';
		FZ <= '0';
	end if;
	end process;
end;