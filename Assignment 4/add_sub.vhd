----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:09:14 03/12/2024 
-- Design Name: 
-- Module Name:    add_sub - Behavioral 
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

entity add_sub is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           SD : out  STD_LOGIC_VECTOR (3 downto 0);
           CB : out  STD_LOGIC);
end add_sub;

architecture Behavioral of add_sub is

component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

component xor_gate is
    Port ( m : in  STD_LOGIC;
           n : in  STD_LOGIC;
           p : out  STD_LOGIC);
end component;

signal temp1, temp2, temp3, temp4, c1, c2, c3 : std_logic:='0';

begin

x1 : xor_gate port map(m=>B(0), n=>C, p=>temp1);
adder01: full_adder port map(
	a => A(0),
	b => temp1,
	cin => C,
	sum => SD(0),
	cout => c1);

x2 : xor_gate port map(m=>B(1), n=>C, p=>temp2);	
adder02: full_adder port map(
	a => A(1),
	b => temp2,
	cin => c1,
	sum => SD(1),
	cout => c2);

x3 : xor_gate port map(m=>B(2), n=>C, p=>temp3);
adder03: full_adder port map(
	a => A(2),
	b => temp3,
	cin => c2,
	sum => SD(2),
	cout => c3);

x4 : xor_gate port map(m=>B(3), n=>C, p=>temp4);	
adder04: full_adder port map(
	a => A(3),
	b => temp4,
	cin => c3,
	sum => SD(3),
	cout => CB);


end Behavioral;

