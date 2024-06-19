library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CMP is
	generic(C_SIMULATION :  string  := "TRUE");
		port (
				 temp_in : in STD_LOGIC_VECTOR(3 downto 0);
				 pre_in : in STD_LOGIC_VECTOR(3 downto 0);
				 inst : in STD_LOGIC_VECTOR(7 downto 0); 
				 clka : in STD_LOGIC;
				 mode : in STD_LOGIC;
				 reset: in STD_LOGIC;
				 start : in  STD_LOGIC;
				 warning: out  STD_LOGIC;
				 v1: out  STD_LOGIC;
				 v2: out  STD_LOGIC;
				 motor: out  STD_LOGIC		  
				  );

end CMP;

architecture Behavioral of CMP is

---------------------------- Control Unit ------------------------------

COMPONENT cu_fsm is
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
			operand: in STD_LOGIC_VECTOR(3 downto 0);
         opcode: in STD_LOGIC_VECTOR(3 downto 0);
			cu_wea: out STD_LOGIC_VECTOR(0 downto 0);
			cu_reset: out STD_LOGIC;
			cu_tmax: out STD_LOGIC_VECTOR(3 downto 0);
			cu_tlow: out STD_LOGIC_VECTOR(3 downto 0);
			cu_pmax: out STD_LOGIC_VECTOR(3 downto 0);
			cu_plow: out STD_LOGIC_VECTOR(3 downto 0)
			);
END COMPONENT;



---------------------------- Register01 ------------------------------

COMPONENT Register01 is
    Port ( clka : in STD_LOGIC;
           temp_in : in STD_LOGIC_VECTOR(3 downto 0); 
			  pre_in : in STD_LOGIC_VECTOR(3 downto 0);
           temp_out : out STD_LOGIC_VECTOR(3 downto 0);
			  pre_out : out STD_LOGIC_VECTOR(3 downto 0)
         );
END COMPONENT;

---------------------------- Register02 ------------------------------

COMPONENT Register02 is
    Port ( clka : in STD_LOGIC;
			  reset : in STD_LOGIC;
           temp_maxIn : in STD_LOGIC_VECTOR(3 downto 0); -- Assuming an 8-bit sensor value
			  pre_maxIn : in STD_LOGIC_VECTOR(3 downto 0);
			  temp_lowIn : in STD_LOGIC_VECTOR(3 downto 0);
			  pre_lowIn : in STD_LOGIC_VECTOR(3 downto 0);
           temp_maxOut : out STD_LOGIC_VECTOR(3 downto 0); -- Assuming an 8-bit sensor value
			  pre_maxOut : out STD_LOGIC_VECTOR(3 downto 0);
			  temp_lowOut : out STD_LOGIC_VECTOR(3 downto 0);
			  pre_lowOut : out STD_LOGIC_VECTOR(3 downto 0)
         );
			
END COMPONENT;

---------------------------- Register03 ------------------------------

COMPONENT Register03 is
    Port ( clka : in STD_LOGIC;
           inst : in STD_LOGIC_VECTOR(7 downto 0); 
			  reg3_out : out STD_LOGIC_VECTOR(7 downto 0)
			  
         );
END COMPONENT;

---------------------------- Comparator ------------------------------

COMPONENT Comparator is
    Port ( clka : in STD_LOGIC;
           reset : in STD_LOGIC ;
           r1_tem : in STD_LOGIC_VECTOR(3 downto 0);
           r1_pre : in STD_LOGIC_VECTOR(3 downto 0);
           r2_tmax : in STD_LOGIC_VECTOR(3 downto 0);
			  r2_tlow : in STD_LOGIC_VECTOR(3 downto 0);
           r2_pmax : in STD_LOGIC_VECTOR(3 downto 0);
			  r2_plow : in STD_LOGIC_VECTOR(3 downto 0);
           co_out : out STD_LOGIC
			  );
END COMPONENT;

------------------------------- Program Counter ------------------------------

COMPONENT program_counter is
	Port ( clka : in STD_LOGIC;
			 reset : in STD_LOGIC;
--			 pc_reset : in STD_LOGIC;
			 enb : in STD_LOGIC;
			 pc_addra : out STD_LOGIC_VECTOR(1 downto 0));
END COMPONENT;

