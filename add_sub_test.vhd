--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:44:26 03/12/2024
-- Design Name:   
-- Module Name:   /home/student/Desktop/13000122080/add_sub/add_sub_test.vhd
-- Project Name:  add_sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: add_sub
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
 
ENTITY add_sub_test IS
END add_sub_test;
 
ARCHITECTURE behavior OF add_sub_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT add_sub
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         SD : OUT  std_logic_vector(3 downto 0);
         CB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic := '0';

 	--Outputs
   signal SD : std_logic_vector(3 downto 0);
   signal CB : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: add_sub PORT MAP (
          A => A,
          B => B,
          C => C,
          SD => SD,
          CB => CB
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      A <= "0000";
		B <= "0001";
		C <= '0';
		wait for 1 ps;
		A <= "0000";
		B <= "0001";
		C <= '1';
		wait for 1 ps;
		A <= "0000";
		B <= "0101";
		C <= '0';
		wait for 1 ps;
		A <= "0100";
		B <= "0011";
		C <= '1';
		wait for 1 ps;
		A <= "1000";
		B <= "0001";
		C <= '0';
		wait for 1 ps;
   end process;

END;
