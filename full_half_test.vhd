--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:14:11 03/05/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122080/fulladderusinghalfadder/full_half_test.vhd
-- Project Name:  fulladderusinghalfadder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder_using_half_adder
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
 
ENTITY full_half_test IS
END full_half_test;
 
ARCHITECTURE behavior OF full_half_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder_using_half_adder
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         s : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_using_half_adder PORT MAP (
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
      x <= '0';
		y <= '0';
		z <= '0';
		wait for 1 ps;
		x <= '0';
		y <= '0';
		z <= '1';
		wait for 1 ps;
		x <= '0';
		y <= '1';
		z <= '0';
		wait for 1 ps;
		x <= '0';
		y <= '1';
		z <= '1';
		wait for 1 ps;
		x <= '1';
		y <= '0';
		z <= '0';
		wait for 1 ps;
		x <= '1';
		y <= '0';
		z <= '1';
		wait for 1 ps;
		x <= '1';
		y <= '1';
		z <= '0';
		wait for 1 ps;
		x <= '1';
		y <= '1';
		z <= '1';
		wait for 1 ps;
   end process;

END;