---------------------------- Instruction Register ------------------------------

COMPONENT Instructio_register is
	Port ( clka      : in STD_LOGIC;
	       reset     : in STD_LOGIC;
           --Enable     : in STD_LOGIC; -- enable input
           ir_din   : in STD_LOGIC_VECTOR(7 downto 0); -- Assuming 8-bit instruction
           ir_opcode     : out STD_LOGIC_VECTOR(3 downto 0);
           ir_operand    : out STD_LOGIC_VECTOR(3 downto 0)
         );

END COMPONENT;

---------------------- BRam ----------------------------

COMPONENT mbram_model is
		PORT (
			 clka : IN STD_LOGIC;
			 wea : IN STD_LOGIC_VECTOR (0 downto 0);
			 addra : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			 dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
			 douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		  );
	END COMPONENT;


---------------------------- Signals ------------------------------
signal s_temp: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_pre: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_temp_mout: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_pre_mout: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_temp_lout: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_pre_lout: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_r2_tmax: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_r2_pmax: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_r2_tlow: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_r2_plow: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_din: STD_LOGIC_VECTOR(7 DOWNTO 0);
signal s_addra: STD_LOGIC_VECTOR(1 DOWNTO 0);
signal s_dout: STD_LOGIC_VECTOR(7 DOWNTO 0);
signal s_opcode: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_operand: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal s_enb: STD_LOGIC;
signal s_sensor: STD_LOGIC;
signal s_reset : STD_LOGIC;
signal s_wea: STD_LOGIC_VECTOR(0 DOWNTO 0);


begin

	------------- Control Unit ------------------ 
	CON: cu_fsm
		port map(
					clka => clka,
					reset => reset,
					start => start,
					sensor => s_sensor,
					mode => mode,
					cu_enb => s_enb,
					v1 => v1,
					v2 => v2,
					motor => motor,
					warning => warning,
					operand => s_operand,
					opcode => s_opcode,
					cu_wea => s_wea,
					cu_reset => s_reset,
					cu_tmax => s_r2_tmax,
					cu_tlow => s_r2_tlow,
					cu_pmax => s_r2_pmax,
					cu_plow => s_r2_plow
					);
					

	------------- Register01 ------------------ ok

	REGISTOR01: Register01
		Port map(
					temp_in => temp_in,
					pre_in => pre_in,
					clka => clka,
					temp_out => s_temp,
					pre_out => s_pre
					);
					
	------------- Register02 ------------------ ok

	REGISTOR02: Register02
		Port map(
					reset => reset,
					temp_maxIn => s_r2_tmax,
					pre_maxIn => s_r2_pmax,
					temp_lowIn => s_r2_tlow,
					pre_lowIn => s_r2_plow,
					clka => clka,
					temp_maxOut => s_temp_mOut ,
					pre_maxOut => s_pre_mOut,
					temp_lowOut => s_temp_lOut,
					pre_lowOut => s_pre_lout  
					);	
	------------- Comparator ------------------ ok
	COM: Comparator	
		Port map(
					clka => clka,
					reset => reset,
					r1_tem => s_temp,
					r1_pre => s_pre,
					r2_tmax => s_temp_mOut,
					r2_tlow => s_temp_lOut,
					r2_pmax => s_pre_mOut,
					r2_plow => s_pre_lOut,
					co_out => s_sensor
					);

	------------- Register03 ------------------ ok

	REGISTOR03: Register03
		Port map(
					inst => inst,
					clka => clka,
					reg3_out => s_din
					);

	------------- program_counter ---------------- ok

	PROG_COUN: program_counter
		Port map(
					clka => clka,
					reset => reset,
--					pc_reset => s_reset,
					enb => s_enb,
					pc_addra => s_addra
					);


  ------------- Instructio_register ------------------ ok

	INSTR_REG: Instructio_register
		Port map(
					reset => reset,
					clka => clka,
					ir_din	=>	s_dout,	
               ir_opcode => s_opcode,
               ir_operand => s_operand 					
					);	

	---------------- mbram_model -------------------- ok
	RAM:mbram_model
	   port map(
					clka => clka,
					wea => s_wea,
					dina => s_din,
					addra =>s_addra,
					douta => s_dout
					);



end Behavioral;

