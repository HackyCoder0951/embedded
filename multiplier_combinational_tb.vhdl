library ieee;
use ieee.std_logic_1164.all;

entity multiplier_combination_tb is
end multiplier_combination_tb;

architecture tb of multiplier_combination_tb is

    component multiplier_combination
        port(
            A : in  std_logic_vector(1 downto 0);
            B : in  std_logic_vector(1 downto 0);
            P : out std_logic_vector(3 downto 0)
        );
    end component;

    signal A, B : std_logic_vector(1 downto 0);
    signal P : std_logic_vector(3 downto 0);

    constant period : time := 40 ns;

begin

    uut : multiplier_combination
        port map(
            A => A,
            B => B,
            P => P
        );

    stimulus : process
    begin
        A <= "00"; B <= "00"; wait for period;
        A <= "00"; B <= "01"; wait for period;
        A <= "00"; B <= "10"; wait for period;
        A <= "00"; B <= "11"; wait for period;

        A <= "01"; B <= "00"; wait for period;
        A <= "01"; B <= "01"; wait for period;
        A <= "01"; B <= "10"; wait for period;
        A <= "01"; B <= "11"; wait for period;

        A <= "10"; B <= "00"; wait for period;
        A <= "10"; B <= "01"; wait for period;
        A <= "10"; B <= "10"; wait for period;
        A <= "10"; B <= "11"; wait for period;

        A <= "11"; B <= "00"; wait for period;
        A <= "11"; B <= "01"; wait for period;
        A <= "11"; B <= "10"; wait for period;
        A <= "11"; B <= "11"; wait for period;

        wait;
    end process;

end tb;
