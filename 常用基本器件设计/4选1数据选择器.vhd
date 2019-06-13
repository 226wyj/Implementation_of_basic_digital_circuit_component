library ieee;
use ieee.std_logic_1164.all;
entity mux4 is
port(d0,d1,d2,d3:in std_logic;
    g:in std_logic;
    a:in std_logic_vector(1 downto 0);
    y:out std_logic);
end;
architecture one of mux4 is
begin
    process(a,g,d0,d1,d2,d3)
    begin
        if g='0' then
            y<='0';
        else
            case a is
                when "00"=>y<=d0;
                when "01"=>y<=d1;
                when "10"=>y<=d2;
                when "11"=>y<=d3;
            end case;
        end if;
    end process;
    end;
