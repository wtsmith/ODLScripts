:: Merge Data and dump to CSV.

path C:\Program Files\MySQL\MySQL Server 5.5\bin

IF EXIST D:\OneDrive\Personal\MSC\ODL\Scripts\sql_log.txt ( del D:\OneDrive\Personal\MSC\ODL\Scripts\sql_log.txt)

:: Create Tables
mysql --host=54.84.139.183 -uroot -pc721scc -v -v < D:\OneDrive\Personal\MSC\ODL\Scripts\1_Create_Tables.sql > D:\OneDrive\Personal\MSC\ODL\Scripts\sql_log.txt

:: Get list of downloaded files, and create Load Data command for each file.  Write to SQL file.
IF EXIST D:\OneDrive\Personal\MSC\ODL\Scripts\2_Load_data_infile.sql ( del D:\OneDrive\Personal\MSC\ODL\Scripts\2_Load_data_infile.sql)
ECHO USE ODL; > D:\OneDrive\Personal\MSC\ODL\Scripts\2_Load_Data_Infile.sql
FOR /r D:\Users\WTS\Downloads %%g in (*) do ECHO LOAD DATA LOCAL INFILE 'D:\\Users\\WTS\\Downloads\\%%~nxg' INTO TABLE ODL_Raw fields terminated by ',' enclosed by '^"' lines terminated by '\n' ignore 1 lines (CPD, Group_ID, MPC, Door_Jamb, U_Factor, SHGC, VT, CR, GL, Low_E_Raw, Gap_Width_Raw, Spacer, Gap_Fill, Grid, Divider, Tint); >> D:\OneDrive\Personal\MSC\ODL\Scripts\2_Load_Data_Infile.sql

:: Run Load Data Infiles to insert data into database.
mysql --host=54.84.139.183 -uroot -pc721scc -v -v < D:\OneDrive\Personal\MSC\ODL\Scripts\2_Load_Data_Infile.sql  >> D:\OneDrive\Personal\MSC\ODL\Scripts\sql_log.txt

:: Parse and Lookup
mysql --host=54.84.139.183 -uroot -pc721scc -v -v < D:\OneDrive\Personal\MSC\ODL\Scripts\3_Parse.sql  >> D:\OneDrive\Personal\MSC\ODL\Scripts\sql_log.txt

:: Filter
mysql --host=54.84.139.183 -uroot -pc721scc -v -v < D:\OneDrive\Personal\MSC\ODL\Scripts\4_Filter.sql  >> D:\OneDrive\Personal\MSC\ODL\Scripts\sql_log.txt

:: Dump data to combined csv.
if exist D:\OneDrive\Personal\MSC\ODL\DataRepository\Filtered_Combined.csv ( del D:\OneDrive\Personal\MSC\ODL\DataRepository\Filtered_Combined.csv)
mysql --host=54.84.139.183 -uroot -pc721scc -v -v < D:\OneDrive\Personal\MSC\ODL\Scripts\5_Export.sql >> D:\OneDrive\Personal\MSC\ODL\Scripts\sql_log.txt

:: Run comparitator.  Export list of old and new CPD's.
if exist D:\OneDrive\Personal\MSC\ODL\DataRepository\New_CPDs.csv ( del D:\OneDrive\Personal\MSC\ODL\DataRepository\New_CPDs.csv)
mysql --host=54.84.139.183 -uroot -pc721scc -v -v < D:\OneDrive\Personal\MSC\ODL\Scripts\6_Deltas.sql >> D:\OneDrive\Personal\MSC\ODL\Scripts\sql_log.txt



