 /* PRIMARY KEY:- (एक प्राइमरी की टेबल में हर  Row को अलग से पहचानती है और इसमें NULL वैल्यू नहीं हो सकती, और इसे एक ही column या कई column पर परिभाषित किया जा सकता है। )
		1. Unique:-primary key wale column me koi bhi value duplicat nahi ho sakta(प्राइमरी की वाले कॉलम में कोई भी वैल्यू  duplicate नहीं हो सकती,),
		2. Not Null:- Is column ko khali nahi rakh sakte value dena aniwarge hai(इस कॉलम को  empty नहीं रख सकते, वैल्यू देना जरूरी है),
===============
  * PRIMARY KEY used for CREATE TABLE */

 CREATE TABLE TABALE_NAME(Id int not null primary key, Name varchar(30),Age int,City varchar(30)); -- lIKE TYPE 1: TABLE CREATE ho jayega, 

 CREATE TABLE Mobile(mobile_id int not null, name varchar(25), price int, primary key(mobile_id)); -- lIKE TYPE 2: TABLE CREATE ho jayega,
 
--------------
 CREATE TABLE Laptop(Lap_id int not null, Name varchar(25),Price int, Oprating_s varchar(25), Constraint pk_tech primary key(Lap_id,name)); /* Like:
    -TYPE 3: TABLE CREATE ho jayega, Multiple Primary Key used kiya gya hai; */

INSERT INTO Laptop VALUES(01,'HP', 54060,'WINDOWS'),(02,'SUMMSANG',40500,'WINDOWS7'),(03,'SONY',35060,'MAC'),(04,'APPLE',25500,'LINUX'),(05,'DELL',68500,'LINUX');

/* 5. ALTER TABLE का प्रयोग करेंगे पहले से बनी हुई टेबल में PRIMARY KEY को जोड़ने के लिए  LIKE:- */ ALTER TABLE table_name ADD PRIMARY KEY (student_id);