library ieee;
use ieee.std_logic_1164.all;
entity quanjiaqi_vhdl is
	port (X,Y,Z: in std_logic;
	S,C: out std_logic);
end quanjiaqi_vhdl;

architecture quanjia of quanjiaqi_vhdl is
begin
S <= (X xor Y) xor Z;
C <= (X and Y) or (Z and (X xor Y));
end quanjia;