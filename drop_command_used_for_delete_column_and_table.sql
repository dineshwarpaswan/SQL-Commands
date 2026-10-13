/* DROP SQL Command used for delete a Columns.
-------------------- 
Syntax: 
  ALTER TABLE Table_Name DROP COLUMN Column_name;  एक कॉलम को डिलीट करने के लिए। */
 
  ALTER TABLE demo DROP COLUMN city;  /*  जैसे कि:  city नाम वाले कॉलम को डिलीट कर देगा।

----------------------------------------------------------- */
 -- DROP command used for Multiple column deleted (DROP कमांड का इस्तेमाल कई कॉलम हटाने के लिए किया गया।)

/* Syntax: */  ALTER TABLE Table_Name 
               DROP COLUMN Column1_Name,
               DROP COLUMN Column2_Name;  -- मल्टीपल कॉलम को डिलीट करने के लिए। 

  ALTER TABLE demo 
  DROP COLUMN city,
  DROP COLUMN age,
  DROP COLUMN name;  -- ये 3 कॉलम डिलीट हो जाएंगे

-- EXAMPLE TABLE: 
  CREATE TABLE demo (id int not null primary key, name varchar(20),age int, city varchar(20));

  INSERT INTO demo VALUE(101,'DINESHWAR PASWAN',35,'BOKARO'),(102,'MOHIT RAM',30,'PATANA'),(103,'RANI KUMARI',26,'RANCHI');
/*================================================= 
   DROP sql command used for table delete:

 Syntax: DROP TABLE Table_Name;   सिंगल टेबल डिलीट। (Sinle Table delete) 
 Syntax: DROP TABLE Table1_Name,Table2_Name,Table3_Name;  एक से अधिक टेबल हटाई जाएँगी। (Multiple Table will be delete) */

	 DROP TABLE demo1;  -- सिंगल टेबल डिलीट हो जाएगा।
	 DROP TABLE demo2,demo3;   -- सभी टेबल डिलीट हो जाएगा।
/*=====================================================
 EXAMPLE TABLE: */
  CREATE TABLE demo1 (id int not null primary key, name varchar(20),age int, city varchar(20));
  INSERT INTO demo1 VALUE(101,'DINESHWAR PASWAN',35,'BOKARO'),(102,'MOHIT RAM',30,'PATANA'),(103,'RANI KUMARI',26,'RANCHI');

  CREATE TABLE demo2 (id int not null primary key, name varchar(20),age int, city varchar(20));
  INSERT INTO demo2 VALUE(101,'DINESHWAR PASWAN',55,'BOKARO'),(102,'MOHIT RAM',30,'PATANA'),(103,'RANI KUMARI',29,'RANCHI');

  CREATE TABLE demo3 (id int not null primary key, name varchar(20),age int, city varchar(20));
  INSERT INTO demo3 VALUE(101,'DINESHWAR PASWAN',50,'BOKARO'),(102,'MOHIT RAM',30,'PATANA'),(103,'RANI KUMARI',66,'RANCHI');

/*-------------------------------------------------------------------------------------------------------------------------
  DROP MYSQL Command used for delete Column: */

DROP Column1_name;  -- एक कॉलम को डिलीट करने के लिए।

DROP Column1_name,Column2_name;  -- मल्टीपल कॉलम को डिलीट करने के लिए