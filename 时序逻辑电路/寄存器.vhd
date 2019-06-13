library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity reg8_1 is
port(d:in std_logic_vector(7 downto 0); --数据输入
    oe:in std_logic;                    --三态控制
    clk:in std_logic;                   --时钟
    q:out std_logic_vector(7 downto 0));--数据输出
end;
architecture one of reg8_1 is
signal q_temp:std_logic_vector(7 downto 0);
begin
    process(clk,oe)
    begin
        if oe='0' then
            if clk'event and clk='1' then
                q_temp<=d;  --将输入的数据存进寄存器
            end if;
        else
            q_temp<="ZZZZZZZZ";
        end if;
    end process;
    q<=q_temp;   --将数据送到端口
    end;