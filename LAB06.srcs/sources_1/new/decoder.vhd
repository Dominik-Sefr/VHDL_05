library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
    port(
        d : in  std_logic_vector(1 downto 0);
        q : out std_logic_vector(3 downto 0)
    );
end decoder;

architecture Behavioral of decoder is

begin
    process(d)
    begin
        if d = "00" then
            q <= "0001";
        elsif d = "01" then
            q <= "0010";
        elsif d = "10" then
            q <= "0100";
        else 
            q <= "1000";
        end if;
    end process;    
    -- insert process with case statement that describes 2bit bin to 1:4 code decoder here

end Behavioral;
