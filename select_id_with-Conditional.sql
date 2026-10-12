
 -- Used SQL Function:- Select, From, Where and Comparison Operators;

 select * from employee where id=4; -- जैसे:-  id के आधार पर सिंगल Row का data देखा जा सकता है;
 Select * from employee where id < 3; -- जैसे:- जिनका id 3 से छोटा है, उन्हें सेलेक्ट कर दो;
 Select * from employee where id >=6; -- जैसे:- जिसका id 6 के बराबर हो या 6 से ज्यादा हो, उन सभी को सेलेक्ट कर दो
=====================================
-- Used SQL Function:- Select,from, Where and Logical Operators;
 
 Select * from Employee where sallary > 60000 AND age>40; -- जैसे:-  जिनकी सैलरी 60000 हज़ार से ज्यादा है और उनकी उम्र 40 से ज्यादा है, तो उन सभी को सेलेक्ट करो।
 SELECT * from Employee WHERE Age >=30 AND Age <= 40; -- जैसे :- जिनकी उम्र 30 के बराबर या इससे अधिक हो, लेकिन 40 के बराबर हो या 40 से कम हो,
 SELECT * from Employee WHERE Age > 30 AND Age < 40;  -- जैसे :- जिनकी उम्र 30 और 40 के बीच है उन्हें  select कर दो।
 SELECT * from Employee WHERE Age BETWEEN 35 AND 45; -- जैसे :- जिनकी उम्र 35 और 45 के बीच है उन्हें  Select कर दो।
 SELECT * from Employee WHERE city='Ranchi' OR  city='Dhanbad'; -- जैसे :- जिनकी जिनका शहर रांची हो या धनबाद, उन्हें  सेलेक्ट करो।
 Select * from Employee where sallary BETWEEN 55000 AND 80000;  -- जैसे :-  जिनकी सैलरी 55000 हजार और 8000 हजार के बीच में है, उन्हें  सेलेक्ट करो।