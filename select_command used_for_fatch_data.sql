/*select sql command used for fatch table data:
Syntax:
        Select * FROM Table_name;  */  
	
	Select * FROM students;  -- यानी  students name का टेबल पूरा सेलेक्ट हो जाएगा;

	Select name From students;  -- जैसे कि  name वाले कॉलम को फेच/select कर देगा।, 

 	Select Name, Course, Marks From students;  /* जैसे कि:- Multiple column Name, Course, Marks वाले कॉलम्स को सेलेक्ट कर देगा।

 Practice  Table: */
  Create Table students (id int not null primary key, Name varchar(20), Course varchar(20) Marks int);

  Insert Into students (Id, Name, Course, Marks) values (001, 'MANISH', 'B.TECH',88);
  Insert Into students values(002, 'MAMATA', 'BBA',85),(003,'KAMLESH','MA' 76),(004,'MOHIT','MBA',67);
  Insert Into students values(005, 'MAMATA', 'BBA',85),(006,'KAMLESH','MA', 76),(007,'MOHIT','MBA',67);
