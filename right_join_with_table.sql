/*SQL command used for JOIN:- two table combine( का मतलब दो टेबल्स को मर्ज करना)
---------------------------------------------------------------------
RIGHT JOIN:  राइट टेबल की सभी पंक्तियों को लौटा देता है और केवल लेफ्ट टेबल की मैचिंग पंक्तियों को दिखाता है, और जिन लेफ्ट‑टेबल के कॉलम्स का कोई मैच नहीं होता उन्हें NULL दिखाया जाता है।

Syntax: SELECT COLUMN FROM Table1 RIGHT JOIN Table2 ON Table1.id = Table2.id;  */

 	Select name,brands_name from products right join brands on products.id = brands.id;
	
	Select name,city, brands_name from products right join brands on products.id = brands.id;

	SELECT Name, Price, City, Brands_name FROM Products RIGHT JOIN Brands ON Products.id = Brands.id;
	
	Select brands_name,name,price From products Right Join brands on products.id = brands.id;

	Select name,brands_name,price From products Right Join brands on products.id = brands.id;
	

-- -------------------------Example: For Practice Tables(उदाहरण: अभ्यास तालिकाओं के लिए।)----------------------------------------------------------------------------------------------
 
CREATE TABLE Products(Id int not null primary key,Name varchar(20),Price int,City varchar(20));  -- Table-A will be create.

 INSERT INTO Products(Id,Name,Price,City) values (01,'Laptop',56000,'Bokaro');  --Type-1 for insert

 INSERT INTO Products values(02,'Mobile',85000,'PATNA'),(03,'Mouse',45000,'RANCHI'),(04,'Laptop',76000,'RANCHI');  -- Type-2 for insert

-- ---------------------------------------Fill Data For The Table(टेबल के लिए डाटा भरें)------------------------------------------------------------------------------------------
  CREATE TABLE Brands(Id int not null primary key,Brands_Name varchar(20));   -- Table-B will be create.

  INSERT INTO Brands values(01,'Dell'),(02,'Vivo'),(03,'HP'),(04,'Orient'),(05, 'Apple'),(06,'Samsung');