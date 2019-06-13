library ieee;
use ieee.std_logic_1164.all;
entity nand_2 is
port(a,b:in std_logic;
    c:out std_logic);
end;
architecture one of nand_2 is
begin
    c<=a nand b;
end;