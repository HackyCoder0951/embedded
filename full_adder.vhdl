library IEEE;
use IEEE.std_logic_1164.all;
entity full_adder is 
    port(
            Ain : in STD_LOGIC;
            Bin : in STD_LOGIC;
            Cin : in STD_LOGIC;
            Sout : out STD_LOGIC;
            Cout : out STD_LOGIC 
        );
    end full_adder;

architecture FAdd of full_adder is
    begin
        process(Ain,Bin, Cin) is
        begin
            Sout <= Ain XOR Bin XOR Cin ;
            Cout <= (Ain AND Bin) OR (Cin AND Ain) OR (Cin AND Bin) ;
        end process;
    end FAdd;