LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoder_tb IS
END decoder_tb;
 
ARCHITECTURE behavior OF decoder_tb IS
    COMPONENT decoder
        PORT(
            Ain : IN std_logic_vector(1 downto 0);
            Bout : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT; 

    signal Ain : std_logic_vector(1 downto 0) := (others => '0');
    signal Bout : std_logic_vector(3 downto 0);

BEGIN
    UUT : decoder 
        PORT MAP (Ain,Bout
        );
    stim_proc: process
        begin
            wait for 100 ns;
            Ain <= "00";wait for 100 ns;
            Ain <= "01";wait for 100 ns;
            Ain <= "10";wait for 100 ns;
            Ain <= "11";wait;
        end process;

END;