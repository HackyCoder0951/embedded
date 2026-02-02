library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    port(
        inp_a : in signed(3 downto 0);
        inp_b : in signed(3 downto 0);
        sel   : in std_logic_vector(2 downto 0);
        out_alu : out signed(3 downto 0)
    );
end alu;

architecture behavioral of alu is
begin
    process(inp_a, inp_b, sel)
    begin
        case sel is

            when "000" =>    -- Addition
                out_alu <= inp_a + inp_b;

            when "001" =>    -- Subtraction
                out_alu <= inp_a - inp_b;

            when "010" =>    -- Decrement A
                out_alu <= inp_a - 1;

            when "011" =>    -- Increment A
                out_alu <= inp_a + 1;

            when "100" =>    -- AND
                out_alu <= inp_a and inp_b;

            when "101" =>    -- OR
                out_alu <= inp_a or inp_b;

            when "110" =>    -- NOT
                out_alu <= not inp_a;

            when "111" =>    -- XOR
                out_alu <= inp_a xor inp_b;

            when others =>
                out_alu <= (others => '0');

        end case;
    end process;
end behavioral;
