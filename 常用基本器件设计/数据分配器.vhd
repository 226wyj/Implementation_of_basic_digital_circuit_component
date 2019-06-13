library ieee;
use ieee.std_logic_1164.all;
entity demux4 is
port(din:in std_logic;
    a:in std_logic_vector(1 downto 0);
    y0,y1,y2,y3:in std_logic);
end;
architecture one of demux4 is
begin
    process(din,a)
    begin
        y0<='0';
        y1<='0';
        y2<='0';
        y3<='0';
        case a is
            when "00"=>y0<=din;
            when "01"=>y1<=din;
            when "10"=>y2<=din;
            when "11"=>y3<=din;
            when others=>null;
        end case;
    end process;
    end;