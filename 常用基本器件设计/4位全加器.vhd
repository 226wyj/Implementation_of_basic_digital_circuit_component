library ieee;
use ieee.std_logic_1164.all;
entity add_4 is
port(a,b:in std_logic_vector(3 downto 0);
    ci:in std_logic;
    s:out std_logic_vector(3 downto 0);
    co:out std_logic);
end;
architecture one of add_4 is
signal temp:std_logic_vector(4 downto 0);
begin
    temp<=('0'&a)+b+ci;
    s<=temp(3 downto 0);
    co<=temp(4);
end;