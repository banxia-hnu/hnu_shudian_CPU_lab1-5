library ieee;
use ieee.std_logic_1164.all;
entity zjw_bingxingjiafaqi is
	port (A,B: in std_logic_vector(3 downto 0);
	Dout: out std_logic_vector(3 downto 0);
	Dout1:out std_logic);
end zjw_bingxingjiafaqi;

architecture bx of zjw_bingxingjiafaqi is
component quanjiaqi_vhdl
	port (X,Y,Z: in std_logic;
	S,C: out std_logic);
end component;
signal D: std_logic_vector(2 downto 0);
begin
	g0: quanjiaqi_vhdl port map(A(0),B(0),'0',Dout(0),D(0));
	g1: quanjiaqi_vhdl port map(A(1),B(1),D(0),Dout(1),D(1));
	g2: quanjiaqi_vhdl port map(A(2),B(2),D(1),Dout(2),D(2));
	g3: quanjiaqi_vhdl port map(A(3),B(3),D(2),Dout(3),Dout1);
end bx;