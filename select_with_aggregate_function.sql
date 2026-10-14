 /*  SQL Command Used :- Aggregate Function/Group Function:
========================================== */
   Select sum(Price) FROM employee;  -- जैसे कि :-  Price नाम के कॉलम के सभी वैल्यू को जोड़ देगा।

   Select avg(Price) from employee;  -- जैसे कि:-  Price नाम के कॉलम की सभी वैल्यू का एवरेज निकाल देगा

   select count(city) from employee;  -- जैसे कि :-  city नाम के कॉलम की सभी शहरों को गिन देगा।

   SELECT max(Price) From employee;  -- जैसे कि:-  Price नाम के कॉलम में सबसे ज्यादा किसकी Price है।

   SELECT MIN(Price) FROM Employee;  -- जैसे कि:- Price नाम के कॉलम में सबसे छोटी वैल्यू। 
  -- ------------------------------------------------------------------------------------
-- CREATE TABLE and INSERT DATA FOR PRACTICE(अभ्यास के लिए टेबल बनाएं और डेटा डालें।) :  

 CREATE TABLE Product(Id int not null primary key,Item varchar(20),Price int,City varchar(20));

 INSERT INTO Product(Id,Item,Price,City) values (01,'Dell Laptop',56000,'BOKARO'); -- TYPE 1 Insert data

INSERT INTO Product Values(02,'Sony Laptop',85000,'BOKARO'),(03,'HP Laptop',45000,'RANCHI'),(04,'Sony Laptop',76000,'RANCHI'); -- TYPE 2 Insert data
