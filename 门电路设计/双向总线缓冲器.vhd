library ieee;
use ieee.std_logic_1164.all;
entity tri_bibuffer is 
port(en:in std_logic;
    dr:in std_logic;
    a:inout std_logic_vector(7 downto 0);
    b:inout std_logic_vector(7 downto 0));
end;
architecture one of tri_bibuffer is
signal a_out,b_out:std_logic_vector(7 downto 0);
begin
    process(a,b_out,en,dr)
    begin
        if en='1' and dr='1' then
            b_out<=a;
        else
            b_out<="ZZZZZZZZ";
        end if;
        b<=b_out;
    end process;
    process(a_out,b,en,dr)
    begin
        if(en='1' and dr='1') then
            a_out<=b;
        else
            a_out<="ZZZZZZZZ";
        end if;
        a<=a_out;
    end process;
end;