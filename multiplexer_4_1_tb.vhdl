library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer_4_1_tb is
end multiplexer_4_1_tb;

architecture behavior of multiplexer_4_1_tb is

    -- Signals for port mapping
    signal d0, d1, d2, d3 : STD_LOGIC;
    signal sel : STD_LOGIC_VECTOR(1 downto 0);
    signal y : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.multiplexer_4_1
        port map(
            d0 => d0,
            d1 => d1,
            d2 => d2,
            d3 => d3,
            sel => sel,
            y => y
        );

    -- Stimulus process
    stim_proc: process
    begin
        
        -- Set input values
        d0 <= '0';
        d1 <= '1';
        d2 <= '0';
        d3 <= '1';

        -- Test all select combinations
        sel <= "00"; wait for 10 ns;  -- Expect y = d0 = 0
        sel <= "01"; wait for 10 ns;  -- Expect y = d1 = 1
        sel <= "10"; wait for 10 ns;  -- Expect y = d2 = 0
        sel <= "11"; wait for 10 ns;  -- Expect y = d3 = 1

        -- Change data values and repeat
        d0 <= '1';
        d1 <= '0';
        d2 <= '1';
        d3 <= '0';

        sel <= "00"; wait for 10 ns;  -- Expect y = 1
        sel <= "01"; wait for 10 ns;  -- Expect y = 0
        sel <= "10"; wait for 10 ns;  -- Expect y = 1
        sel <= "11"; wait for 10 ns;  -- Expect y = 0

        wait; -- stop simulation
    end process;

end behavior;
