USE ODL;

-- The below is for initial loading.
--  Must comment out the following statment on the initial load, because ODL_Raw doesn't exist yet.
/*
DROP TABLE IF EXISTS ODL_Old;
CREATE TABLE IF NOT EXISTS ODL_Old AS SELECT * FROM ODL_Filtered;
ALTER TABLE ODL_old ADD INDEX CPD (CPD);
*/

-- ----------------------------------------------------------------
-- Move existing table to odl_filtered_old
-- ----------------------------------------------------------------

DROP TABLE IF EXISTS odl_filtered_old;
CREATE TABLE odl_filtered_old AS
	SELECT * FROM odl_filtered;
	
-- ----------------------------------------------------------------

DROP TABLE IF EXISTS ODL_Raw;
CREATE TABLE IF NOT EXISTS ODL_Raw (
	CPD									VARCHAR(255), 
	Group_ID						VARCHAR(255),
	MPC									VARCHAR(255), 
	Door_Jamb						VARCHAR(17), 
	U_Factor						FLOAT(6,3), 
	SHGC								FLOAT(6,3),
	VT									FLOAT(6,3), 
	CR									VARCHAR(255), 
	GL									TINYINT UNSIGNED, 
	Low_E_Raw						VARCHAR(255), 
	Gap_Width_Raw				VARCHAR(255), 
	Spacer							VARCHAR(255), 
	Gap_Fill						VARCHAR(255),
	Grid								CHAR(1), 
	Divider							DECIMAL(5,2), 
	Tint								VARCHAR(255),
	Low_E_Str1					FLOAT(6,4),
	Low_E_Str2					VARCHAR(4),
	Low_E_Str3					FLOAT(6,4),
	Low_E_Str4					VARCHAR(4),
	Gap_Width_Str1			DECIMAL(6,3),
	Gap_Width_Str2			DECIMAL(6,3),
	GAP_Fill_Str1				VARCHAR(255),
	Manufacturer_Code		CHAR(3),
	Manufacturer				VARCHAR(255),
	NFRC_Code						VARCHAR(63),
	Door_Type						VARCHAR(255),
	Spacer_Name					VARCHAR(255),
	Series							VARCHAR(1023),
	Series_Code					VARCHAR(15),
	Series_Concat				VARCHAR(1023),
	DoorWindow					VARCHAR(255),
	Type_of_Glass				VARCHAR(255),
	Low_E_Concat				VARCHAR(1023),
	MPC_Slash_Cnt 			TINYINT UNSIGNED,
	MPC_Parsed_LtSize		VARCHAR(63),
	LtSize_Concat				VARCHAR(63),
	Glass_Type					VARCHAR(255),
	DoorGlass_Frame			VARCHAR(255),
	Subgroup						VARCHAR(255),
	Door_Lite_Size_14		CHAR(1),
	Door_Lite_Size_12		CHAR(1),
	Door_Lite_Size_34			CHAR(1),
	Door_Lite_Size_Full			CHAR(1),
	Side_Lite_Size_14			CHAR(1),
	Side_Lite_Size_12			CHAR(1),
	Side_Lite_Size_34			CHAR(1),
	Side_Lite_Size_Full		CHAR(1),
	Family								VARCHAR(255),
	NFRC_Compliant				VARCHAR(7),
	ES_Northern					TINYINT UNSIGNED DEFAULT 0,
	ES_NorthCentral					TINYINT UNSIGNED DEFAULT 0,
	ES_SouthCentral					TINYINT UNSIGNED DEFAULT 0,
	ES_Southern					TINYINT UNSIGNED DEFAULT 0,
	es_zones						INT UNSIGNED DEFAULT 0,
	UID		INT NOT NULL Auto_Increment,
	PRIMARY KEY 	(CPD),
	INDEX CPD (CPD),
	INDEX UID (UID)
	)
	ENGINE MyIsam;


-- Below table is used only when updating from Jim A's spreadsheet.  
-- It pulls data from March 13th, exel sheet from Jim.
--  Had to use excel export to get strings to line up last time.  CSV import wasn't working.
/*
DROP TABLE IF EXISTS decoder_ring;
CREATE TABLE decoder_ring (
	decoder_ring_id		INT NOT NULL AUTO_INCREMENT,
	Glass_Type			VARCHAR(255),
	GL					TINYINT,
	Subgroup				VARCHAR(255),
	Gap_Width_Str1		FLOAT(6,3),
	Gap_Width_Str2		FLOAT(6,3),
	Spacer							VARCHAR(31),
	Door_Lite_Size_14		CHAR(1),
	Door_Lite_Size_12		CHAR(1),
	Door_Lite_Size_34		CHAR(1),
	Door_Lite_Size_Full		CHAR(1),
	PRIMARY KEY (decoder_ring_id))
	ENGINE MyIsam;
	
	LOAD DATA LOCAL INFILE 'D:\\OneDrive\\Personal\\MSC\\ODL\\Lookup_Tables\\Decoder_Ring_Apr1_2015.csv' INTO TABLE decoder_ring 
		fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines 
		(Glass_Type, GL, Subgroup, Gap_Width_Str1, Gap_Width_Str2, Spacer, Door_Lite_Size_14, Door_Lite_Size_12, Door_Lite_Size_34, Door_Lite_Size_Full);
*/		
		
