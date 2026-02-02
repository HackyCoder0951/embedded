library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity dflipflop_tb is 
end dflipflop_tb; 
 
architecture behaviour of dflipflop_tb is 
 
    -- Component Declaration 
    component dflipflop_tb is 
        port ( 
            D     : in  STD_LOGIC; 
            CLOCK : in  STD_LOGIC; 
            Q     : out STD_LOGIC; 
            Qb    : out STD_LOGIC 
        ); 
    end component; 
 
    -- Signals 
    signal D, CLK, Q, Qb : STD_LOGIC; 
 
begin 
    -- Instantiate the Unit Under Test (UUT) 
    uut: entity work.dflipflop
        port map ( 
            D     => D, 
            CLOCK => CLK, 
            Q     => Q, 
            Qb    => Qb 
        ); 
    -- Clock generation: 100ns HIGH, 100ns LOW 
    clock_process: process 
    begin 
        while true loop 
            CLK <= '0';       wait for 100 ns; 
            CLK <= '1';        wait for 100 ns; 
        end loop; 
    end process; 
    -- Stimulus 
    stim_process: process 
    begin 
        D <= '0';        wait for 150 ns; 
        D <= '1';        wait for 150 ns; 
        D <= '0';        wait for 200 ns; 
        D <= '1';        wait; 
    end process; 
end behaviour; 