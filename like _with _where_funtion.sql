
 /* LIKE'D%':- ka used search/ TEXT NAME 
--------------------------------------------------- */
 Select*from employee Where name LIKE'D%';  -- जैसे:- name वाले कॉलम के name के आगे D से शुरू होने वाले सबको सलेक्ट कर दो,

 SELECT*FROM EMPLOYEE WHERE NAME LIKE'%D';  -- LIKE:- जिन नामों के पीछे D लगा हो उन्हें सबको सलेक्ट/फैच कर दो

 SELECT * FROM EMPLOYEE WHERE Name Like'_a%'; --  LIKE:- जिन नामों के दूसरे अक्षर A से शुरू होते हैं, उन्हें सबको फेच करो;

 select * from employee where name like '%R_'; --  LIKE:- जिन नामों में दूसरी आखिरी स्थिति R से शुरू होती है, उन सभी को फेच करो