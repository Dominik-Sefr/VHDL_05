library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    port (
        SW : in std_logic_vector(15 downto 0);
        LED : out std_logic_vector(15 downto 0)
    );
end top;

architecture Behavioral of top is

begin
    mux1 : entity work.multiplexor
        port map(
            d => SW(5 downto 2),
            s => SW(1 downto 0),
            q => LED(0)
        );
    mux2 : entity work.multiplexor
        port map(
            d => SW(11 downto 8),
            s => SW(7 downto 6),
            q => LED(1)
        );
    dec1 : entity work.decoder
        port map(
            d => SW(13 downto 12),
            q => LED(5 downto 2)
        );
-- insert two muxes here
    
    -- insert a decoder here

end Behavioral;
