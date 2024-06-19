----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:45 01/03/2024 
-- Design Name: 
-- Module Name:    CU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity cu_fsm is
	port(
			clka : in STD_LOGIC;
			reset: in STD_LOGIC;
			start : in  STD_LOGIC;
			sensor: in  STD_LOGIC;
			mode: in STD_LOGIC;
         cu_enb : out STD_LOGIC;
			v1: out  STD_LOGIC;
			v2: out  STD_LOGIC;
			motor: out  STD_LOGIC;
			warning: out  STD_LOGIC;
			cu_reset: out STD_LOGIC;
			operand: in STD_LOGIC_VECTOR(3 downto 0);
         opcode: in STD_LOGIC_VECTOR(3 downto 0);
			cu_wea: out STD_LOGIC_VECTOR(0 downto 0);
			cu_tmax: out STD_LOGIC_VECTOR(3 downto 0);
			cu_tlow: out STD_LOGIC_VECTOR(3 downto 0);
			cu_pmax: out STD_LOGIC_VECTOR(3 downto 0);
			cu_plow: out STD_LOGIC_VECTOR(3 downto 0)
				);
end cu_fsm;

architecture Behavioral of cu_fsm is
	type state is (idle, S0, S1, S2, S3, S4, S5, S6, VAL01, VAL02, MSTART, MSTOP, STOP);
	
	signal current_state, next_state: state;

begin
	process(clka,reset)
	begin
	 if(reset='1') then
		current_state <= idle;
	 elsif(rising_edge(clka)) then
		current_state <= next_state;
	 end if;
--		 if rising_edge(clka) then
--		 end if;
	end process;
	 
	 process(current_state,start,mode,sensor)
	 begin

		case (current_state) is
		-- if the current state is idle
			when idle =>
				if (mode ='1') and (start = '0') then
						cu_reset <= '1';
						cu_enb <= '1';
						cu_wea <= "1";
						next_state <= S0;
				elsif (mode ='0') and (start = '1') then
						next_state <= S4;
				end if;
				
			when S0 =>
				if (mode ='1') and (start = '0') then
						cu_reset <= '1';
						cu_enb <= '1';
						cu_wea <= "1";
						next_state <= S1;
				else 
						next_state <=idle;
				end if;
				
			when S1 =>
				if (mode ='1') and (start = '0') then
						cu_reset <= '1';
						cu_enb <= '1';
						cu_wea <= "1";
						next_state <= S2;
				else 
						next_state <=idle;
				end if;
				
			when S2 =>
				if (mode ='1') and (start = '0') then
						cu_reset <= '1';
						cu_enb <= '1';
						cu_wea <= "1";
						next_state <= S3;
				else 
						next_state <=idle;
				end if;
				
			when S3 =>
				if (mode ='1') and (start = '0') then
						cu_reset <= '1';
						cu_enb <= '1';
						cu_wea <= "1";
						next_state <= idle;
				else 
						next_state <=idle;
				end if;
				
				when S4 =>
				 if (start ='1') and (mode = '0') then 
					cu_tmax <= "1101";
					cu_tlow <= "0001";
					cu_pmax <= "1101";
					cu_plow <= "0001";
					next_state <= S5;
				else 
					next_state <= idle;	
				end if;
				
				when S5 =>
					if (sensor = '1') then
						next_state <= STOP;
					else 
						cu_reset <= '0';
						cu_enb <= '1';
						cu_wea <= "0";
						next_state <= S6;
					end if;
				
				
				
				when S6 =>
					if (sensor = '1') then 
						next_state <= STOP;
					 else
						case opcode is
							when "0001" => 
								next_state <= VAL01;
							when "0010" => 
								next_state <= VAL02;
							when "1111" => 
								next_state <= MSTART;
							when "0000" => 
								next_state <= MSTOP;
							when others =>
								next_state <= idle;
						end case;
					end if;	
					 
				when VAL01 =>
				 if (sensor = '1') then 
					next_state <= STOP;
				else
					v1 <= '1';
					next_state <= S6;
				end if;
				
				when VAL02 =>
				 if (sensor = '1') then 
					next_state <= STOP;
				else
					v2 <= '1';
					next_state <= S6;
				end if;
				
				
				when MSTART =>
				 if (sensor = '1') then 
					next_state <= STOP;
				else
					motor <= '1';
					next_state <= S6;
				end if;
				
				when MSTOP =>
				 if (sensor = '1') then 
					next_state <= STOP;
				else
					motor <= '0';
					next_state <= S6;
				end if;
				
				when STOP =>
					warning <='1';
					next_state <= idle;
				
		end case;		
	end process;
end Behavioral;

