library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity smallest_3_inp is
    Port (
        A   : in  signed(3 downto 0);
        B   : in  signed(3 downto 0);
        C   : in  signed(3 downto 0);
        MIN : out signed(3 downto 0)
    );
end smallest_3_inp;

architecture behavioral of smallest_3_inp is
begin
    process(A, B, C)
    begin
        if (A <= B) and (A <= C) then
            MIN <= A;
        elsif (B <= A) and (B <= C) then
            MIN <= B;
        else
            MIN <= C;
        end if;
    end process;
end behavioral;

