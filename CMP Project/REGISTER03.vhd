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


entity Register03 is
    Port ( clka : in STD_LOGIC;
           inst : in STD_LOGIC_VECTOR(7 downto 0); 
			  reg3_out : out STD_LOGIC_VECTOR(7 downto 0)
			  
         );
end Register03;

architecture Behavioral of Register03 is
    signal register3 : STD_LOGIC_VECTOR(7 downto 0);
	
begin
    process(clka)
    begin
        if rising_edge(clka) then
            register3 <= inst; 
        end if;
    end process;

    reg3_out <= register3; 

end Behavioral;
