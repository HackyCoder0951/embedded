library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity jkflipflop is 
    port( 
        J, K, clk : in  std_logic; 
        Q, Qbar  : out std_logic   ); 
end jkflipflop; 

architecture behavioral of jkflipflop is 
    signal qn : std_logic := '0'; 
begin 
    process(clk) 
    begin 
        if rising_edge(clk) then 
            if (J = '0' and K = '0') then   -- Hold state 
                qn <= qn; 
            elsif (J = '0' and K = '1') then    -- Reset 
                qn <= '0'; 
            elsif (J = '1' and K = '0') then   -- Set 
                qn <= '1'; 
            elsif (J = '1' and K = '1') then   -- Toggle 
                qn <= not qn; 
            end if; 
        end if; 
    end process; 
    Q  <= qn; 
    Qbar  <= not qn; 
end behavioral;