-- Version 2 Oct 10th, 2013.  
-- 		Had to modify all 'IN' statements that were dealing with numbers.  IN's evidently don't work with floats.  ... and may not work with integers
-- Version 2.1
--		Added two new INSERT Queries to account for Jims new Overall spreadsheet.  'Overall_Wes_13Nov27th.xlxs.'
-- Version 2.2
--		Modified Queries 15 & 16 to change an = to an RLIKE.  This was to account for an apostrophe in the string contents of Subgroup.

USE ODL;

DROP TEMPORARY TABLE IF EXISTS UIDs_For_Keep;
CREATE TEMPORARY TABLE UIDs_For_Keep (
	UID	INT,
	Index UID (UID));

-- Query 1 Modified Apr 1 2015.  Using OOverall_15mar10th.xlsx'
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Standard Doorlite Frame, rectangles'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.22 AND Gap_Width_Str1 <= 0.28 -- using 0.03 as window tolerance for all Gap Widths
		AND Spacer = 'A1-S'
		AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full')
		AND Low_E_Str1 = 0);

-- Query 2
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Standard Doorlite Frame, rectangles'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.72 AND Gap_Width_Str1 <= 0.78 -- using 0.03 as window tolerance for all Gap Widths
		AND Spacer = 'A1-S'
		AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full')
		AND Low_E_Str1 = 0);

-- Query 3
INSERT INTO UIDs_For_Keep (		
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Standard Doorlite Frame, rectangles'
		AND GL = 2
		AND Gap_Width_Str1 >=0.26 AND Gap_Width_Str1 <=0.32 
		AND Spacer = 'CU-D'
		AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));

-- Query 4
INSERT INTO UIDs_For_Keep (		
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Standard Doorlite Frame, rectangles'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.728 AND Gap_Width_Str1 <= 0.788 
		AND Spacer = 'CU-D'
		AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));
	
-- Query 5
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Standard Doorlite Frame, rectangles'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.728 AND Gap_Width_Str1 <= 0.788 
		AND Spacer = 'CU-D'
		AND MPC_Parsed_LtSize IN ('3/4', 'Full')
		AND (Low_E_Str1 = 0.041 OR Low_E_Str1 = 0.037));
		
-- Query 6
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Standard Doorlite Frame, rectangles'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.728 AND Gap_Width_Str1 <= 0.788
		AND Spacer = 'ZF-D'
		AND MPC_Parsed_LtSize = 'Full'
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));
		
-- Query 7
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Standard Doorlite Frame, rectangles'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.728 AND Gap_Width_Str1 <= 0.788
		AND Spacer = 'SS-D'
		AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full')
		AND (Low_E_Str1 = 0.037 OR Low_E_Str1 = 0.041));
	
-- Query 8
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Ovals & Roundtops'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.22 AND Gap_Width_Str1 <= 0.28
		AND Spacer = 'A8-S'
		AND MPC_Parsed_LtSize IN ('1/4', '1/2', 'Full')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));
		
-- Query 9
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Ovals & Roundtops'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.622 AND Gap_Width_Str1 <= 0.628
		AND Spacer = 'A8-S'
		AND MPC_Parsed_LtSize = '3/4'
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));
		
-- Query 10
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Ovals & Roundtops'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.72 AND Gap_Width_Str1 <= 0.78
		AND Spacer = 'A8-S'
		AND MPC_Parsed_LtSize IN ('1/4', '1/2')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));
		
-- Query 11
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Simulated Divided Lite'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.497 AND Gap_Width_Str1 <= 0.503
		AND Spacer = 'CU-D'
		AND MPC_Parsed_LtSize IN ('3/4', 'Full')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));
		
-- Query 12
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Simulated Divided Lite'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.810 AND Gap_Width_Str1 <= 0.816
		AND Spacer = 'A1-S'
		AND MPC_Parsed_LtSize = '1/4'
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));
		
-- Query 13
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Craftsman'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.72 AND Gap_Width_Str1 <= 0.78
		AND Spacer = 'A1-S'
		AND MPC_Parsed_LtSize IN ('1/4', 'Full')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));

-- Query 14
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Craftsman'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.783 AND Gap_Width_Str1 <= 0.843
		AND Spacer = 'A1-S'
		AND MPC_Parsed_LtSize = 'Full'
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));

-- Query 15
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Deco, Rectangular Frame'
		AND GL = 3
		AND Gap_Width_Str1 >= 0.310 AND Gap_Width_Str1 <= 0.316
		AND Spacer = 'A5-S'
		AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.141 OR Low_E_Str1 = 0.037));

-- Query 16
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Deco, Rectangular Frame'
		AND GL = 3
		AND Gap_Width_Str1 >= 0.310 AND Gap_Width_Str1 <= 0.316
		AND Spacer = 'A1-D'
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.141 OR Low_E_Str1 = 0.037));

-- Query 17
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Deco, Rectangular Frame'
		AND GL = 3
		AND Gap_Width_Str1 >= 0.310 AND Gap_Width_Str1 <= 0.316
		AND Spacer IN ('A1-D', 'ZF-D')
		AND MPC_Parsed_LtSize = 'Full'
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.141 OR Low_E_Str1 = 0.037));
		
