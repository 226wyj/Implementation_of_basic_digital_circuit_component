library ieee;
use ieee.std_logic_1164.all;
entity bcd_decoder is
port(a:in std_logic_vector(3 downto 0);
    y:out std_logic_vector(6 downto 0));
end;
architecture one of bcd_decoder is
begin
    process(a)
    begin
        case a is
            when "0000"=>y<="1111110";
            when "0001"=>y<="0110000";
            when "0010"=>y<="1101101";
            when "0011"=>y<="1111001";
            when "0100"=>y<="0110011";
            when "0101"=>y<="1011011";
            when "0110"=>y<="1011111";
            when "0111"=>y<="1110010";
            when "1000"=>y<="1111111";
            when "1001"=>y<="1111011";
            when "1010"=>y<="1110111";
            when "1011"=>y<="0011111";
            when "1100"=>y<="1001110";
            when "1101"=>y<="0111101";
            when "1110"=>y<="1001111";
            when "1111"=>y<="1000111";
        end case;
    end process;
    end;