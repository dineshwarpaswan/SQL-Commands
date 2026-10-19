
-- DISTINCT:  used for distinct uniqe value. Filters out duplicate values from the result set.(परिणाम सेट से डुप्लिकेट मानों को निकालता है।)

-- -----------Example: Create Table and Fill Data(उदाहरण: टेबल बनाएं और डेटा भरें।)----------------- 
	
	CREATE TABLE electronics (id int,item varchar(25),price int,city varchar(20));

	INSERT INTO electronics VALUES(101,'LAPTOP',50000,'BOKARO'),(102,'MOBILE',25000,'RANCHI'),(103,'MOUSE',450,'TATA'),
	(101,'LAPTOP',50000,'BOKARO'),(102,'MOBILE',25000,'RANCHI'),(103,'MOUSE',450,'TATA'),(104,'HEAD PHONE',2000,'GAYA'),
	(105,'DEXTOP',15000,'GAYA'),(106,'MONITER',6000,'RANCHI'),(107,'CPU',3000,'GAYA'),(105,'DEXTOP',15000,'GAYA'),
	(106,'MONITER',6000,'RANCHI');
-- -------------------------------------------------------
--   Select * From electronics;     you can check table value

Select Distinct id,item,city From electronics;

Select Distinct id,city From electronics;

Select Distinct item, price,city From electronics;

Select Distinct item,city From electronics;

Select Distinct id,item,price From electronics;

Select Distinct id,item From electronics;
