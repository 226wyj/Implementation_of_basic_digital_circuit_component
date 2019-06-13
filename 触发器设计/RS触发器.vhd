library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity RS is 
port(s,r,res:in std_logic;
    q,qn:out std_logic);
end;
architecture one of RS is
signal q1,qn1:std_logic;
begin
    process(q1,qn1,res)            --s=1则q=1,r=1则q非=1
    begin                          --因此s为置1端，r为置0端
        if res='0' then            --res为异步清零端
            q1<='0';
            qn1<='1';
        elsif (s='1' and r='0') then
            q1<='1';
            qn1<='0';
        elsif (s='0' and r='1') then
            q1<='0';
            qn1<='1';
        end if;
        q<=q1;
        qn<=qn1;
    end process;
    end;