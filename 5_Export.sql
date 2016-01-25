USE ODL;

SELECT * 
INTO OUTFILE 'D:\\OneDrive\\Personal\\MSC\\ODL\\DataRepository\\Filtered_Combined.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
FROM ODL_Filtered;


SELECT * 
INTO OUTFILE 'D:\\Users\\WTS\\Documents\\Personal\\Moonlighting\\MSC\\ODL\\DataRepository\\Filtered_Combined.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
FROM ODL_Filtered;

