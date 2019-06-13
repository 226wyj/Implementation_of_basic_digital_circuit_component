library ieee;
use ieee.std_logic_1164.all;
entity mux8 is
port(d0,d1,d2,d3,d4,d5,d6,d7:in std_logic;
    g:in std_logic;
    a:in std_logic_vector(2 downto 0);
    y:out std_logic);
end;
architecture one of mux8 is
begin
    process(a,g,d0,d1,d2,d3,d4,d5,d6,d7)
    begin
        if g='0' then y<='0';
        else
            case a is
                when "000"=>y<=d0;
                when "001"=>y<=d1;
                when "010"=>y<=d2;
                when "011"=<y<=d3;
                when "100"=>y<=d4;
                when "101"=>y<=d5;
                when "110"=>y<=d6;
                when "111"=>y<=d7;
                when others=>y<='0';
            end case;
        end if;
    end process;
    end;
