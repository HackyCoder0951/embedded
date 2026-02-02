library ieee;
use ieee.std_logic_1164.all;

entity nor_gate_tb is 
end nor_gate_tb;

architecture behaviour of nor_gate_tb is
    component nor_gate
        Port (
            a : in std_logic;
            b : in std_logic;
            c : out std_logic
        );
    end component;
        signal a : std_logic := '0';
        signal b : std_logic := '0';
        signal c : std_logic;
        begin
            UUT : nor_gate
                port map( 
                    a => a,
                    b => b,
                    c => c
                );
            stim_proc : process
                begin
                    a <= '0'; b <= '0'; 
						wait for 100 ns;
                    a <= '0'; b <= '1'; 
						wait for 100 ns;
                    a <= '1'; b <= '0'; 
						wait for 100 ns;
                    a <= '1'; b <= '1'; 
						wait for 100 ns; 
					wait;
                end process;
        end behaviour;