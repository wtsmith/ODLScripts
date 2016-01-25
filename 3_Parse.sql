USE ODL;


-- Initial Filter to reduce table size.
DELETE FROM ODL_raw WHERE SPACER NOT IN ('A1-D', 'A1-S', 'A5-S', 'A5-D', 'A8-S', 'CU-D', 'ZF-D', 'ZF-S', 'SS-D', 'OF-S');

UPDATE odl_raw 
SET MPC_parsed_ltsize = 
	CASE
		WHEN mpc RLIKE  '^.*1/4[^"]?[_| ]?L[ite]?.*$'  THEN '1/4'
		WHEN mpc RLIKE  '^.*1/2[^"]?[_| ]?L[ite]?.*$'  THEN '1/2'
		WHEN mpc RLIKE  '^.*3/4[^"]?[_| ]?L[ite]?.*$'  THEN '3/4'
		WHEN mpc RLIKE  '^.*Full[^y]?[_| ]?L[ite]?.*$'  THEN 'Full'
		ELSE NULL
	END;

UPDATE odl_raw 
SET MPC_parsed_ltsize = 
	CASE
		WHEN mpc RLIKE  '^.*Quarter[_| ]?L[ite]?.*$' AND mpc NOT RLIKE '.*Three Quarter.*' THEN '1/4'
		WHEN mpc RLIKE  '^.*Half[^"][_| ]?L[ite]?.*$'  THEN '1/2'
		WHEN mpc RLIKE  '^.*Three[ ]?Quarter[^"][_| ]?L[ite]?.*$'  THEN '3/4'
		WHEN mpc RLIKE  '^.*Full[^y][_| ]?Lite.*$'  THEN 'Full'
		ELSE NULL
	END
WHERE mpc_parsed_ltsize IS NULL;

UPDATE odl_raw 
SET MPC_parsed_ltsize = 'Full'
		WHERE mpc RLIKE  '^.*FL[ite]?.*$' AND mpc_parsed_ltsize IS NULL;

-- the following four are necessary prior to the table join.
UPDATE ODL_Raw SET 
	Gap_Width_Str1 = ROUND(SUBSTRING_INDEX(SUBSTRING_INDEX(Gap_Width_Raw, ' ', 1), '(', 1),3),
	Gap_Width_Str2 = ROUND(SUBSTRING_INDEX(SUBSTRING_INDEX(Gap_Width_Raw, ' ', -1), '(', 1),3)
WHERE Gap_Width_Raw LIKE '% %';

UPDATE ODL_Raw SET 
	Gap_Width_Str1 = ROUND(Gap_Width_Raw,3)
WHERE Gap_Width_Raw NOT LIKE '% %';

UPDATE ODL_Raw SET Gap_Width_Str2 = 0 WHERE Gap_Width_Str2 IS NULL;

-- -------Boundary before dumping and joining to get Glass Type, Subgroup, and stuff form Decoder Ring----

	
-- DELETE FROM ODL_Raw WHERE Glass_Type IS NULL;

UPDATE ODL_Raw SET 
	Low_E_Str1 = ROUND(SUBSTRING_INDEX(SUBSTRING_INDEX(Low_E_Raw, ',', 1), '(', 1),4),
	Low_E_Str2 = LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(Low_E_Raw, ',', 1), '(', -1),1)
WHERE Low_E_Raw NOT LIKE '% %';

UPDATE ODL_Raw SET
	Low_E_Str1 = ROUND(SUBSTRING_INDEX(SUBSTRING_INDEX(Low_E_Raw, ' ', 1), '(', 1),4),
	Low_E_Str2 = LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(Low_E_Raw, ' ', 1), '(', -1),1),
	Low_E_Str3 = ROUND(SUBSTRING_INDEX(SUBSTRING_INDEX(Low_E_Raw, ' ', -1), '(', 1),4),
	Low_E_Str4 = LEFT(SUBSTRING_INDEX(SUBSTRING_INDEX(Low_E_Raw, ' ', -1), '(', -1),1)
WHERE Low_E_Raw LIKE '% %';

-- Added July 30, 2015 by wts at request of Jim Allardyce to 'work around' missing Low E data.
-- See email from July 29th, 2015 for functional spec.
UPDATE odl_raw SET Low_E_Str1 = 
	CASE 
		WHEN MPC RLIKE  '^.*CS ?73.*$'  OR MPC RLIKE '^.*Custom ?Select ?73.*$' OR MPC RLIKE '^.*E-?PS.*$' THEN 0.148
		WHEN MPC RLIKE  '^.*71/?38.*$' THEN 0.027
		WHEN MPC RLIKE '^.*C?270.*$' THEN 0.0367
		ELSE 0
	END
	WHERE Low_E_Raw = '' and GL = 2;
		
UPDATE ODL_Raw SET GAP_Fill_Str1 =
		CASE Gap_Fill 
		WHEN 'Fill 1: AIR (100)' THEN 'Air'
		WHEN 'Fill 1: AIR (100) Fill 2: AIR (100)' THEN 'Air'
		WHEN 'Fill 1: ARG/AIR (80/20)' THEN 'Arg'
		WHEN 'Fill 1: ARG/AIR (90/10)' THEN 'Arg'
		ELSE NULL
		END;

UPDATE ODL_Raw SET Manufacturer_Code = LEFT(CPD,3);

