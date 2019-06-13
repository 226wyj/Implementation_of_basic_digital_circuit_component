library ieee;
use ieee.std_logic_1164.all;
entity yxbianma8_3 is 
port(i:in std_logic_vector(7 downto 0); --输入
    ei:in std_logic;                    --输入使能端
    y:out std_logic_vector(2 downto 0); --输出
    eo:out std_logic;                   --输出使能端
    gs:out std_logic);                  --优先标志端
end;
architecture one of yxbianma8_3 is 
begin
    process(i,ei)
    begin
        if ei='1' then
            y<="111";
            eo<='1';
            gs<='1';
        else
            if i(7)='0' then
                y<="000";
                eo<='1';
                gs<='0';
            elsif i(6)='0' then
                y<="001";
                eo<='1';
                gs<='0';
            elsif i(5)='0' then 
                y<="010";
                eo<='1';
                gs<='0';
            elsif i(4)='0' then
                y<="011";
                eo<='1';
                gs<='0';
            elsif i(3)='0' then
                y<="100";
                eo<='1';
                gs<='0';
            elsif i(2)='0' then
                y<="101";
                eo<='1';
                gs<='0';
            elsif i(1)='0' then
                y<="110";
                eo<='1';
                gs<='0';
            elsif i(0)='0' then
                y<="111";
                eo<='1';
                gs<='0';
            elsif i="11111111" then
                y<="111";
                gs<='1';
                eo<='0';
            end if;
        end if;
    end process;
end;