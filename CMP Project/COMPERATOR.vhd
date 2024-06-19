----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:57:09 12/21/2023 
-- Design Name: 
-- Module Name:    comperator - Behavioral 
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

entity Comparator is
    Port ( clka : in STD_LOGIC;
           reset : in STD_LOGIC ;
           r1_tem : in STD_LOGIC_VECTOR(3 downto 0);
           r1_pre : in STD_LOGIC_VECTOR(3 downto 0);
           r2_tmax : in STD_LOGIC_VECTOR(3 downto 0);
			  r2_tlow : in STD_LOGIC_VECTOR(3 downto 0);
           r2_pmax : in STD_LOGIC_VECTOR(3 downto 0);
			  r2_plow : in STD_LOGIC_VECTOR(3 downto 0);
           co_out : out STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is

begin
    process(clka, reset)
    begin
        if reset = '1' then
            co_out <= '0';
        elsif rising_edge(clka) then
       
            -- Check if all values are equal
            if (r2_tmax > r1_tem and r1_tem > r2_tlow) and (r2_pmax > r1_pre and r1_pre > r2_plow) then
                co_out <= '0';
            else
                co_out <= '1';
            end if;
        end if;
    end process;

end Behavioral;
