library ieee;
use ieee.std_logic_1164.all;

entity invertor_gate is
	port(
		a : in std_logic;
		b : out std_logic);
end invertor_gate;

architecture InvertorLogic of invertor_gate is
	begin
		b <= not(a);
	end InvertorLogic;