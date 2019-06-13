library ieee;
use ieee.std_logic_1164.all;
entity half_add is
port(a,b:in std_logic;
    s,c:out std_logic);
end;
architecture one of half_add is
begin
    s<=a xor b;
    c<=a and b;
end;