-- Query 18
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Oval Deco'
		AND GL = 3
		AND Gap_Width_Str1 >= 0.240 AND Gap_Width_Str1 <= 0.246 
		AND Spacer = 'A5-S'
		AND MPC_Parsed_LtSize = '3/4'
		AND Low_E_Str1 = 0);
		
-- Query 19
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Oval Deco'
		AND GL = 3
		AND Gap_Width_Str1 >= 0.310 AND Gap_Width_Str1 <= 0.316 
		AND Spacer = 'A5-S'
		AND MPC_Parsed_LtSize = '1/2'
		AND Low_E_Str1 = 0);
		
-- Query 20
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Severe Weather Deco'
		AND GL = 3
		AND Gap_Width_Str1 >= 0.202 AND Gap_Width_Str1 <= 0.208
		AND Spacer = 'A5-D'
		AND Low_E_Str1 = 0);

-- Query 21
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup RLIKE '^Severe Weather 1-Lites.*$'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.497 AND Gap_Width_Str1 <= 0.503
		AND Spacer = 'A1-D'
		AND Low_E_Str1 = 0);	

-- Query 22
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup RLIKE '^Severe Weather 1-Lites.*$'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.506 AND Gap_Width_Str1 <= 0.512
		AND Spacer = 'CU-D'
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.027));				

-- Query 23
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup = 'Severe Weather Internal Wrought Iron'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.532 AND Gap_Width_Str1 <= 0.538
		AND Spacer = 'A5-D'
		AND Low_E_Str1 = 0);

-- Query 24
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup LIKE 'Severe Weather Blind'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.810 AND Gap_Width_Str1 <= 0.816
		AND Spacer = 'CU-D'
		AND MPC_Parsed_LtSize IN ('1/2', 'Full')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.027));	
				
-- Query 25
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup LIKE 'Dual Glazed Blind'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.810 AND Gap_Width_Str1 <= 0.816
		AND Spacer = 'CU-D'
		AND MPC_Parsed_LtSize IN ('1/2', '3/4', 'Full')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.037));	
				
-- Query 26
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup LIKE 'Triple Glazed Blind'
		AND GL = 3
		AND Gap_Width_Str1 >= 0.497 AND Gap_Width_Str1 <= 0.503
		AND Spacer = 'CU-D'
		AND MPC_Parsed_LtSize IN ('1/2', 'Full')
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));	
		
-- Query 27
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup LIKE 'Internal Wrought Iron'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.72 AND Gap_Width_Str1 <= 0.78
		AND Spacer = 'A5-S'
		AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4')
		AND Low_E_Str1 = 0);

-- Query 28
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup LIKE 'Internal Wrought Iron%'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.72 AND Gap_Width_Str1 <= 0.78
		AND Spacer = 'A1-D'
		AND MPC_Parsed_LtSize = 'Full'
		AND Low_E_Str1 = 0);		
		
-- Query 29
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup LIKE 'External Wrought Iron'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.72 AND Gap_Width_Str1 <= 0.78
		AND Spacer = 'CU-D'
		AND MPC_Parsed_LtSize IN ('3/4', 'Full')
		AND Low_E_Str1 = 0.148);
		
-- Query 30
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup LIKE 'Vent, 22x36'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.47 AND Gap_Width_Str1 <=  0.53
		AND Spacer = 'A8-S'
		AND MPC_Parsed_LtSize = '1/2'
		AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148));

-- Query 25 
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup LIKE 'Dual Glazed Blind'
		AND GL = 2
				AND Gap_Width_Str1 >= 0.72 AND Gap_Width_Str1 <= 0.78
		AND Spacer = 'A1-S'
		AND MPC_Parsed_LtSize = 'Full');

-- Query 26
INSERT INTO UIDs_For_Keep (
SELECT UID FROM odl_raw WHERE
	Subgroup LIKE 'Dual Glazed Blind'
		AND GL = 2
		AND Gap_Width_Str1 >= 0.755 AND 0.761 
		AND Spacer = 'CU-D'
		AND MPC_Parsed_LtSize = 'Full');


-- -------------------------------------------------------------------------
-- Create new table odl_filtered based on built up info from UID's for keep.
-- -------------------------------------------------------------------------
DROP TABLE IF EXISTS ODL_Filtered;
CREATE TABLE ODL_Filtered AS (
	SELECT DISTINCT * FROM odl_raw r
		WHERE r.UID IN (
			SELECT k.UID FROM UIDs_For_Keep k)
		ORDER BY CPD ASC	
	);

ALTER TABLE `odl_filtered`
	ADD COLUMN `One`  tinyint(1) UNSIGNED NULL DEFAULT 1 AFTER `UID`;

ALTER TABLE odl_filtered
	ADD COLUMN `UIDFiltered`  int UNSIGNED NULL AUTO_INCREMENT AFTER `One`
	ADD PRIMARY KEY (`UID`),
	ADD INDEX `UID` (`UID`),
	ADD INDEX `CPD` (`CPD`) ;

UPDATE odl_filtered SET MPC = replace( replace(MPC, ',', ''), '"', '' );
UPDATE odl_filtered SET Series = replace( replace(Series, ',', ''), '"', '' );
UPDATE odl_filtered SET Series_Concat = replace( replace(Series_Concat, ',', ''), '"', '' );
UPDATE odl_filtered SET MPC = REPLACE(MPC, ',', ' ');
