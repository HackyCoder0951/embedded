
library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_tb is
--empty
end full_adder_tb;

architecture behavior of full_adder_tb is 
    component full_adder is
        port(
            Ain,Bin,Cin : in STD_LOGIC;
            Sout,Cout : out STD_LOGIC
        );
    end component;

    --signal a_in, b_in, c_in, q_out, c_out: std_ulogic;
 
    signal a_in : std_logic := '0';
    signal b_in : std_logic := '0';
    signal c_in : std_logic := '0';
    
    signal s_out : std_ulogic;
    signal c_out : std_ulogic;

    begin 
        UUT : full_adder 
            port map(
                    Ain => a_in, 
                    Bin => b_in, 
                    Cin => c_in, 
                    Sout => s_out, 
                    Cout => c_out
                );
        process begin
            a_in <= '0';b_in <= '0';c_in <= '0';wait for 100 ns;
            a_in <= '0';b_in <= '0';c_in <= '1';wait for 100 ns;
            a_in <= '0';b_in <= '1';c_in <= '0';wait for 100 ns;
            a_in <= '0';b_in <= '1';c_in <= '1';wait for 100 ns;
            a_in <= '1';b_in <= '1';c_in <= '0';wait for 100 ns;
            a_in <= '1';b_in <= '0';c_in <= '1';wait for 100 ns;
            a_in <= '1';b_in <= '1';c_in <= '0';wait for 100 ns;
            a_in <= '1';b_in <= '1';c_in <= '1';wait;
        end process;
    end behavior;
