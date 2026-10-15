
/*SQL command used for JOIN:- two table combine( का मतलब दो टेबल्स को मर्ज करना)
----------------------------------------------------------------------
 LEFT JOIN (या LEFT OUTER JOIN) : एक तरह का जॉइन है जो लेफ्ट टेबल के सभी रिकॉर्ड्स और राइट टेबल से मैच होने वाले रिकॉर्ड्स को वापस करता है। अगर राइट टेबल में कोई मैच नहीं होता, तो रिज़ल्ट में उन कॉलम्स के लिए NULL वैल्यूज़ शामिल होंगी।
 
Syntax: SELECT COLUMNS FROM Table1 LEFT JOIN Table2 ON Table1.id=Table2.id;   */
         
        SELECT Brands_Name, Name, Price, City FROM Brands LEFT JOIN products ON brands.id = products.id;

        SELECT Brands_Name, Name, Price FROM Brands LEFT JOIN products ON brands.id = products.id;

        SELECT Brands_Name, Name FROM Brands LEFT JOIN products ON brands.id = products.id;

	SELECT  Name,Brands_Name FROM Products LEFT JOIN Brands ON Products.Id=Brands.Id;

	SELECT Name, Price, City, Brands_Name FROM products LEFT JOIN brands ON products.id=brands.id;
      
        SELECT Name, Price,  Brands_Name FROM products LEFT JOIN brands ON products.id=brands.id;

       SELECT  Name, Brands_Name, Price, City FROM Brands LEFT JOIN products ON brands.id = products.id;

-- -------------------------Exmple: For Practice Tables(उदाहरण: अभ्यास के लिए तालिकाएँ।)----------------------------------------------------------------------------------------------
 CREATE TABLE Products(Id int not null primary key,Name varchar(20),Price int,City varchar(20));  -- Table-A will be create.

 INSERT INTO Products(Id,Name,Price,City) values (01,'Laptop',56000,'Bokaro');  --Type-1 for insert

 INSERT INTO Products values(02,'Mobile',85000,'PATNA'),(03,'Mouse',45000,'RANCHI'),(04,'Laptop',76000,'RANCHI');  -- Type-2 for insert
-- ---------------------------------------Fill Data For The Table(टेबल के लिए डाटा भरें)------------------------------------------------------------------------------------------
  CREATE TABLE Brands(Id int not null primary key,Brands_Name varchar(20));   -- Table-B will be create.

  INSERT INTO Brands values(01,'Dell'),(02,'Vivo'),(03,'HP'),(04,'Orient'),(05, 'Apple'),(06,'Samsung');