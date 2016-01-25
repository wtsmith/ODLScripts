USE ODL;

-- ----------------------------------------------------------------
-- Run comparison.

SELECT MIN(table_id) AS Status, cpd AS cpd, manufacturer AS Manufacturer, MPC AS MPC
FROM
 (

	SELECT 'Removed' as table_id, o.cpd AS cpd, manufacturer AS Manufacturer, MPC AS MPC
	FROM odl_filtered_old AS o
	UNION ALL
	SELECT 'Added' as table_id, n.cpd AS cpd, manufacturer AS Manufacturer, MPC AS MPC
	FROM odl_filtered AS n

)   AS alias_table
GROUP BY cpd
HAVING COUNT(cpd) = 1
ORDER BY Status ASC, cpd ASC
INTO OUTFILE 'D:\\OneDrive\\Personal\\MSC\\ODL\\DataRepository\\New_CPDs.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
;

SELECT MIN(table_id) AS Status, cpd AS cpd, manufacturer AS Manufacturer, MPC AS MPC
FROM
 (

	SELECT 'Removed' as table_id, o.cpd AS cpd, manufacturer AS Manufacturer, MPC AS MPC
	FROM odl_filtered_old AS o
	UNION ALL
	SELECT 'Added' as table_id, n.cpd AS cpd, manufacturer AS Manufacturer, MPC AS MPC
	FROM odl_filtered AS n

)   AS alias_table
GROUP BY cpd
HAVING COUNT(cpd) = 1
ORDER BY Status ASC, cpd ASC
INTO OUTFILE 'D:\\Users\\WTS\\Documents\\Personal\\Moonlighting\\MSC\\ODL\\DataRepository\\New_CPDs.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
;