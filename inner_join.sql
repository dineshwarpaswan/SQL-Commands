  /*sql command used for JOIN:- two table combine( का मतलब दो टेबल्स को मर्ज करना)
----------------------------------------------------------------------
INNER JOIN: Returns only rows with matching values in both tables(यह दोनों टेबल का commonडेटा दिखाता है।)  */

-- Syntax: SELECT COLUMNS FROM Table1 INNER JOIN Table2 ON Table1.id=Table2.id;     


	SELECT Name,Brands_Name FROM products INNER JOIN brands on products.id=brands.id;

	SELECT name, price,city,brands_name FROM products INNER JOIN brands on products.id=brands.id;

	Select name,brands_name,price,city From products Inner Join brands on products.id=brands.id;
       

-- ----------------Exmple: For Practice Tables----------------------------------------------------------------------------------------------
 CREATE TABLE Products(Id int not null primary key,Name varchar(20),Price int,City varchar(20));  -- Table-A will be create.

 INSERT INTO Products(Id,Name,Price,City) values (01,'Laptop',56000,'Bokaro');  --Type-1 for insert
 INSERT INTO Products values(02,'Mobile',85000,'PATNA'),(03,'Mouse',45000,'RANCHI'),(04,'Laptop',76000,'RANCHI');  -- Type-2 for insert
-- -----------------------------------------------------------------------------------------------------------------------------------
  CREATE TABLE Brands(Id int not null primary key,Brands_Name varchar(20));   -- Table-B will be create.

  INSERT INTO Brands values(01,'Dell'),(02,'Vivo'),(03,'HP'),(04,'APPLE');
