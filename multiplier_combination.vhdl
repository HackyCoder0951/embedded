library ieee;
use ieee.std_logic_1164.all;

entity multiplier_combination is
    port(
        A : in  std_logic_vector(1 downto 0);
        B : in  std_logic_vector(1 downto 0);
        P : out std_logic_vector(3 downto 0)
    );
end multiplier_combination;

architecture behavioral of multiplier_combination is
begin
    process(A, B)
    begin
        case A is

            when "00" =>
                if    B = "00" then P <= "0000";
                elsif B = "01" then P <= "0000";
                elsif B = "10" then P <= "0000";
                else                 P <= "0000";
                end if;

            when "01" =>
                if    B = "00" then P <= "0000";
                elsif B = "01" then P <= "0001";
                elsif B = "10" then P <= "0010";
                else                 P <= "0011";
                end if;

            when "10" =>
                if    B = "00" then P <= "0000";
                elsif B = "01" then P <= "0010";
                elsif B = "10" then P <= "0100";
                else                 P <= "0110";
                end if;

            when "11" =>
                if    B = "00" then P <= "0000";
                elsif B = "01" then P <= "0011";
                elsif B = "10" then P <= "0110";
                else                 P <= "1001";
                end if;

            when others =>
                P <= "0000";

        end case;
    end process;
end behavioral;
