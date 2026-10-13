   
 /*  One Row UPDATE:-  First data wil be replace with new data.(पहला डेटा नई डेटा से बदल दिया जाएगा।)  
====================*/
    
 -- UPDATE Table_Nanme SET Column_Name='writen any data  with check data type' WHERE id= id_number;
 
     Update employee Set Address='Gandhi Maidan Morabadi' where id=9;  -- इसका मतलब है कि जिस Row का id 9 है उसे बदल दो,  

     UPDATE employee SET Address='Gandhi Maidan Morabadi' WHERE id=9;  -- यानि कि पहले वाले डेटा के जगह पर नया डेटा लिख देगा। 
/* ========================================================================
         Column UPDATE:- used column  value update here.(यहाँ कॉलम अपडेट किया गया।)
          ------------------------------------------------------------------ */
 Update Table_Name SET Column_name='Values';  --  कॉलम के Null value की जगह पर सब में सेट हो जाएगा।

 Update  employee SET Contact_n='859056';   -- Contact_n नाम के कॉलम के सभी सेल में वैल्यू सेट कर देगा।