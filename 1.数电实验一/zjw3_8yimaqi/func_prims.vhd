-- Functional VHDL Components Package
-- This package contains primitive gates
-- without delay for use in structural VHDL designs.

library ieee;
use ieee.std_logic_1164.all;

package func_prims is

component and_2
   port(in1, in2: in std_logic;
        out1: out std_logic);
end component;
 
component and_3
   port(in1, in2, in3 : in std_logic;
        out1: out std_logic);
end component;
 	
component and_4
   port(in1, in2, in3, in4 : in std_logic;
        out1: out std_logic);
end component; 

component and_5
   port(in1, in2, in3, in4, in5 : in std_logic;
        out1: out std_logic);
end component;

component inverter
   port(in1: in std_logic; out1: out std_logic);
end component;
 
component or_2
   port(in1, in2: in std_logic;
        out1: out std_logic);
end component;
 
component or_3
   port(in1, in2, in3 : in std_logic;
        out1: out std_logic);
end component;
 	
component or_4
   port(in1, in2, in3, in4 : in std_logic;
        out1: out std_logic);
end component; 

component or_5
   port(in1, in2, in3, in4, in5 : in std_logic;
        out1: out std_logic);
end component;

component nand_2
   port(in1, in2: in std_logic;
        out1: out std_logic);
end component;
  
component nand_3
   port(in1, in2, in3 : in std_logic;
        out1: out std_logic);
end component;
 	
component nand_4
   port(in1, in2, in3, in4 : in std_logic;
        out1: out std_logic);
end component;
 
component nand_5
   port(in1, in2, in3, in4, in5 : in std_logic;
        out1: out std_logic);
end component;

component nand_6
   port(in1, in2, in3, in4, in5, in6: in std_logic;
        out1: out std_logic);
end component;
 
component nor_2
   port(in1, in2: in std_logic;
        out1: out std_logic);
end component;
 
component nor_3
   port(in1, in2, in3 : in std_logic;
        out1: out std_logic);
end component; 
	
component nor_4
   port(in1, in2, in3, in4 : in std_logic;
        out1: out std_logic);
end component; 

component nor_5
   port(in1, in2, in3, in4, in5 : in std_logic;
        out1: out std_logic);
end component;

component not1
   port(in1: in std_logic; out1: out std_logic);
end component;

component xor_2
   port(in1, in2: in std_logic;
        out1: out std_logic);
end component;

component xnor_2
   port(in1, in2: in std_logic;
        out1: out std_logic);
end component;
 
end func_prims;

library ieee;
use ieee.std_logic_1164.all;
entity and_2 is
   port(in1, in2 : in std_logic;
        out1 : out std_logic);
end and_2;

architecture concurrent of and_2 is
begin
   out1 <= in1 and in2;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity and_3 is
   port(in1, in2, in3 : in std_logic;
        out1 : out std_logic);
end and_3;

architecture concurrent of and_3 is
begin
   out1 <= in1 and in2 and in3;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity and_4 is
   port(in1, in2, in3, in4: in std_logic;
        out1 : out std_logic);
end and_4;

architecture concurrent of and_4 is
begin
   out1 <= in1 and in2 and in3 and in4;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity and_5 is
   port(in1, in2, in3, in4, in5 : in std_logic;
        out1 : out std_logic);
end and_5;

architecture concurrent of and_5 is
begin
   out1 <= in1 and in2 and in3 and in4 and in5;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity or_2 is
   port(in1, in2: in std_logic;
        out1 : out std_logic);
end or_2;

architecture concurrent of or_2 is
begin
   out1 <= in1 or in2;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity or_3 is
   port(in1, in2, in3 : in std_logic;
        out1 : out std_logic);
end or_3;

architecture concurrent of or_3 is
begin
   out1 <= in1 or in2 or in3;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity or_4 is
   port(in1, in2, in3, in4: in std_logic;
        out1 : out std_logic);
end or_4;

architecture concurrent of or_4 is
begin
   out1 <= in1 or in2 or in3 or in4;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity or_5 is
   port(in1, in2, in3, in4, in5 : in std_logic;
        out1 : out std_logic);
end or_5;

architecture concurrent of or_5 is
begin
   out1 <= in1 or in2 or in3 or in4 or in5;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity inverter is
   port(in1 : in std_logic;
        out1 : out std_logic);
end inverter;

architecture concurrent of inverter is
begin
   out1 <= not in1;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity nand_2 is
   port(in1, in2: in std_logic;
        out1 : out std_logic);
end nand_2;

architecture concurrent of nand_2 is
begin
   out1 <= not (in1 and in2);
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity nand_3 is
   port(in1, in2, in3 : in std_logic;
        out1 : out std_logic);
end nand_3;

architecture concurrent of nand_3 is
begin
   out1 <= not (in1 and in2 and in3);
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity nand_4 is
   port(in1, in2, in3, in4: in std_logic;
        out1 : out std_logic);
end nand_4;

architecture concurrent of nand_4 is
begin
   out1 <= not (in1 and in2 and in3 and in4);
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity nand_5 is
   port (in1, in2, in3, in4, in5 : in std_logic;
        out1 : out std_logic);
end nand_5;

architecture concurrent of nand_5 is
begin
   out1 <= not (in1 and in2 and in3 and in4 and in5);
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity nor_2 is
   port(in1, in2: in std_logic;
        out1 : out std_logic);
end nor_2;

architecture concurrent of nor_2 is
begin
   out1 <= in1 nor in2;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity nor_3 is
   port(in1, in2, in3 : in std_logic;
        out1 : out std_logic);
end nor_3;

architecture concurrent of nor_3 is
begin
   out1 <= not (in1 or in2 or in3);
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity nor_4 is
   port(in1, in2, in3, in4: in std_logic;
        out1 : out std_logic);
end nor_4;

architecture concurrent of nor_4 is
begin
   out1 <= not (in1 or in2 or in3 or in4);
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity nor_5 is
   port (in1, in2, in3, in4, in5 : in std_logic;
        out1 : out std_logic);
end nor_5;

architecture concurrent of nor_5 is
begin
   out1 <= not (in1 or in2 or in3 or in4 or in5);
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity not1 is
   port(in1 : in std_logic;
        out1 : out std_logic);
end not1;

architecture concurrent of not1 is
begin
   out1 <= not in1;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity xor_2 is
   port(in1, in2 : in std_logic;
        out1 : out std_logic);
end xor_2;

architecture concurrent of xor_2 is
begin
   out1 <= in1 xor in2;
end concurrent;

library ieee;
use ieee.std_logic_1164.all;
entity xnor_2 is
   port(in1, in2 : in std_logic;
        out1 : out std_logic);
end xnor_2;

architecture concurrent of xnor_2 is
begin
   out1 <= not (in1 xor in2);
end concurrent;


