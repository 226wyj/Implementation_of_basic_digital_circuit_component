library ieee;
use ieee.std_logic_1164.all;
entity comparator_4 is
port(a,b:in std_logic_vector(3 downto 0);
    y1,y2,y3:out std_logic);
end;
architecture one of comparator_4 is
begin
    process(a,b)
    begin
        if a>b then
            y1<='1';
            y2<='0';
            y3<='0';
        elsif a=b then
            y1<='0';
            y2<='1';
            y3<='0';
        elsif a<b then
            y1<='0';
            y2<='0';
            y3<='1';
        end if;
    end process;
    end;