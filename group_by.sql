/* GROUP BY: used SQL Command make the group of same value of rows.(GROUP BY का इस्तेमाल एक ही तरह के Row की वैल्यूज को group बनाने के लिए किया जाता है।)
------------------------------------------------------------------------------ */

-- Example: Create Table and Fill Data(उदाहरण: टेबल बनाएं और डेटा भरें।)----------------- 
	
	CREATE TABLE product1 (id int not null primary key,item varchar(25),price int,city varchar(20));

	INSERT INTO product1 VALUES(101,'LAPTOP',56800,'BOKARO'),(102,'BOMILE',25000,'RANCHI'),(103,'MOUSE',450,'RANCHI'),
	(104,'SPEAKER',1500,'BOKARO'),(105,'PRINTER',3400,'GAYA'),(106,'KEYBORD',360,'RANCHI'),(107,'HEAD PHONE',2300,'GAYA'),
	(108,'DEXTOP',25000,'GAYA'),(109,'MONITER',67000,'RANCHI'),(110,'CPU',3400,'GAYA');
-- -----------------------------------------------------------------------------------------------------------------------
-- Syntax: 
	
	SELECT column_name(s) FROM Table_name GROUP BY column_name(s);

-- Example of Sum:

	SELECT city,sum(price) FROM product1 GROUP BY city;   --  (City को group बना देगा और उनके सभी वैल्यू को ग्रुपवाइज जोड़ देगा।)
	
	SELECT City, sum(price) AS Total FROM product1 GROUP BY city; /* Make the group of city and that sum  value  of group city add in  new column  name of Tota
	
	(शहर के समूह बनाओ और उस समूह के शहरों का कुल मान नए कॉलम 'Total' में जोड़ो।) */
	
	SELECT city, sum(price) AS 'Total value of City' FROM product1 GROUP BY city;  /*New column add with  group of city tatal value.
	
	(नई कॉलम जोड़ी गई जिसमें शहर के समूह का कुल मान है।) */
-	
-- Example of AVG:---------------------------------------
   SELECT City, avg(price) AS Total FROM product1 GROUP BY city;
   
   SELECT City, avg(price) AS 'Total value' FROM product1 GROUP BY city;

-- Example of COUNT:-------------------------------
   SELECT City, count(price) AS City FROM product1 GROUP BY city;
   
   SELECT City, count(price) AS 'Count of City ' FROM product1 GROUP BY city;
   
-- Example of maximum:-----------------------
   SELECT City, max(price) AS 'Maximum City value'  FROM product1 GROUP BY City;
   
-- Example of Minimum:------------------------
   SELECT City, min(price) AS 'Minimum City value'  FROM product1 GROUP BY City;