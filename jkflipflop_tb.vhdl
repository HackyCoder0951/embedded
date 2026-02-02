library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity jkflipflop_tb is 
end jkflipflop_tb; 

architecture behaviour  of jkflipflop_tb is 
    component jkflipflop 
        port( 
            J, K, clk : in  STD_LOGIC; 
            Q, Qbar  : out STD_LOGIC   
			); 
    end component; 

    signal J, K, clk : STD_LOGIC := '0'; 
    signal Q, Qbar   : STD_LOGIC; 
begin 
    uut: jkflipflop
        port map( 
            J    => J, 
            K    => K, 
            clk  => clk, 
            Q    => Q, 
            Qbar => Qbar   ); 
    clock: process 
    begin 
        while true loop 
            clk <= '0'; 
            wait for 200 ns; 
            clk <= '1'; 
            wait for 200 ns; 
        end loop; 
    end process; 

    stim_proc: process 
    begin 
        -- Test 1: J = 0, K = 0 ? Hold state 
        J <= '0'; K <= '0';     wait for 400 ns; 
        -- Test 2: J = 0, K = 1 ? Reset 
        J <= '0'; K <= '1';    wait for 400 ns; 
        -- Test 3: J = 1, K = 0 ? Set 
        J <= '1'; K <= '0';    wait for 400 ns; 
        -- Test 4: J = 1, K = 1 ? Toggle 
        J <= '1'; K <= '1';    wait for 400 ns; 
        -- Test 5: Toggle again 
        J <= '1'; K <= '1';    wait for 400 ns; 
        wait; -- Stop simulation 
    end process; 
end behaviour; 