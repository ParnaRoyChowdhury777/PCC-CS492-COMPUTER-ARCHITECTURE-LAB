--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:53:56 03/05/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122080/four_bit_adder/four_bit_adder_test.vhd
-- Project Name:  four_bit_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY four_bit_adder_test IS
END four_bit_adder_test;
 
ARCHITECTURE behavior OF four_bit_adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_adder
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         y : IN  std_logic_vector(3 downto 0);
         z : IN  std_logic;
         s : OUT  std_logic_vector(3 downto 0);
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');
   signal y : std_logic_vector(3 downto 0) := (others => '0');
   signal z : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_adder PORT MAP (
          x => x,
          y => y,
          z => z,
          s => s,
          c => c
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
     x<="0000";
	  y<="1111";
	  z<='0';
	  wait for 1 ps;
	  x<="0000";
	  y<="1111";
	  z<='1';
	  wait for 1 ps;
	  x<="0001";
	  y<="1110";
	  z<='0';
	  wait for 1 ps;
	  x<="0000";
	  y<="1001";
	  z<='1';
	  wait for 1 ps;
	  x<="0010";
	  y<="1000";
	  z<='0';
	  wait for 1 ps;
   end process;

END;