UPDATE ODL_Raw SET Manufacturer = 
	CASE Manufacturer_Code
		WHEN 'ADW' THEN 'Atrium'
		WHEN 'CHI' THEN 'Champion Windows, Inc.'
		WHEN 'CHW' THEN 'Champion Window & Patio Room Co.'
		WHEN 'CIL' THEN 'Clearview Industries'
		WHEN 'CRT' THEN 'Crest Doors'
		WHEN 'DUS' THEN 'Dusco-a licencee of Stanley Black & Decker'
		WHEN 'ELX' THEN 'Elixir Industries'
		WHEN 'HWD' THEN 'Hayfield Window & Door Co'
		WHEN 'JEL' THEN 'JELD-WEN'
		WHEN 'MIL' THEN 'Milgard Manufacturing'
		WHEN 'MIN' THEN 'Minnkota Windows'
		WHEN 'MLM' THEN 'Milliken Millwork, Inc.'
		WHEN 'MMI' THEN 'Merrill Millwork'
		WHEN 'NPC' THEN 'Plastpro Inc.'
		WHEN 'NSM' THEN 'North Star Manufacturing (London) Ltd'
		WHEN 'OKW' THEN 'OKNA Windows Co'
		WHEN 'OST' THEN 'Ostaco 2000 Windoors Inc.'
		WHEN 'OVP' THEN 'Oceanview Patio Doors Limited'
		WHEN 'PEL' THEN 'Pella'
		WHEN 'POW' THEN 'Pollard Windows'
		WHEN 'PRD' THEN 'ProVia Door'
		WHEN 'PWN' THEN 'Prestige Windows & Door Ltd'
		WHEN 'RES' THEN 'Novatech Patio Door Inc.'
		WHEN 'RES' THEN 'Novatech Patio Door, Inc.'
		WHEN 'RPT' THEN 'Royal Window & Door Profiles Royalplast Div'
		WHEN 'RSC' THEN 'Remodelers Supply'
		WHEN 'SBU' THEN 'Standard Doors Inc'
		WHEN 'SDL' THEN 'Sunview Patio Doors Ltd.'
		WHEN 'SGI' THEN 'Skyreach L&S Extrusions Copr'
		WHEN 'SIL' THEN 'Silver Line Building Products LLC'
		WHEN 'SNV' THEN 'Sunview Windows (Newco Building Supplies, Inc.)'
		WHEN 'SSL' THEN 'Strassburger Supplies Ltd.'
		WHEN 'STN' THEN 'Masonite International'
		WHEN 'TBP' THEN 'Taylor Entrance Systems'
		WHEN 'THC' THEN 'Therma-Tru Corporation'
		WHEN 'TRI' THEN 'Thermal Industries Inc.'
		WHEN 'TTC' THEN 'Tru Tech Corporation'
		WHEN 'VIM' THEN 'Vinylmax Windows'
		WHEN 'VYW' THEN 'Vytek Corporation'
		WHEN 'WCY' THEN 'Window City Industries'
		WHEN 'WCY' THEN 'Window City Industries, Inc.'
		WHEN 'BYB' THEN 'Bayer Built Woodworks'
		WHEN 'PBH' THEN 'ProBuild Holdings'
		ELSE NULL
	END;
	
UPDATE ODL_Raw SET Spacer_Name =
	CASE Spacer
		WHEN 'A1-S' THEN '<A1-S> Box Alum'
		WHEN 'CU-D' THEN '<CU-D> Intercept'
		WHEN 'A8-S' THEN '<A8-S> Duraseal'
		WHEN 'A5-S' THEN '<A5-S> Decoseal'
		WHEN 'A5-D' THEN '<A5-D> Decoseal with Poly'
		WHEN 'A1-D' THEN '<A1-D> Dual Sealed Box Alum'
		WHEN 'SS-D' THEN '<SS-D> Cardinal XL-Edge'
		WHEN 'ZF-D' THEN '<ZF-D> Superspacer'
		WHEN 'ZF-S' THEN '<ZF-S> Superspacer'
		WHEN 'OF-S' THEN '<OF-S> Superspacer'
		ELSE 'n/a'
	END;
	
UPDATE ODL_Raw SET NFRC_Compliant = 
	CASE Spacer
		WHEN 'A1-S' THEN 'No'
		WHEN 'A1-D' THEN 'No'
		ELSE 'Yes'
	END;
	
UPDATE ODL_Raw SET NFRC_Code = SUBSTRING_INDEX(CPD, '-', 3);

UPDATE ODL_Raw SET Series_Code =  SUBSTRING_INDEX(SUBSTRING_INDEX(CPD, '-', 3), '-', -2);

UPDATE ODL_Raw O
	INNER JOIN NFRC_Code_Series N ON O.NFRC_Code = N.NFRC_Code
	SET O.Series = N.Series,  O.Family = N.Family;

UPDATE ODL_Raw SET Series_Concat = CONCAT(Series,' <', Series_Code, '>');
	
UPDATE ODL_Raw SET Low_E_Concat =
	CONCAT(Low_E_str1, '(', Low_E_Str2, ') ');
	
UPDATE ODL_Raw SET Low_E_Concat = 'None' WHERE Low_E_Str1 = ' ';
	
UPDATE ODL_Raw SET Divider = NULL WHERE Divider = -1;

UPDATE ODL_Raw SET MPC = REPLACE(MPC, ',', ' ');

	-- add a space to CPD for readability and line break in browser view.
UPDATE ODL_Raw SET CPD = CONCAT(SUBSTRING_INDEX(CPD, '-', 3), ' ',SUBSTRING_INDEX(CPD, '-', -2));

-- Get rid of quotes and commas
UPDATE odl_raw SET MPC = replace( replace(MPC, ',', ''), '"', '' );
UPDATE odl_raw SET Series = replace( replace(Series, ',', ''), '"', '' );
UPDATE odl_raw SET Series_Concat = replace( replace(Series_Concat, ',', ''), '"', '' );
UPDATE odl_raw SET Subgroup = trim(Subgroup);

