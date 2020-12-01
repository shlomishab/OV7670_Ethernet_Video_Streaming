----------------------------------------------------------------------------------
-- Engineer: Shlomi Shabtai
-- 
-- Description: Controller for the OV760 camera - transferes registers to the 
--              camera over an I2C-like bus, and debounce control
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ov7670_control is
    Port (clk     : IN    STD_LOGIC;
		  rst_btn : IN    STD_LOGIC;
		  config_finished : OUT STD_LOGIC;
		  sioc    : OUT   STD_LOGIC;
		  siod    : INOUT STD_LOGIC;
		  reset   : OUT   STD_LOGIC;
		  pwdn    : OUT   STD_LOGIC;
		  xclk    : OUT   STD_LOGIC);
end ov7670_control;

architecture Behavioral of ov7670_control is
	COMPONENT ov7670_registers is
	PORT(
		clk      : IN  STD_LOGIC;
		advance  : IN  STD_LOGIC;          
		resend   : IN  STD_LOGIC;
		command  : OUT STD_LOGIC_VECTOR(15 downto 0);
		finished : OUT STD_LOGIC);
	END COMPONENT ov7670_registers;

	COMPONENT i2c_sender is
	PORT(
		clk       : IN    STD_LOGIC;
		send      : IN    STD_LOGIC;
		taken     : OUT   STD_LOGIC;
		device_id : IN    STD_LOGIC_VECTOR(7 downto 0);
		reg       : IN    STD_LOGIC_VECTOR(7 downto 0);
		val       : IN    STD_LOGIC_VECTOR(7 downto 0);    
		siod      : INOUT STD_LOGIC;      
		sioc      : OUT   STD_LOGIC);
	END COMPONENT i2c_sender;
	
	COMPONENT debounce is
	PORT(
		clk     : IN  STD_LOGIC;
		btn_in  : IN  STD_LOGIC;
		btn_out : OUT  STD_LOGIC);
	END COMPONENT debounce;

	signal sys_clk  : STD_LOGIC := '0';	
	signal command  : STD_LOGIC_VECTOR(15 downto 0);
	signal finished : STD_LOGIC := '0';
	signal taken    : STD_LOGIC := '0';
	signal send     : STD_LOGIC;
	signal resend   : STD_LOGIC;
	-- Device write ID = x"42"
	constant camera_address : STD_LOGIC_VECTOR(7 downto 0) := x"42";
begin
    config_finished <=  finished;
	send <= not finished;
	
	Inst_i2c: i2c_sender PORT MAP(
		clk       => clk,
		taken     => taken,
		siod      => siod,
		sioc      => sioc,
		send      => send,
		device_id => camera_address,
		reg       => command(15 downto 8),
		val       => command(7 downto 0));

	Inst_registers: ov7670_registers PORT MAP(
		clk      => clk,
		advance  => taken,
		command  => command,
		finished => finished,
		resend   => resend);
	
	Inst_debounce: debounce PORT MAP(
		clk     => clk,
		btn_in  => rst_btn,
		btn_out => resend);
		
	reset <= '1'; 	   -- Normal mode
	pwdn  <= '0'; 	   -- Power device up
	xclk  <= sys_clk;  -- 25MHz

	process(clk)
	begin
		-- clk = 50MHz
		if rising_edge(clk) then
			sys_clk <= not sys_clk;
		end if;
	end process;
end Behavioral;

