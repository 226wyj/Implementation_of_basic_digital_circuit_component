--通用寄存器，由多个D触发器构成，在cp脉冲的作用下，每个D触发器能够寄存一位二进制码
--D=0时寄存器为0，D=1时寄存器为1

library ieee;
use ieee.std_logic_1164.all;
entity jcp is
    port(
        rl:in bit;   --输入控制
        clk:in bit;  --时钟
        cclr:in bit;  --复位端
        d:in bit_vector(15 downto 0);  --数据输入
        dout:out bit_vector(15 downto 0)  --数据输出
    );
end entity jcp;

architecture BHEV of jcp is
    signal w_0  :   bit_vector(15 downto 0);
    signal w_1  :   bit_vector(15 downto 0);
    signal w_2  :   bit_vector(15 downto 0);
    signal w_3  :   bit;
    signal w_dff:   bit_vector(15 downto 0);
    signal dout_xhdll:bit_vector(15 downto 0);
begin
    dout<=dout_xhdll;
    dout_xhdll<=w_dff;
    w_2<=w_0 or w_1;
    process
    begin
        wait until (clk'event and clk='1') or (cclr'event and cclr = '0')
        if(not cclr='1') then
            w_dff<=(others=>'0');
            w_dff<="0000000000000000";
        else
            w_dff<=w_2;
        end if;
    end process;
    w_0<=d and rl;
    w_1<=w_3 and w_dff;
    w_3<=not rl;
end architecture BHEV;
