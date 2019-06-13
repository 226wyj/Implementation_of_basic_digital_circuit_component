library ieee;
use ieee.std_logic_1164.all;
entity counter_4 is 
port(clk:in std_logic; --时钟
    r,s,en:in std_logic; --清零、置数、使能
    d:in std_logic_vector(3 downto 0); --预置数数据
    co:out:std_logic; --进位
    q:out std_logic_vector(3 downto 0));  --计数输出
end;
architecture one of counter_4 is
begin
    process(clk,r)
    begin
        if r= '1' then
            q<="0000";
        elsif clk'event and clk='1' then
            if s='1' then
                q<=d;
            elsif en='1' then
                if q = "1111" then
                    q<="0000";
                    co<='1';
                else 
                    q<=q+1;
                    co<='0';
                end if;
            end if;
        end if;
    end process;

    end;