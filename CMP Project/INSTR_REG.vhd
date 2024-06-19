library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Instructio_register is
	Port ( clka        : in STD_LOGIC;
	       reset       : in STD_LOGIC;
           --Enable     : in STD_LOGIC; -- enable input
           ir_din     : in STD_LOGIC_VECTOR(7 downto 0); -- Assuming 8-bit instruction
           ir_Opcode  : out STD_LOGIC_VECTOR(3 downto 0);
           ir_Operand : out STD_LOGIC_VECTOR(3 downto 0)
         );

end Instructio_register;

architecture Behavioral of Instructio_register is
	signal reg : STD_LOGIC_VECTOR(7 downto 0);


begin
	process(clka, reset, ir_din)
	begin
			if reset = '1' then
            reg <= (others => '0'); -- Reset the register to zero
        elsif rising_edge(clka) then
            reg <= ir_din; -- Load the input into the register on the rising edge of the clock when enable is asserted
        end if;
    end process;

    ir_Opcode <= reg(7 downto 4);   -- Extract the upper 4 bits as the opcode
    ir_Operand <= reg(3 downto 0);  -- Extract the lower 4 bits as the operand
end Behavioral;




