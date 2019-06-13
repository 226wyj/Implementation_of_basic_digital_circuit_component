library ieee;
use ieee.std_logic_1164.all;
entity tri_gate is 
port(din:in std_logic;
    en:in std_logic;
    dout:out std_logic);
end;
architecture one of tri_gate is
begin
    process(din,en)
    if en ='1' then
        dout<=din;
    else
        dout<='Z';
    end if;
    end process;
    end;