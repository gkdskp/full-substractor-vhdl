-- CS234 Project
-- Submitted by:
-- 	Akshay Raj PB
--  Gokul K

library ieee;
use ieee.std_logic_1164.all;

entity fullSubstractor is
	port (
		a: in std_ulogic;
		b: in std_ulogic;
		bin: in std_ulogic;

		d: out std_ulogic;
		bout: out std_ulogic
	);
end fullSubstractor;

architecture behave of fullSubstractor is
begin
	d <= a xor b xor bin;
	bout <= ((not a and b) or (b and bin) or (not a and bin));
end behave;