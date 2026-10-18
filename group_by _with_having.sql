/* HAVING USED WITH GROUP BY SQL Command(GROUP BY SQL कमांड के साथ HAVING का उपयोग किया गया।)
---------------------------------------------
Key Points:

		WHERE → Filters individual rows before grouping. समूह बनाने से पहले अलग-अलग पंक्तियों को फ़िल्टर करता है।

		HAVING → Filters groups after aggregation.समूहों को समेकन के बाद फ़िल्टर करता है।
------------------------------------------------------------------------------ */

-- Example: Create Table and Fill Data(उदाहरण: टेबल बनाएं और डेटा भरें।)----------------- 
	
	CREATE TABLE product1 (id int not null primary key,item varchar(25),price int,city varchar(20));

	INSERT INTO product1 VALUES(101,'LAPTOP',56800,'BOKARO'),(102,'MOBILE',25000,'RANCHI'),(103,'MOUSE',450,'RANCHI'),
	(104,'SPEAKER',1500,'BOKARO'),(105,'PRINTER',3400,'GAYA'),(106,'KEYBORD',360,'RANCHI'),(107,'HEAD PHONE',2300,'GAYA'),
	(108,'DEXTOP',25000,'GAYA'),(109,'MONITER',67000,'RANCHI'),(110,'CPU',3400,'GAYA'),(111,'LAPTOP',68000,'BOKARO'),
	(112,'MOBILE',27500,'RANCHI'),(113,'MOUSE',350,'RANCHI'),(114,'SPEAKER',1200,'BOKARO'),(115,'PRINTER',4500,'GAYA'),
	(116,'KEYBORD',560,'RANCHI'),(117,'HEAD PHONE',1700,'GAYA'),(118,'DEXTOP',14500,'GAYA'),(119,'MONITER',8500,'RANCHI'),
	(120,'CPU',6500,'GAYA'),(121,'LAPTOP',48000,'TATA'),(122,'MOBILE',17500,'RANCHI'),(123,'MOUSE',180,'TATA'),
	(124,'SPEAKER',750,'BOKARO'),(125,'PRINTER',2560,'GAYA'),(126,'KEYBORD',470,'RANCHI'),(127,'HEAD PHONE',1300,'TATA'),
	(128,'DEXTOP',9500,'GAYA'),(129,'MONITER',10500,'RANCHI'),(130,'CPU',7500,'GAYA'),(131,'LAPTOP',36000,'PATNA'),
	(132,'MOBILE',10500,'RANCHI'),(133,'MOUSE',250,'TATA'),(134,'SPEAKER',450,'BOKARO'),(135,'PRINTER',3260,'GAYA'),
	(136,'KEYBORD',370,'PATNA'),(137,'HEAD PHONE',1600,'TATA'),(138,'DEXTOP',11500,'GAYA'),(139,'MONITER',12500,'RANCHI'),
	(140,'CPU',10500,'PATNA'),(141,'DEXTOP',10500,'DHANBAD'),(142,'MOUSE',250,'DHANBAD'),(143,'CPU',8700,'GAYA'),
	(144,'LAPTOP',48000,'TATA'),(145,'MOBILE',14500,'RANCHI'),(146,'MOUSE',280,'DHANBAD');
-- -----------------------------------------------------------------------------------------------------------------------
-- Basic Syntax: 
	
	SELECT column1, aggregate_function(column2) 
	FROM table_name
	GROUP BY column1
	HAVING condition;

-- Example 1 – Filter by Count:
 
 -- SELECT City, count(price) AS Total_city FROM product1 GROUP BY city;  make goup of city and count(शहर के हिसाब से समूह बनाओ और गिनती करो।)

	SELECT city, COUNT(price) AS Total_CITY FROM product1 GROUP BY city HAVING COUNT(price) < 7;

-- Example 2- SUM:
	
--	SELECT item, sum(price) AS 'Total value of item' FROM product1 GROUP BY item; (नई कॉलम जोड़ी गई जिसमें शहर के समूह का कुल मान है।) */

	SELECT Item, SUM(price) AS 'Tolal Price of Item' FROM product1 GROUP BY item HAVING SUM(price) > 15500;
	
	mysql> SELECT Item, SUM(price) AS 'Tolal Price of Item' FROM product1 GROUP BY item HAVING SUM(price) < 15500;
	
-- Example 3 – Filter by Average:---------------------------------------

   -- SELECT City, avg(price) AS Total FROM product1 GROUP BY city;  Make goup of city.(शहर का समूह बनाओ।)
   
	SELECT city, AVG(price) AS AveragePrice FROM product1 GROUP BY city HAVING AVG(price) > 15500;
	SELECT city, AVG(price) AS AveragePrice FROM product1 GROUP BY city HAVING AVG(price) < 15500;


-- Example 4 – Multiple Conditions:-------------------------------

	SELECT item, SUM(price) AS Total_sum, AVG(price) AS Total_avrage FROM product1 GROUP BY (item)
	HAVING SUM(price) >= 25000 AND AVG(price) > 5000;
	
	
	SELECT item, SUM(price) AS Total_sum, AVG(price) AS Total_avrage FROM product1 GROUP BY item
	HAVING SUM(price) < 25000 AND AVG(price) < 5000;

   
-- Example 5 maximum:-----------------------
   SELECT City, max(price) AS 'Maximum City price'  FROM product1 GROUP BY City HAVING max(price)>22000;
   
-- Example 6 Minimum:------------------------
   SELECT City, min(price) AS 'Minimum City value'  FROM product1 GROUP BY City HAVING min(price)< 22000;
   
-- Example 7 – HAVING with ORDER BY:
	SELECT item, city, SUM(price) AS Total_price
	FROM product1
	GROUP BY item, city,
	HAVING SUM(price) >= 30000
	ORDER BY Total_price DESC;