/*SQL command used for JOIN:- two table combine( का मतलब दो टेबल्स को मर्ज करना)
---------------------------------------------------------------------
SQL में एक FULL OUTER JOIN : दोनों टेबल्स की सभी पंक्तियां लौटाता है, जहां संभव हो उन्हें मिलाता है, और जो कॉलम मेल नहीं खाते उन्हें NULL से भर देता है। यह मूल रूप से LEFT JOIN और RIGHT JOIN के परिणामों का संयोजन है।

Syntax: Select Columns From Table1 Full Outer Join Table2 ON Table1.id = Table2.id;  */

	Select Brands_Name,Name, Price, City From Brands Left Join Products ON Brands.id = Products.id
	 UNION
	Select Brands_Name,Name, Price, City From Brands Right Join Products ON Brands.id = Products.id;


-- -------------------------Example: For Practice Tables(उदाहरण: अभ्यास तालिकाओं के लिए।)----------------------------------------------------------------------------------------------
 
CREATE TABLE Products(Id int not null primary key,Name varchar(20),Price int,City varchar(20));  -- Table-A will be create(टेबल A बन जाएगा।)

 INSERT INTO Products(Id,Name,Price,City) values (01,'Laptop',56000,'Bokaro');  --Type-1 for insert

 INSERT INTO Products values(02,'Mobile',85000,'PATNA'),(03,'Mouse',45000,'RANCHI'),(04,'Laptop',76000,'RANCHI');  -- Type-2 for insert

-- --------------------------------------Create Table and Fill Data For The Table(टेबल बनाओ और टेबल के लिए डेटा भरो।)------------------------------------------------------------------------------------------
  
	CREATE TABLE Brands(Id int not null primary key,Brands_Name varchar(20));   -- Table-B will be create(टेबल B बन जाएगा।)

  	INSERT INTO Brands values(01,'Dell'),(02,'Vivo'),(03,'HP'),(04,'Orient'),(05, 'Apple'),(06,'Samsung'); 