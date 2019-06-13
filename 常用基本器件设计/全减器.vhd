library ieee;
use ieee.std_logic_1164.all;
entity sub is
port(a,b:in std_logic;
    ci:in std_logic;
    dout:out std_logic;
    cout:out std_logic);
end;
architecture one of sub is
signal temp:std_logic_vector(1 downto 0);
begin
    temp<=('0'&a)-b-ci;
    dout<=temp(0);
    cout<=temp(1);
end;