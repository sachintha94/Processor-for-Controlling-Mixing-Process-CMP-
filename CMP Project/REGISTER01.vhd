----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:28:47 12/21/2023 
-- Design Name: 
-- Module Name:    REG01 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Register01 is
    Port ( clka : in STD_LOGIC;
           temp_in : in STD_LOGIC_VECTOR(3 downto 0); -- Assuming an 8-bit sensor value
			  pre_in : in STD_LOGIC_VECTOR(3 downto 0);
           temp_out : out STD_LOGIC_VECTOR(3 downto 0);
			  pre_out : out STD_LOGIC_VECTOR(3 downto 0)
         );
end Register01;

architecture Behavioral of Register01 is
    signal register_temp : STD_LOGIC_VECTOR(3 downto 0);
	 signal register_pre : STD_LOGIC_VECTOR(3 downto 0);
begin
    process(clka)
    begin
        if rising_edge(clka) then
            register_temp <= temp_in; -- Store the current sensor value at each clock cycle
				register_pre <= pre_in; -- Store the current sensor value at each clock cycle
        end if;
    end process;

    temp_out <= register_temp; -- Output the stored sensor value
	 pre_out <= register_pre;
end Behavioral;
