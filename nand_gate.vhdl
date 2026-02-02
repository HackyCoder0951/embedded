library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is 
	port(
		a : in std_logic;
		b : in std_logic;
		c : out std_logic);
end nand_gate;

architecture NandLogic of nand_gate is 
	begin 
		c <= not(a and b);
end NandLogic;