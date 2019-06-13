library ieee;
use ieee.std_logic_1164.all;
entity sub_4 is
port(a,b:in std_logic_vector(3 downto 0);
    ci:in std_logic;
    dout:out std_logic_vector(3 downto 0);
    cout:out std_logic);
end;
architecture one of sub_4 is
signal temp:std_logic_vector(4 downto 0);
begin
    temp<=('0'&a)-b-ci;
    dout<=temp(3 downto 0);
    cout<=temp(4);
end;