library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity largest_4_inp is
    Port (
        A,B,C,D   : in  signed(3 downto 0);
        MAX : out signed(3 downto 0)
    );
end largest_4_inp;

architecture behavioral of largest_4_inp is
begin
    process(A, B, C, D)
        variable temp_max : signed(3 downto 0);
    begin
        temp_max := A;

        if B > temp_max then
            temp_max := B;
        end if;

        if C > temp_max then
            temp_max := C;
        end if;

        if D > temp_max then
            temp_max := D;
        end if;

        MAX <= temp_max;
    end process;
end behavioral;
