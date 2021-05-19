LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
use IEEE.numeric_std.all;
USE std.textio.all  ; 

entity myblock is
port(
		clk    : in std_logic;
		clockout : out std_logic;
		dout   : out std_logic;
		ce     : out std_logic;
		REG	    : in std_logic_vector(7 downto 0)

);
end myblock;

architecture behavioral of myblock  is

				
		
		
		component ledmatrixcontroller IS
		PORT
		(
		clk    : in std_logic;
		clockout : out std_logic;
		dout   : out std_logic;
		ce     : out std_logic;
		done : out std_logic;
		r1	    : in std_logic_vector(7 downto 0);
		r2 	 : in std_logic_vector(7 downto 0);
		r3     : in std_logic_vector(7 downto 0);
		r4 	 : in std_logic_vector(7 downto 0);
		r5	    : in std_logic_vector(7 downto 0);
		r6 	 : in std_logic_vector(7 downto 0);
		r7	    : in std_logic_vector(7 downto 0);
		r8	    : in std_logic_Vector(7 downto 0)  
		);
		end component;
		
		
		signal done       :  std_logic;
		
		signal r1	    :  std_logic_vector(7 downto 0);
		signal r2 	    :  std_logic_vector(7 downto 0);
		signal r3       :  std_logic_vector(7 downto 0);
		signal r4 	    :  std_logic_vector(7 downto 0);
		signal r5	    :  std_logic_vector(7 downto 0);
		signal r6 	    :  std_logic_vector(7 downto 0);
		signal r7	    :  std_logic_vector(7 downto 0);
		signal r8	    :  std_logic_Vector(7 downto 0);
		constant halfperiod : time := 1250 ns; --clock (400khz)
		signal smile : std_logic_vector( 63 downto 0 ) := 	"00000000"&
																	"00000000"&
																	"01100110"&
																	"01100110"&
																	"00000000"&
																	"00000000"&
																	"01000010"&
																	"01111110";
																	
		signal sup : std_logic_vector( 63 downto 0) := 		"00000000"&
																	"00000000"&
																	"01100110"&
																	"01100110"&
																	"00000000"&
																	"00111100"&
																	"00100100"&
																	"00111100";

		signal selection : std_logic_vector( 63 downto 0);
		signal counter  : std_logic_vector( 23 downto 0) := (OTHERS => '0') ;
		signal onehzClk : std_logic := '0';

		begin
			
			DUT : ledmatrixcontroller port
			map(
				clk => clk,
				clockout => clockout,
				dout => dout,
				ce	  => ce,
				done => done, 
				r1 => selection(63 downto 56),
				r2 => selection(55 downto 48),
				r3 => selection(47 downto 40),
				r4 =>	selection(39 downto 32),
				r5 => selection(31 downto 24),
				r6 => selection(23 downto 16),
				r7 => selection(15 downto 8),
				r8 => selection(7 downto 0)
			);
			
			
			process(clk) begin
				if( rising_edge(clk) ) then
					
					if( counter >= 5000 ) then
						counter <=  std_logic_vector(to_unsigned(0, 24));
						onehzclk <= not onehzclk;
--					if( counter >= '1100001101010000000' ) then
--						counter <=  '0000000000000000000';
--						onehzclk <= not onehzclk;
					else
						counter <= counter + 1;
					end if;
					
				end if;
				
			end process;
			 
			
end behavioral;
