library ieee;
use ieee.std_logic_1164.all;
entity tri_buffer is
port(din:in std_logic_vector(7 downto 0);
    en:in std_logic;
    dout:out std_logic_vector(7 downto 0));
end;
architecture one of tri_buffer is
begin
    process(din,en)
    if en='1' then
        dout<=din;
    else
        dout<="ZZZZZZZZ";
    end if;
    end process;
    end;