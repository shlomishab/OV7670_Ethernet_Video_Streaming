----------------------------------------------------------------------------------
-- Engineer: Shlomi Shabtai
-- 
-- Description: Convert the push button to a 1PPS that can be used to restart
--              camera initialisation
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity debounce is
    Port ( clk     : in  STD_LOGIC;
           btn_in  : in  STD_LOGIC;
           btn_out : out  STD_LOGIC);
end debounce;

architecture Behavioral of debounce is
	signal count : unsigned(23 downto 0);
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if btn_in = '1' then
				if count = x"FFFFFF" then
					btn_out <= '1';
				else
					btn_out <= '0';
				end if;
				count <= count + 1;
			else
				count   <= (others => '0');
				btn_out <= '0';
			end if;
		end if;
	end process;

end Behavioral;

