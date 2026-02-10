library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity largest_4_inp_tb is
end largest_4_inp_tb;

architecture behavior of largest_4_inp_tb is

    component largest_4_inp
        Port (
            A,B,C,D   : in  signed(3 downto 0);
            MAX : out signed(3 downto 0)
        );
    end component;

    signal A, B, C, D : signed(3 downto 0);
    signal MAX        : signed(3 downto 0);

begin

    DUT: largest_4_inp
        port map (
            A => A,
            B => B,
            C => C,
            D => D,
            MAX => MAX
        );

    process
    begin
        -- Test 1
        A <= "0011";B <= "0101";C <= "0001";D <= "0110";wait for 10 ns;

        -- Test 2
        A <= "1111";B <= "0010";C <= "0100";D <= "1000"; wait for 10 ns;

        -- Test 3 (all equal)
        A <= "0101"; B <= "0101";C <= "0101";D <= "0101"; wait for 10 ns;

        -- Test 4 (zero case)
        A <= "0000";B <= "0001";C <= "0000";D <= "0000";wait for 10 ns;

        wait;
    end process;

end behavior;
