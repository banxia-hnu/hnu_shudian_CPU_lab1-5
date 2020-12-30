library ieee;
use ieee.std_logic_1164.all;
entity zjw_chuanxingjiafaqi is
	port (F,E: in std_logic_vector(3 downto 0);
	M4: out std_logic_vector(3 downto 0));
end zjw_chuanxingjiafaqi;
architecture bre of zjw_chuanxingjiafaqi is
component quanjiaqi_vhdl
	port (X,Y,Z: in std_logic;
	S,C: out std_logic);
end component;
component yiwei_vhdl
	port (A: in std_logic_vector(3 downto 0);
	      C: in std_logic;
	      B: out std_logic_vector(3 downto 0));
end component;
signal  D: std_logic_vector(3 downto 0);
signal  N: std_logic_vector(3 downto 0);
signal  M0: std_logic_vector(3 downto 0);
signal  M1: std_logic_vector(3 downto 0);
signal  M2: std_logic_vector(3 downto 0);
signal  M3: std_logic_vector(3 downto 0);
signal  N0: std_logic_vector(3 downto 0);
signal  N1: std_logic_vector(3 downto 0);
signal  N2: std_logic_vector(3 downto 0);
signal  N3: std_logic_vector(3 downto 0);
signal  Dout: std_logic_vector(3 downto 0);
begin
    M0 <= F;
    N0 <= E;
g0: quanjiaqi_vhdl port map(M0(0),N0(0),'0',Dout(0),D(0));
    M1 <= Dout(0) & M0(3 downto 1);
    N1 <= Dout(0) & N0(3 downto 1);
   
g1: quanjiaqi_vhdl port map(M1(0),N1(0),D(0),Dout(1),D(1));
    M2 <= Dout(1) & M1(3 downto 1);
    N2 <= Dout(1) & N1(3 downto 1);

g2: quanjiaqi_vhdl port map(M2(0),N2(0),D(1),Dout(2),D(2));
    M3 <= Dout(2) & M2(3 downto 1);
    N3 <= Dout(2) & N2(3 downto 1);
   
g3: quanjiaqi_vhdl port map(M3(0),N3(0),D(2),Dout(3),D(3));
    M4 <= Dout(3) & M3(3 downto 1);

end ;