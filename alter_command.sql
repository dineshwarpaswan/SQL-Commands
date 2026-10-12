
         -- ALTER Table Table_Name ADD New_Column DATATYPE;  इसका इस्तेमाल एक New Column को जोड़ने के लिए होता है

 	Alter Table employee ADD Contact_N INT;   -- यानी कि : -  एक  New Column जोड़ देगा।

 	ALTER Table employee MODIFY COLUMN address varchar(60);      --  यानी कि:-   address नाम के  कॉलम के स्टचर में बदल जाएगा।.

 	ALTER TABLE employee DROP CONTACT_N;  -- यानी कि : - employee name के टेबल से Contact_N का कॉलम डिलीट/मूव हो जाएगा।

 	ALTER TABLE TABLE_NAME ADD PRIMARY KEY(column_name);  -- यानी कि :-   किसी यूनिक कॉलम को प्राइमरी की के रूप में बनाया जा सकता है।
	
	ALTER TABLE laptop DROP primary key;  -- प्राइमरी की को  Delete कर देगा।