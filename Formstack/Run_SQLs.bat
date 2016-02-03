:: Merge Data and dump to CSV.

path C:\Program Files\MySQL\MySQL Server 5.6\bin


:: 

:: Get current date.
set yyyy=%date:~10,4%
set mm=%date:~4,2%
set dd=%date:~7,2%

ECHO *************************** START *********************************************** >> c:\Formstack\log.txt
ECHO . >> c:\Formstack\log.txt
ECHO                      %yyyy%-%mm%-%dd% >> c:\Formstack\log.txt
ECHO . >> c:\Formstack\log.txt
mysql -uroot -pc721scc -v -v < C:\Formstack\Load_Data_Infile.sql >> c:\Formstack\log.txt
ECHO **************************** END ************************************************ >> c:\Formstack\log.txt



