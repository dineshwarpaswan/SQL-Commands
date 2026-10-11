 /* FOREIGN KEY with CREATE TABLE AND INSERT DATA IN TABLE; And used Command for automatically delete value 
---------------------------------------------------------
	1ST TABLE: Customers */
 CREATE TABLE Customers( Customer_id INT NOT NULL PRIMARY KEY,Costomer_name VARCHAR(25),City VARCHAR(25));

 INSERT INTO Customers VALUES(1001, 'DINESHWAR PASWAN','BOKARO'),(1002,'MAHESH RAM','BOARO'),(1003,'RAJU GUPTA','RANCHI'),(1004,'PUJA SARMA','RANCHI'),(1005,'MAHESH RAM','DHANBAD');
/*--------------------------------
	2ND TABLE : Orders */
 CREATE TABLE Orders(Order_id INT PRIMARY KEY, Order_Date DATE, Amount INT, Customer_id INT, FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id) ON DELETE CASCADE);

 INSERT INTO Orders VALUES(101,'2026-09-15',5000,1001),(102,'2026-09-16',5600,1002),(103,'2026-10-20',4500,1003),(104,'2026-09-18',3500,1004),(105,'2026-09-16',4500,1005);
/*======================================================================================================================================================================================
   * DELETE Automatically ONE TABLE TO ANOTER TABLE HELP OF fOREIGN KEY
    ------------------------------------------------------------------ */
 DELETE FROM Customers WHERE Customer_id=1005; -- LIKE: Orders Table se bhi DELETE ho jayega,