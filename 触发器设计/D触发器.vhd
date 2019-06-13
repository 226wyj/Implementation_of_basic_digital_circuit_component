library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity D is 
port(d,cp,r,s:in std_logic;
    q,qn:out std_logic);
end;
architecture one of D is
signal q_temp,qn_temp:std_logic;
begin
    process(cp,r,s,q_temp,qn_temp)
    begin
        if r='0' and s='1' then
            q_temp<='0';
            qn_temp<='1';
        elsif r='1' and s='0' then
            q_temp<='1';
            qn_temp<='0';
        elsif r='0' and s='0' then
            q_temp<=q_temp;
            qn_temp<=qn_temp;
        elsif cp'event and cp='1' then
            q_temp<=d;
            qn_temp<=not d;
        end if;
    end process;
    q<=q_temp;
    qn<-qn_temp;
end;