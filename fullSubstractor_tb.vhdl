-- Testbench for fullSubstractor

library ieee;
use ieee.std_logic_1164.all;

entity fullSubstractor_tb is
end fullSubstractor_tb;

architecture test of fullSubstractor_tb is
	component fullSubstractor
	port (
		a: in std_ulogic;
		b: in std_ulogic;
		bin: in std_ulogic;

		d: out std_ulogic;
		bout: out std_ulogic
	);
	end component;

	signal a, b, bin, d, bout: std_ulogic;

begin
	uut: fullSubstractor port map (
		a => a,
		b => b,
		bin => bin,
		d => d,
		bout => bout
	);

	process begin
		a <= '0';
		b <= '0';
		bin <= '0';
		wait for 50 ns;

		a <= '0';
		b <= '0';
		bin <= '1';
		wait for 50 ns;

		a <= '0';
		b <= '1';
		bin <= '0';
		wait for 50 ns;

		a <= '0';
		b <= '1';
		bin <= '1';
		wait for 50 ns;

		a <= '1';
		b <= '0';
		bin <= '0';
		wait for 50 ns;

		a <= '1';
		b <= '0';
		bin <= '1';
		wait for 50 ns;

		a <= '1';
		b <= '1';
		bin <= '0';
		wait for 50 ns;

		a <= '1';
		b <= '1';
		bin <= '1';
		wait;
	end process;
end;