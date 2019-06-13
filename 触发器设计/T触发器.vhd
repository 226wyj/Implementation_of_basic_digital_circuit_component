library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity T is
port(t,cp:in std_logic;
    q:out std_logic);
end;
architecture one of T is
signal q_temp:std_logic;
begin
    process(cp)
    begin
        if cp'event and cp='1' then
            if t='0' then
                q_temp<=q_temp;
            elsif t='1' then
                q_temp<=not q_temp;
            end if;
        end if;
    end process;
    q<=q_temp;
end;