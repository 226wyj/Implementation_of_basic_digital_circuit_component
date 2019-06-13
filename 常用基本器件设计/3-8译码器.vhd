library ieee;
use ieee.std_logic_1164.all;
entity decoder3_8 is
    port(a:in std_logic_vector(2 downto 0); --输入
        g1,g2,g3:in std_logic;               --三个使能端
        y:out std_logic_vector(7 downto 0)); --输出
end;
architecture one of decoder3_8 is
    begin
        process(a,g1,g2,g3)                   --g1=1,g2=0,g3=0时有效，否则输出全1
        begin
            if g1='0' then
                y<="11111111";
            elsif g2='1' or g3='1' then    
                y<="11111111";
            else
                case a is
                    when "000"=>y<="11111110";
                    when "001"=>y<="11111101";
                    when "010"=>y<="11111011";
                    when "011"=>y<="11110111";
                    when "100"=>y<="11101111";
                    when "101"=>y<="11011111";
                    when "110"=>y<="10111111";
                    when "111"=>y<="01111111";
                    when others=>y<="11111111";
                end case;
            end if;
        end process;
    end;