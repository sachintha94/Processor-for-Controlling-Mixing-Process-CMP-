
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Register02 is
    Port ( clka : in STD_LOGIC;
			  reset : in STD_LOGIC;
           temp_maxIn : in STD_LOGIC_VECTOR(3 downto 0); 
			  pre_maxIn : in STD_LOGIC_VECTOR(3 downto 0);
			  temp_lowIn : in STD_LOGIC_VECTOR(3 downto 0);
			  pre_lowIn : in STD_LOGIC_VECTOR(3 downto 0);
           temp_maxOut : out STD_LOGIC_VECTOR(3 downto 0); 
			  pre_maxOut : out STD_LOGIC_VECTOR(3 downto 0);
			  temp_lowOut : out STD_LOGIC_VECTOR(3 downto 0);
			  pre_lowOut : out STD_LOGIC_VECTOR(3 downto 0)
         );
			
end Register02;

architecture Behavioral of Register02 is
signal temp_maxReg, pre_maxReg, temp_lowReg, pre_lowReg : STD_LOGIC_VECTOR(3 downto 0);
begin
    process(clka, reset)
    begin
        if reset = '1' then
            temp_maxReg <= (others => '0');
            pre_maxReg <= (others => '0');
            temp_lowReg <= (others => '0');
            pre_lowReg <= (others => '0');
        elsif rising_edge(clka) then
            temp_maxReg <= temp_maxIn;
            pre_maxReg <= pre_maxIn;
            temp_lowReg <= temp_lowIn;
            pre_lowReg <= pre_lowIn;
        end if;
    end process;

    temp_maxOut <= temp_maxReg;
    pre_maxOut <= pre_maxReg;
    temp_lowOut <= temp_lowReg;
    pre_lowOut <= pre_lowReg;
end Behavioral;
