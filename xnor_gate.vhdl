library ieee;
use ieee.std_logic_1164.all;

entity xnor_gate is
	port(
		a : in std_logic;
		b : in std_logic;
		c : out std_logic);
end xnor_gate;

architecture XnorLogic of xnor_gate is
	begin
		c <= not(a xor b);
end XnorLogic;