library ieee;
use ieee.std_logic_1164.all;
entity bianma8_3 is
    port(i:in std_logic_vector(7 downto 0);
    y:out std_logic(2 downto 0));
end entity;
architecture one of bianma8_3 is 
begin
    process(i)
    begin
        case i is
            when "00000001"=>y<="000";
            when "00000010"=>y<="001";
            when "00000100"=>y<="010";
            when "00001000"=>y<="011";
            when "00010000"=>y<="100";
            when "00100000"=>y<="101";
            when "01000000"=>y<="110";
            when "10000000"=>y<="111";
            when others=>y<="000";
        end case;
    end process;
end one;  