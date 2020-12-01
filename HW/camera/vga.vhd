
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity VGA is
    Port ( CLK25 : in  STD_LOGIC;									-- Horloge d'entrée de 25 MHz							
			  --clkout : out  STD_LOGIC;					-- Horloge de sortie vers le ADV7123 et l'écran TFT
           rez_160x120 : IN std_logic;
           rez_320x240 : IN std_logic;
           Hsync,Vsync : out  STD_LOGIC;						-- les deux signaux de synchronisation pour l'écran VGA
			  --Nblank : out  STD_LOGIC;								-- signal de commande du convertisseur N/A ADV7123
           activeArea : out  STD_LOGIC
			  --Nsync : out  STD_LOGIC
			  );	-- signaux de synchronisation et commande de l'écran TFT
end VGA;

architecture Behavioral of VGA is
   -- Timing constants:
   constant hRez       : natural := 640;
   constant hStartSync : natural := 640+16;
   constant hEndSync   : natural := 640+16+96;
   constant hMaxCount  : natural := 799;      -- 640+16+96+48-1
	
   constant vRez       : natural := 480;
   constant vStartSync : natural := 480+10;
   constant vEndSync   : natural := 480+10+2;
   constant vMaxCount  : natural := 524;     --480+10+2+33-1 
   
   -- Counters:
   signal hCounter : unsigned( 9 downto 0) := (others => '0');
   signal vCounter : unsigned( 9 downto 0) := (others => '0');
   
   -- Sync signals:


begin

	-- count COLs and ROWs:
    process(clk25)
    begin
		if rising_edge(clk25) then
			-- Count the lines and rows      
			if hCounter = hMaxCount then
				hCounter <= (others => '0');
				if vCounter = vMaxCount then
					vCounter <= (others => '0');
					activeArea <= '1';
				else
					-- ROW  counter
					if rez_160x120 = '1' then
						if vCounter < 120-1 then
							activeArea <= '1';
						end if;
					elsif rez_320x240 = '1' then
						if vCounter < 240-1 then
							activeArea <= '1';
						end if;
					else
						if vCounter < 480-1 then
							activeArea <= '1';
						end if;
					end if;
				vCounter <= vCounter+1;
				end if;
			else
				-- COL counter
				if rez_160x120 = '1' then
					if hCounter = 160-1 then
						activeArea <= '0';
					end if;
				elsif rez_320x240 = '1' then
					if hCounter = 320-1 then
						activeArea <= '0';
					end if;
				else
					if hCounter = 640-1 then
						activeArea <= '0';
					end if;
				end if;
			hCounter <= hCounter+1;
			end if;
		end if;
	end process;
-------------------------------------------------------------------------
	-- generates vga_hSync and vga_vSync 
	process(clk25)
	begin
		if rising_edge(clk25) then
			-- Are we in the hSync pulse? (one has been added to include frame_buffer_latency)
			-- hStartSync = 656 <= hCounter <=   hEndSync-1 = 751
			if (hCounter >= hStartSync) and (hCounter <= hEndSync-1) then
				Hsync <= '0';
			else
				Hsync <= '1';
			end if;

			-- Are we in the vSync pulse?
			-- vStartSync = 490 <= vCounter <= vEndSync-1 = 491
			if (vCounter >= vStartSync) and (vCounter <= vEndSync-1) then
				vsync <= '0';
			else
				vsync <= '1';
			end if;
		end if;
	end process;

		
end Behavioral;
