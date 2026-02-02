library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity counter_tb is 
end counter_tb; 

architecture behaviour of counter_tb is 
    -- Component declaration 
    component counter 
        port ( 
            clk   : in std_logic; 
            reset : in std_logic; 
            count : out std_logic_vector(3 downto 0)  ); 
    end component; 

    -- Testbench signals 
    signal clk   : std_logic := '0'; 
    signal reset : std_logic := '0'; 
    signal count : std_logic_vector(3 downto 0); 
    constant clk_period : time := 10 ns; 
begin 

    -- Instantiate the Unit Under Test (UUT) 
    uut: counter 
        port map ( 
            clk   => clk, 
            reset => reset, 
            count => count     ); 

    -- Clock process 
    clk_process : process 
    begin 
        while true loop 
            clk <= '0'; 
            wait for clk_period / 2; 
            clk <= '1'; 
            wait for clk_period / 2; 
        end loop; 
    end process; 

    -- Stimulus process 
    stim_proc : process 
    begin 
        -- Initial reset 
        reset <= '1';     wait for 20 ns;    reset <= '0'; 
        -- Run the counter for several clock cycles 
        wait for 200 ns; 
        -- Apply reset again 
        reset <= '1';     wait for 20 ns;    reset <= '0'; 
        wait for 100 ns; 
        wait; 
    end process; 
end behaviour;