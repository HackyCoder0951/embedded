library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity smallest_3_inp_tb is
end smallest_3_inp_tb;

architecture behavior of smallest_3_inp_tb is

    component smallest_3_inp
        Port (
            A,B,C   : in  signed(3 downto 0);
            MIN : out signed(3 downto 0)
        );
    end component;

    signal A, B, C : signed(3 downto 0);
    signal MIN     : signed(3 downto 0);

begin

    -- DUT
    DUT: smallest_3_inp
        port map (
            A => A,
            B => B,
            C => C,
            MIN => MIN
        );

    -- Stimulus
    process
    begin
    -- Test 1
    A <= "0011";B <= "0101";C <= "0001"; wait for 10 ns;

    -- Test 2
    A <= "1110"; B <= "0100"; C <= "0001"; wait for 10 ns;

    -- Test 3
    A <= "1111"; B <= "1100";C <= "1101"; wait for 10 ns;

    -- Test 4
    A <= "1110";B <= "0101";C <= "0011"; wait for 10 ns;

    -- Test 5
    A <= "1000";B <= "0111"; C <= "0000"; wait for 10 ns;

        wait;
    end process;

end behavior;
