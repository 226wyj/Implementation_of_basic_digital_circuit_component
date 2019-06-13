library ieee;
use ieee.std_logic_1164.all;
entity half_sub is
port(a,b:in std_logic;
    dout:out std_logic;
    cout:out std_logic);
end;
architecture one of half_sub is
begin
    dout<=a xor b;
    cout<=(not a) and b;
end;