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
	PRIMARY KEY (UID),
	Index UID (UID));


-- New method of creating INSERT Statements using excel
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.25 AND Spacer = 'A1-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.25 AND Spacer = 'A1-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'A1-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'A1-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.29 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.29 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', '3/4', 'Full') AND (Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0.0366 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', '3/4', 'Full') AND (Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0.0366 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', '3/4', 'Full') AND (Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0.0366 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', 'poo', 'Full') AND (Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0.0366 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', 'poo', 'Full') AND (Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0.0366 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', 'poo', 'Full') AND (Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0.0366 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'OF-S' AND MPC_Parsed_LtSize IN ('poo', 'poo', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'SS-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0.0366 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity doorglass, Rectangles' AND GL = 2 AND Gap_Width_Str1 = 0.758 AND Spacer = 'SS-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0.0366 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity glass, Ovals & Round Tops' AND GL = 2 AND Gap_Width_Str1 = 0.25 AND Spacer = 'A8-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity glass, Ovals & Round Tops' AND GL = 2 AND Gap_Width_Str1 = 0.25 AND Spacer = 'A8-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity glass, Ovals & Round Tops' AND GL = 2 AND Gap_Width_Str1 = 0.625 AND Spacer = 'A8-S' AND MPC_Parsed_LtSize IN ('poo', 'poo', '3/4', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity glass, Ovals & Round Tops' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'A8-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity glass, Ovals & Round Tops' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'A8-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Commodity glass, Ovals & Round Tops' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'A8-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Simulated Divided Lite' AND GL = 2 AND Gap_Width_Str1 = 0.5 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Simulated Divided Lite' AND GL = 2 AND Gap_Width_Str1 = 0.813 AND Spacer = 'A1-S' AND MPC_Parsed_LtSize IN ('1/4', 'poo', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Craftsman' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'A1-S' AND MPC_Parsed_LtSize IN ('poo', 'poo', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Craftsman' AND GL = 2 AND Gap_Width_Str1 = 0.813 AND Spacer = 'A1-S' AND MPC_Parsed_LtSize IN ('poo', 'poo', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Deco Rectangular Frame' AND GL = 3 AND Gap_Width_Str1 = 0.313 AND Spacer = 'A5-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Deco Rectangular Frame' AND GL = 3 AND Gap_Width_Str1 = 0.313 AND Spacer = 'A1-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Deco Rectangular Frame' AND GL = 3 AND Gap_Width_Str1 = 0.313 AND Spacer = 'A1-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Deco Rectangular Frame' AND GL = 3 AND Gap_Width_Str1 = 0.313 AND Spacer = 'ZF-S' AND MPC_Parsed_LtSize IN ('poo', 'poo', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Oval Deco' AND GL = 3 AND Gap_Width_Str1 = 0.243 AND Spacer = 'A5-S' AND MPC_Parsed_LtSize IN ('poo', 'poo', '3/4', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Oval Deco' AND GL = 3 AND Gap_Width_Str1 = 0.313 AND Spacer = 'A5-S' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Severe Weather Deco' AND GL = 3 AND Gap_Width_Str1 = 0.205 AND Spacer = 'A5-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Severe Weather 1-Lites, GBGs' AND GL = 2 AND Gap_Width_Str1 = 0.509 AND Spacer = 'A1-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Severe Weather 1-Lites, GBGs' AND GL = 2 AND Gap_Width_Str1 = 0.509 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Severe Weather 1-Lites, GBGs' AND GL = 2 AND Gap_Width_Str1 = 0.509 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Severe Weather 1-Lites, GBGs' AND GL = 2 AND Gap_Width_Str1 = 0.509 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Severe Weather Internal Wrought Iron' AND GL = 2 AND Gap_Width_Str1 = 0.535 AND Spacer = 'A5-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Severe Weather Blind' AND GL = 2 AND Gap_Width_Str1 = 0.813 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Severe Weather Blind' AND GL = 2 AND Gap_Width_Str1 = 0.813 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Dual Glazed Blind' AND GL = 2 AND Gap_Width_Str1 = 0.813 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', '1/2', '3/4', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.0367 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Triple Glazed Blind' AND GL = 3 AND Gap_Width_Str1 = 0.5 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Triple Glazed Blind' AND GL = 3 AND Gap_Width_Str1 = 0.5 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Triple Glazed Blind' AND GL = 3 AND Gap_Width_Str1 = 0.5 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Triple Glazed Blind' AND GL = 3 AND Gap_Width_Str1 = 0.5 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Internal Wrought Iron' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'A5-S' AND MPC_Parsed_LtSize IN ('1/4', '1/2', '3/4', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Internal Wrought Iron' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'A1-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', 'poo', 'Full') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'External Wrought Iron' AND GL = 2 AND Gap_Width_Str1 = 0.75 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', 'poo', '3/4', 'Full') AND (Low_E_Str1 = 0.148 OR Low_E_Str1 = 0 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Vent, 22x36' AND GL = 2 AND Gap_Width_Str1 = 0.5 AND Spacer = 'A8-S' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Vent, 22x36' AND GL = 2 AND Gap_Width_Str1 = 0.5 AND Spacer = 'A1-S' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Vent, 22x36' AND GL = 2 AND Gap_Width_Str1 = 0.5 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));
REPLACE INTO UIDs_For_Keep ( SELECT UID FROM odl_raw WHERE Subgroup = 'Vent, 22x36' AND GL = 2 AND Gap_Width_Str1 = 0.5 AND Spacer = 'CU-D' AND MPC_Parsed_LtSize IN ('poo', '1/2', 'poo', 'poo') AND (Low_E_Str1 = 0 OR Low_E_Str1 = 0.148 OR Low_E_Str1 = 0.1476));


-- -------------------------------------------------------------------------
-- Create new table odl_filtered based on built up info from UID's for keep.
-- -------------------------------------------------------------------------
DROP TABLE IF EXISTS ODL_Filtered;
CREATE TABLE ODL_Filtered AS (
	SELECT DISTINCT * FROM odl_raw r
		WHERE r.UID IN (
			SELECT k.UID FROM UIDs_For_Keep k)
		ORDER BY -- CPD asc ; -- treating numbers as numbers and text as text
			substring_index(cpd, '-', 1),
			substring_index(substring_index(cpd, '-', 2), '-', -1),
			cast(substring_index(substring_index(cpd, ' ', 1), '-', -1) as unsigned int),
			cast(substring_index(substring_index(cpd, ' ', -1), '-', 1) as unsigned int),
			cast(substring_index(substring_index(cpd, ' ', -1), '-', -1) as unsigned int)	
		);
		
ALTER TABLE odl_filtered
	ADD COLUMN One  tinyint(1) UNSIGNED NULL DEFAULT 1 AFTER UID,	
	ADD COLUMN Row	int	UNSIGNED NOT NULL DEFAULT 0 AFTER One,
	ADD PRIMARY KEY (CPD);
	
UPDATE odl_filtered  -- Adds row number for ranking purposes.
	JOIN (SELECT @curRow :=  0)t1
	SET Row = @curRow := @curRow + 1;

UPDATE odl_filtered SET MPC = replace( replace(MPC, ',', ''), '"', '' );
UPDATE odl_filtered SET Series = replace( replace(Series, ',', ''), '"', '' );
UPDATE odl_filtered SET Series_Concat = replace( replace(Series_Concat, ',', ''), '"', '' );
UPDATE odl_filtered SET MPC = REPLACE(MPC, ',', ' ');
