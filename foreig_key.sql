 /* FOREIGN KEY:  का इस्तेमाल पहली टेबल और दूसरी टेबल के बीच  Relationship बनाने के लिए किया जाता है।
 ---------------------------------------
 1ST Table, */ CREATE TABLE Mobile(mobile_id int not null, name varchar(25), price int, primary key(mobile_id));  /*  lIKE TYPE 2: TABLE CREATE ho jayega,

 2ND Table, */ CREATE TABLE Orders(OrderID INT PRIMARY KEY,OrderNumber INT,mobile_id INT,OrderDate DATE,FOREIGN KEY (mobie_id) REFERENCES Mobile(mobile_id));
    
  --  यदि आपके टेबल पहले से बनी हुई है, आप बाद में भी  Foreign key के रूप में बना सकते हैं: ALTER TABLE की मदद से.
  ALTER TABLE Orders ADD CONSTRAINT FK_CustomerOrder FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID);

