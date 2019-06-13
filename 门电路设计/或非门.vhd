library ieee;
use ieee.std_logic_1164.all;
entity nor_2 is
port(a,b:in std_logic;
    c:out std_logic);
end;
architecture one of nor_2 is
begin
    c<=a nor b;
end;