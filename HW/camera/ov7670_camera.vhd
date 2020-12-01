----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_project2 is
    Port (
          --Capture:
          OV7670_D : in std_logic_vector(7 downto 0);
          OV7670_PCLK  : in std_logic;
          OV7670_VSYNC : in std_logic;
          OV7670_HREF  : in std_logic;
		  data_a       : out std_logic_vector(11 downto 0);
		  address_a    : out std_logic_vector(16 downto 0);
		  we_a         : out std_logic;
          
          --CLOCK
          clk50 : in std_logic;
		  clk25 : in std_logic;
          
          --VGA:
          vga_red   : out std_logic_vector(3 downto 0);
          vga_green : out std_logic_vector(3 downto 0);
          vga_blue  : out std_logic_vector(3 downto 0);
          vga_hsync : out std_logic;
          vga_vsync : out std_logic);
end top_project2;

architecture Behavioral of top_project2 is

component ov7670_capture is
    Port ( pclk  : in   STD_LOGIC;
           rez_160x120 : IN std_logic;
           rez_320x240 : IN std_logic;
           vsync : in   STD_LOGIC;
           href  : in   STD_LOGIC;
           d     : in   STD_LOGIC_VECTOR (7 downto 0);
           addr  : out  STD_LOGIC_VECTOR (18 downto 0);
           dout  : out  STD_LOGIC_VECTOR (11 downto 0);
           we    : out  STD_LOGIC);
end component ov7670_capture;

component VGA is
    Port ( CLK25 : in  STD_LOGIC;									-- Horloge d'entrée de 25 MHz							
			  --clkout : out  STD_LOGIC;					-- Horloge de sortie vers le ADV7123 et l'écran TFT
           rez_160x120 : IN std_logic;
           rez_320x240 : IN std_logic;
           Hsync,Vsync : out  STD_LOGIC;						-- les deux signaux de synchronisation pour l'écran VGA
			  --Nblank : out  STD_LOGIC;								-- signal de commande du convertisseur N/A ADV7123
           activeArea : out  STD_LOGIC
			  --Nsync : out  STD_LOGIC
			  );	-- signaux de synchronisation et commande de l'écran TFT
end component VGA;

component RGB is
    Port ( Din 	: in	STD_LOGIC_VECTOR (11 downto 0);			-- niveau de gris du pixels sur 8 bits
		  Nblank : in	STD_LOGIC;										-- signal indique les zone d'affichage, hors la zone d'affichage
																					-- les trois couleurs prendre 0
           R,G,B 	: out	STD_LOGIC_VECTOR (7 downto 0));			-- les trois couleurs sur 12 bits
end component RGB;

component Address_Generator is
    Port ( 	CLK25,enable : in  STD_LOGIC;								-- horloge de 25 MHz et signal d'activation respectivement
            rez_160x120  : IN std_logic;
            rez_320x240  : IN std_logic;
            vsync        : in  STD_LOGIC;
			address 	 : out STD_LOGIC_VECTOR (18 downto 0));	-- adresse généré
end component Address_Generator;

component blk_mem_gen_0 is
  Port (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    clkb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(11 DOWNTO 0));
end component blk_mem_gen_0;

--resolution:
signal rez_160x120 : std_logic;
signal rez_320x240 : std_logic;

--capture:
signal wren       : std_logic;
signal pixel_cap  : STD_LOGIC_VECTOR (11 downto 0);
signal addra      : STD_LOGIC_VECTOR (18 downto 0);

--BRAM:
signal wren_vec : STD_LOGIC_VECTOR (0 downto 0);
signal addrb      : STD_LOGIC_VECTOR (18 downto 0);

--VGA
signal pixel_vga  : STD_LOGIC_VECTOR (11 downto 0);
signal red, green, blue  : STD_LOGIC_VECTOR (7 downto 0);
signal activeArea : std_logic;
signal nblank     : std_logic;
signal vsync      : std_logic;
signal nsync      : std_logic;

begin  
wren_vec(0) <=  wren;

--to outer BRAM:
we_a      <= wren;
address_a <= addra(16 downto 0);
data_a    <= pixel_cap;

--to VGA
vga_vsync <= vsync;

vga_red   <=  red(3 downto 0);
vga_green <=  green(3 downto 0);
vga_blue  <=  blue(3 downto 0);

--resolution
rez_160x120 <= '0';
rez_320x240 <= '1';

CAP: ov7670_capture port map(pclk => OV7670_PCLK,
                             d    => OV7670_D,
                             rez_160x120 => rez_160x120,
                             rez_320x240 => rez_320x240,
                             vsync => OV7670_VSYNC, 
                             href  => OV7670_HREF,
                             addr  => addra,
                             dout  => pixel_cap,
                             we    => wren);
                             
                            
VGA_inst: VGA port map(clk25 => clk25,
                       rez_160x120 => rez_160x120,
                       rez_320x240 => rez_320x240,
                       Hsync => vga_hsync,
                       Vsync => Vsync,
                       --Nblank => ,
                       --Nsync => ,
                       activeArea => activeArea);
                         
RGB_inst:RGB port map(din    => pixel_vga,
                      Nblank => activeArea , 
                      R => red ,
                      G => green ,
                      B => blue);
                                                            
ADDR_GEN: Address_Generator port map(clk25 => clk25,
                                     enable => activeArea,
                                     rez_160x120 => rez_160x120,
                                     rez_320x240 => rez_320x240,
                                     vsync => vsync,
                                     address =>addrb);
                                  

MEM_inst: blk_mem_gen_0 port map(clka  => clk50, 
                                 wea   => wren_vec,
                                 addra => addra,
                                 dina  => pixel_cap,
                                 clkb  => clk25,
                                 addrb => addrb,
                                 doutb => pixel_vga);
end Behavioral;
