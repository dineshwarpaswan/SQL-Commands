           /*  Delete SQL command: used for row delete.
-------------------------------------- */
 DELETE FROM employee WHERE id=10;  /* जैसे:-  यानी कि employee name के टेबल जिसका ROW id 10 है उसे डिलीट कर दो।
---------------------- 
Multiple Value delate: */

 DELETE FROM employee WHERE city ='Ranchi';  -- Multiple value delate यानी  जितनी  भी  ROW में Ranchi नाम  का  सिटी  होगा,  सभी  को  डिलीट  कर देगा।

 DELETE From employee;  /* यानि employee नाम के टेबल से सभी डेटा डिलीट हो जाएगा, केवल टेबल स्ट्रक्चर बच जाएगा।

 कैसे जांचें कि सभी डेटा डिलीट हो गए हैं या नहीं :   */     SELECT count(*) FROM employee;  /* जब गिनती 0 आ जाती है तो सभी  Row डिलीट हो चुकी होती हैं। */