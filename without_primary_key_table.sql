
     /*  No Used Primary Key This Table:
--------------------------- */
  CREATE TABLE Tv(id int, name varchar(25),price int);  Like: No used primary key

 INSERT INTO Tv VALUES(01,'SONY TV',3500),(02,'MAX TV',5040),(01,'SONY TV',4500),(03,'BAJA TV',4500);

--  ALTER TABLE का प्रयोग करेंगे पहले से बनी हुई टेबल में PRIMARY KEY को जोड़ने के लिए 
 
     ALTER TABLE Tv ADD PRIMARY KEY (student_id);