library ieee; 
use ieee.std_logic_1164.all; 
 

entity shiftreg16 is
Port(clk : in std_logic;
	  d	: in std_logic;
	  din   : in std_logic_vector(15 downto 0);
	  ld  : in std_logic;
	  sh  : in std_logic;
	  q	: out std_logic);
end shiftreg16;

architecture arch_shiftreg16 of shiftreg16 is 
  signal tmp: std_logic_vector(15 downto 0); 
  begin 
    process (clk) 
      begin 
        if (clk'event and clk='1') then 
          if (ld='1') then 
            tmp <= din; 
          else 
            tmp <= tmp(14 downto 0) & sh; 
          end if; 
        end if; 
    end process; 
    q <= tmp(15); 
end arch_shiftreg16; 
