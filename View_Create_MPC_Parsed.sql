-- Splits the MPC field so that we can figure out which fraction is the most likely the correct one.

CREATE VIEW MPC_Parsed AS
	SELECT DISTINCT
		odl_raw.CPD,
		odl_raw.MPC,
		odl_raw.MPC_Slash_Cnt,
		IF(MPC RLIKE '^.*(Full| FL ?).*$', 'Full',  'n/a') AS Full,
		CONCAT(RIGHT(SUBSTRING_INDEX(MPC, '/', 1),1),  '/', LEFT(SUBSTRING_INDEX(MPC, '/', -(LENGTH(MPC) - LENGTH(REPLACE(MPC, '/', '')))),1)) AS Fraction1,
		CONCAT(RIGHT(SUBSTRING_INDEX(MPC, '/', 2),1),  '/', LEFT(SUBSTRING_INDEX(MPC, '/', -(LENGTH(MPC) - LENGTH(REPLACE(MPC, '/', '')))+1),1)) AS Fraction2,
		CONCAT(RIGHT(SUBSTRING_INDEX(MPC, '/', 3),1),  '/', LEFT(SUBSTRING_INDEX(MPC, '/', -(LENGTH(MPC) - LENGTH(REPLACE(MPC, '/', '')))+2),1)) AS Fraction3,
		CONCAT(RIGHT(SUBSTRING_INDEX(MPC, '/', 4),1),  '/', LEFT(SUBSTRING_INDEX(MPC, '/', -(LENGTH(MPC) - LENGTH(REPLACE(MPC, '/', '')))+3),1)) AS Fraction4,
		CONCAT(RIGHT(SUBSTRING_INDEX(MPC, '/', 5),1),  '/', LEFT(SUBSTRING_INDEX(MPC, '/', -(LENGTH(MPC) - LENGTH(REPLACE(MPC, '/', '')))+4),1)) AS Fraction5,
		CONCAT(RIGHT(SUBSTRING_INDEX(MPC, '/', 6),1),  '/', LEFT(SUBSTRING_INDEX(MPC, '/', -(LENGTH(MPC) - LENGTH(REPLACE(MPC, '/', '')))+5),1)) AS Fraction6,
		CONCAT(RIGHT(SUBSTRING_INDEX(MPC, '/', 7),1),  '/', LEFT(SUBSTRING_INDEX(MPC, '/', -(LENGTH(MPC) - LENGTH(REPLACE(MPC, '/', '')))+6),1)) AS Fraction7,
		CONCAT(RIGHT(SUBSTRING_INDEX(MPC, '/', 8),1),  '/', LEFT(SUBSTRING_INDEX(MPC, '/', -(LENGTH(MPC) - LENGTH(REPLACE(MPC, '/', '')))+7),1)) AS Fraction8
FROM odl_raw;
