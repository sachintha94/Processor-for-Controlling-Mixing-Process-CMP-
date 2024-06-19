
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity program_counter is
	Port ( clka : in STD_LOGIC;
			 reset : in STD_LOGIC;
--			 pc_reset : in STD_LOGIC;
			 enb : in STD_LOGIC;
			 pc_addra : out STD_LOGIC_VECTOR(1 downto 0));
end program_counter;
	
architecture Behavioral of program_counter is
	signal counter : STD_LOGIC_VECTOR(1 downto 0) := "00";
	type StateType is (S0, S1, S2, S3);
   signal currentState : StateType := S0;

begin
	process(clka, reset)
	begin
        if reset = '1' then
				currentState <= S0;
            counter <= "00";  -- Reset to the default value
				
		  elsif rising_edge(clka) then 
			case currentState is 
				when S0 =>
				   if enb = '1' then
						counter <= counter + 1;
						currentState <= S1;
					else
						counter <= counter;
						currentState <= S0;
					end if;
					
				when S1 =>
				   if enb = '1' then
						counter <= counter + 1;
						currentState <= S2;
					else
						counter <= counter;
						currentState <= S1;
					end if;
					
				when S2 =>
				   if enb = '1' then
						counter <= counter + 1;
						currentState <= S3;
					else
						counter <= counter;
						currentState <= S2;
					end if;
					
				when S3 =>
				   if enb = '1' then
						counter <= counter + 1;
						currentState <= S0;
					else
						counter <= counter;
						currentState <= S3;
					end if;
					
			end case;
					
		  
--        elsif rising_edge(clka) then
--		  -- Control signals from the control unit
--				if enb ='0' then
--					counter <= counter +1;
--				else 
--					counter <= counter;	
--				end if;
        end if;
    end process;
	 
	 pc_addra <= counter;  -- Output the counter value
	 	 
end Behavioral;

