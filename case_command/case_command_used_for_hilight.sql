/*SQL CASE उदाहरण:
यहाँ हम CASE एक्सप्रेशन का उपयोग डेटा (Price) को श्रेणीबद्ध करने के लिए करते हैं और हम एक नया कॉलम (PriceCategory) बनाते हैं जो दिखाता है कि प्रत्येक उत्पाद किस मूल्य श्रेणी में आता है:
CASE Syntax-
			CASE
			  WHEN condition1 THEN result1
			  WHEN condition2 THEN result2
			  WHEN conditionN THEN resultN
			  ELSE default_result
			END;
--------------- */
    CREATE TABLE electronics (id int,item varchar(25),price int,city varchar(20));

	INSERT INTO electronics VALUES(101,'LAPTOP',50000,'BOKARO'),(102,'MOBILE',25000,'RANCHI'),(103,'MOUSE',450,'TATA'),
	(101,'LAPTOP',50000,'BOKARO'),(102,'MOBILE',25000,'RANCHI'),(103,'MOUSE',450,'TATA'),(104,'HEAD PHONE',2000,'GAYA'),
	(105,'DEXTOP',15000,'GAYA'),(106,'MONITER',6000,'RANCHI'),(107,'CPU',3000,'GAYA'),(105,'DEXTOP',15000,'GAYA'),
	(106,'MONITER',6000,'RANCHI');

---  ------------------------
SELECT item, price,
CASE
  WHEN price >15000 THEN 'HIGH Cost'
  WHEN price < 15000  AND price >= 6000 THEN 'Medium Cost'
  ELSE 'LOW Cost'
END AS PriceCategory
FROM electronics;


SELECT ITEM ,PRICE,
CASE 
	WHEN PRICE >20000 THEN 'HIGH COST OF ITEM'
	WHEN PRICE BETWEEN 6000 AND 20000 THEN 'MEDIUM COST OF ITEM'
	ELSE 'LOWEST COST OF ITEM'
END AS 'PRICE OF ITEMS'
FROM ELECTRONICS;


SELECT ITEM ,CITY, PRICE,
CASE 
	WHEN PRICE >= 25000 THEN 'HIGH COST OF ITEM'
	WHEN PRICE < 25000 AND PRICE >= 5000 THEN 'MEDIUM COST OF ITEM'
	ELSE 'LOWEST COST OF ITEM'
END AS 'PRICE OF ITEMS'
FROM ELECTRONICS;
