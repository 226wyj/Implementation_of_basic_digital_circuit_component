library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity jk is
port(j,k,r,s,clk:in std_logic;
    q,qn:out std_logic);
end;
architecture one of jk is
signal q1,qn1:std_logic;
begin
    process(j,k,r,s,clk,q1,qn1)
    begin
        if r='0' and s='1' then
            q1<='0';
            qn1<='1';
        elsif r='1' and s='0' then
            q1<='1';
            qn1<='0';
        elsif r='0' and s='0' then
            q1<=q1;
            qn1<=qn1;
        elsif clk'event and clk='1' then
            if j='0' and k='1' then
                q1<='0';
                qn1<='1';
            elsif j='0' and k='1' then
                q1<='1';
                qn1<='0';
            elsif j='1' and k='1' then
                q1<=not q1;
                qn1<=not q1;
            end if;
        end if;
    end process;
    end; 