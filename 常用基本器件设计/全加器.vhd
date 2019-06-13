library ieee;
use ieee.std_logic_1164.all;
entity add is 
port(a,b,ci:in std_logic;
    s,co:out std_logic);
end;
architecture one of add is
signal temp:std_logic_vector(1 downto 0);
begin
    temp<=('0'&a)+b+ci;
    s<=temp(0);
    co<=temp(1);
    end;
    

