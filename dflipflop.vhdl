library IEEE;
use IEEE.std_logic_1164.all;

entity dflipflop is
	port(
		D : in std_logic;
		CLOCK : in std_logic;
		Q : out std_logic;
		Qb : out std_logic
	);
end dflipflop;

architecture behaviour of dflipflop is
begin process(CLOCK)
	begin 
		if rising_edge(CLOCK)
		then 
			Q <= D;
			Qb <= not(D);
		end if;
	end process;
end behaviour;