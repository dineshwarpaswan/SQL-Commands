           /*  Delete SQL command: used for row delete.
-------------------------------------- */
 DELETE FROM demo WHERE id=102;  /* जैसे:-  यानी कि demo name के टेबल जिसका ROW id 102 है उसे डिलीट कर दो।
---------------------- 
Multiple Value delate: */

 DELETE FROM demo WHERE city ='RANCHI';  -- Multiple value delate यानी  जितनी  भी  ROW में RANCHI नाम  का  सिटी  होगा,  सभी  को  डिलीट  कर देगा।

 DELETE From demo;  /* यानि demo नाम के टेबल से सभी डेटा डिलीट हो जाएगा, केवल टेबल स्ट्रक्चर बच जाएगा।

 कैसे जांचें कि सभी डेटा डिलीट हो गए हैं या नहीं :   */     SELECT count(*) FROM demo;  /* जब गिनती 0 आ जाती है तो सभी  Row डिलीट हो चुकी होती हैं।  

-------------------
EXMPLE TABLE: */

 CREATE TABLE demo (id int not null primary key, name varchar(20),age int, city varchar(20));

 INSERT INTO demo VALUE(101,'DINESHWAR PASWAN',35,'BOKARO'),(102,'MOHIT RAM',30,'PATANA'),(103,'RANI KUMARI',26,'RANCHI');