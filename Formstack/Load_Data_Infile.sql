-- Version Feb 2nd, 2016

USE Formstack;

TRUNCATE TABLE formstack_raw;

LOAD DATA LOCAL INFILE 'C:\\Users\\Administrator\\Dropbox\\FormstackRawData\\InstalledServicesCustomerApprovalForm_Data.csv' 
INTO TABLE formstack_raw fields terminated by ',' enclosed by '"' lines terminated by '\r\n' ignore 1 lines; 


INSERT INTO formstack (OrderNumber, DateTime, FirstName, LastName, Address1, Address2, AddressCity, AddressState, AddressZip, Country, email, InstallerRating, Comments, 
	InstallType, NeedWant, DoorType, AddReplace, GlassType, Model, DoorConstruction, FormstackImage1, FormstackImage2, FormstackImage3, FormstackImage4,
	FormstackImage5, FormstackImage6, FormstackImage7, FormstackImage8)
(
select OrderNumber, Time, FirstName, LastName, Address1, Address2, AddressCity, AddressState, AddressZip, 
	'USA' as Country, Email as email, InstallerRating, Comments, 'Glass' as InstallType, 'Need' as NeedWant, 
	'Front' as DoorType, 'Add' as AddReplace, 'Deco' as GlassType, 123 as Model, 'Steel' as DoorConstruction,
	FileUpload as FormstackImage1, FileUpload1 as FormstackImage2, FileUpload2 as FormstackImage3, FileUpload3 as FormstackImage4,
	FileUpload4 as FormstackImage5, FileUpload5 as FormstackImage6, FileUpload6 as FormstackImage7, FileUpload7 as FormstackImage8
from formstack_raw
where unix_timestamp(time)
> (
	select max(unix_timestamp(f.datetime)) from formstack f
	)
);

-- -----------------------------------------------------------------

INSERT INTO formstack (OrderNumber, DateTime, FirstName, LastName, Address1, Address2, AddressCity, AddressState, AddressZip, Country, email, InstallerRating, Comments, 
	InstallType, NeedWant, DoorType, AddReplace, GlassType, Model, DoorConstruction, FormstackImage1, FormstackImage2, FormstackImage3, FormstackImage4,
	FormstackImage5, FormstackImage6, FormstackImage7, FormstackImage8)
(
select OrderNumber, Time, FirstName, LastName, Address1, Address2, AddressCity, AddressState, AddressZip, 
	'USA' as Country, Email as email, InstallerRating, Comments, 'Glass' as InstallType, 'Need' as NeedWant, 
	'Front' as DoorType, 'Add' as AddReplace, 'Deco' as GlassType, 123 as Model, 'Steel' as DoorConstruction,
	FileUpload as FormstackImage1, FileUpload1 as FormstackImage2, FileUpload2 as FormstackImage3, FileUpload3 as FormstackImage4,
	FileUpload4 as FormstackImage5, FileUpload5 as FormstackImage6, FileUpload6 as FormstackImage7, FileUpload7 as FormstackImage8
from formstack_raw
where ordernumber
NOT IN (
	SELECT DISTINCT OrderNumber FROM formstack f
	)
);