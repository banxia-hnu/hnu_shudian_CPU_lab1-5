library lcdf_vhdl,ieee;
use ieee.std_logic_1164.all,lcdf_vhdl.func_prims.all;

entity zjw2018 is
port (A:in std_logic_vector(0 to 2);
      D:out std_logic_vector(0 to 7));
end zjw2018;

architecture structural of zjw2018 is

signal A0_n,A1_n,A2_n,and00_out,and01_out,and02_out,and03_out,and10_out,and11_out,
and12_out,and13_out,and14_out,and15_out,and16_out,and17_out:std_logic;

begin
inv_0:not1 port map(in1 => A(0),out1 => A0_n);
inv_1:not1 port map(A(1),A1_n);
inv_2:not1 port map(A(2),A2_n);

and_00:and_2 port map(A0_n,A1_n,and00_out);
and_01:and_2 port map(A(0),A1_n,and01_out);
and_02:and_2 port map(A0_n,A(1),and02_out);
and_03:and_2 port map(A(0),A(1),and03_out);

and_10:and_2 port map(and10_out,A2_n,D(0));
and_11:and_2 port map(and11_out,A2_n,D(1));
and_12:and_2 port map(and12_out,A2_n,D(2));
and_13:and_2 port map(and13_out,A2_n,D(3));
and_14:and_2 port map(and10_out,A(2),D(4));
and_15:and_2 port map(and11_out,A(2),D(5));
and_16:and_2 port map(and12_out,A(2),D(6));
and_17:and_2 port map(and13_out,A(2),D(7));

end structural;