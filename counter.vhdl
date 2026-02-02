library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity counter is 
    port ( 
        clk   : in std_logic;     reset : in std_logic; 
        count : out std_logic_vector(3 downto 0)    ); 
end counter; 
architecture behaviour of counter is 
    signal cnt : std_logic_vector(3 downto 0) := "0000"; 
begin 
    process(clk, reset) 
    begin 
        if reset = '1' then 
            cnt <= "0000"; 
        elsif rising_edge(clk) then 
            cnt <= cnt + 1; 
        end if; 
    end process; 
    count <= cnt; 
end behaviour; 