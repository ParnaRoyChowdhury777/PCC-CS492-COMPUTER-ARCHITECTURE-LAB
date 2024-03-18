----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:05 03/05/2024 
-- Design Name: 
-- Module Name:    four_bit_adder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_adder is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           z : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           c : out  STD_LOGIC);
end four_bit_adder;

architecture Behavioral of four_bit_adder is
component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal c1, c2, c3: std_logic:='0';

begin

adder01 : full_adder port map (
	a => x(0),
	b => y(0),
	cin => z,
	sum => s(0),
	cout => c1);
	
adder02 : full_adder port map (
	a => x(1),
	b => y(1),
	cin => c1,
	sum => s(1),
	cout => c2);
	
adder03 : full_adder port map (
	a => x(2),
	b => y(2),
	cin => c2,
	sum => s(2),
	cout => c3);
	
adder04 : full_adder port map (
	a => x(3),
	b => y(3),
	cin => c3,
	sum => s(3),
	cout => c);

end Behavioral;

