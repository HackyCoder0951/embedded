library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
    Port (
        Ain,Bin : in std_logic;
        Gout,Sout,Eout: out std_logic
        );
end comparator;

architecture comp_arch of comparator is
  begin
   Gout <= Ain and (not Bin);
   Sout <= (not Ain) and Bin;
   Eout <= Ain xnor Bin;
end comp_arch;
