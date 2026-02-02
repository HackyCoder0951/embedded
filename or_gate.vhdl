library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port (
		a,b: in std_logic;
		c: out std_logic);
end or_gate;

architecture OrLogic of or_gate is
	begin 
		c <= a OR b;
end OrLogic;