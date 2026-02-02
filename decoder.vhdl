library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity decoder is
    port(
        Ain : in STD_LOGIC_VECTOR(1 downto 0);
        Bout : out STD_LOGIC_VECTOR(3 downto 0)
    );
end decoder;

architecture behaviour of decoder is
begin
    Bout(0) <= not Ain(1) and not Ain(0);
    Bout(1) <= not Ain(1) and Ain(0);
    Bout(2) <= Ain(1) and not Ain(0);
    Bout(3) <= Ain(1) and Ain(0);
end behaviour;

