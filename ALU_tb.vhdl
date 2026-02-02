library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu_tb is
end alu_tb;

architecture behavior of alu_tb is

    component alu
        port(
            inp_a  : in signed(3 downto 0);
            inp_b  : in signed(3 downto 0);
            sel    : in std_logic_vector(2 downto 0);
            out_alu : out signed(3 downto 0)
        );
    end component;

    signal inp_a  : signed(3 downto 0) := (others => '0');
    signal inp_b  : signed(3 downto 0) := (others => '0');
    signal sel    : std_logic_vector(2 downto 0) := (others => '0');
    signal out_alu : signed(3 downto 0);

begin

    uut: alu
        port map(
            inp_a => inp_a,
            inp_b => inp_b,
            sel => sel,
            out_alu => out_alu
        );

    stim_proc: process
    begin
        wait for 100 ns;
        inp_a <= "1001";
        inp_b <= "1111";
        sel <= "000";   -- ADD
        wait for 100 ns;

        sel <= "001";   -- SUB
        wait for 100 ns;

        sel <= "010";   -- DEC A
        wait for 100 ns;

        sel <= "011";   -- INC A
        wait for 100 ns;

        sel <= "100";   -- AND
        wait for 100 ns;

        sel <= "101";   -- OR
        wait for 100 ns;

        sel <= "110";   -- NOT A
        wait for 100 ns;

        sel <= "111";   -- XOR
        wait for 100 ns;

        wait;
    end process;

end behavior;
