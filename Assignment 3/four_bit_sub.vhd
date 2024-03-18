----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:23:09 03/05/2024 
-- Design Name: 
-- Module Name:    four_bit_sub - Behavioral 
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

entity four_bit_sub is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           z : in  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR (3 downto 0);
           bo : out  STD_LOGIC);
end four_bit_sub;

architecture Behavioral of four_bit_sub is

component full_subtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end component;

signal b1, b2, b3: std_logic:='0';

begin

sub01 : full_subtractor port map (
	a => x(0),
	b => y(0),
	bin => z,
	diff => d(0),
	bout => b1);
	
sub02 : full_subtractor port map (
	a => x(1),
	b => y(1),
	bin => b1,
	diff => d(1),
	bout => b2);
	
sub03 : full_subtractor port map (
	a => x(2),
	b => y(2),
	bin => b2,
	diff => d(2),
	bout => b3);
	
sub04 : full_subtractor port map (
	a => x(3),
	b => y(3),
	bin => b3,
	diff => d(3),
	bout => bo);

end Behavioral;

