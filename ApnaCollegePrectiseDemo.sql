  --------------------------------------------Preactise for Apna College------------
	--Task : 1 Create a database for your company named XYZ
	--Step 1 : Create a table inside this BD to store employee into(id,name,salary)
	--Step 2 : Add Following information in the DB:
	--Step 3 : Select & view all your table data.
	CREATE DATABASE CompanyXYZ;
	CREATE TABLE XYZTable(
	 id int PRIMARY KEY,
	 name varchar(50),
	 salary varchar(40),
	);

	INSERT INTO XYZTable VALUES
	(1,'Adam',230009),
	(2,'Bob',2305968),
	(3,'Cransey',3000000);

	SELECT * FROM XYZTable;

-------------------Constraints---------------

CREATE DATABASE apnacollege;
	CREATE TABLE student(
		rollno INT PRIMARY KEY,
		name VARCHAR(20),
		marks INT NOT NULL,
		grade VARCHAR(1),
		city VARCHAR(20)
		);

	INSERT INTO student(rollno,name,marks,grade,city)
	VALUES
	(101,'Alika',78,'C','Pune'),
	(102,'vidrika',93,'A','Mumbai'),
	(103,'Chetanya',85,'B','Mumbai'),
	(104,'Dhruvika',96,'A','Delhi'),
	(105,'Emanuel',12,'F','Delhi'),
	(106,'Farah',82,'B','Delhi');

	SELECT * from student;
------------------ Edite in Details :used to select any data from the database.
	/* *= all view
	  select col1, col2 from tablename //view specific col data on table;
	  SELECT DISTINCT col1 FROM tablename; //DISTINCT show uniq data and hide duplicate data
	  select * from table // view all data on table
	*/
	SELECT rollno, name FROM student;
	SELECT DISTINCT city FROM student;
	SELECT * FROM student;

	SELECT * FROM student where marks>80;
	SELECT * FROM student WHERE city='mumbai';
	SELECT * FROM student WHERE city='mumbai'  Or marks<80;
 
 SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
 
 SELECT * FROM student  WHERE city IN ('pune','mumbai');
--LIMIT :
  --select * FROM student where marks>70 limit 3;
--ASD / DASC

	select * from student ORDER BY name ASC;
	select * from student WHERE city IN('pune','mumbai')ORDER BY grade DESC ;

--Aggergate function
  select count(name) FROM student;

--group by

		SELECT city from student group by city;

		SELECT city ,avg(marks)from student group by city;
		SELECT city,name,count(rollno) from student group by city,name;

		SELECT name,marks from student group by name,marks order by name,avg(marks) DESC;
    
		SELECT city ,avg(marks)from student group by city order by city DESC;

	---HAVING 
		SELECT count(name), city FROM student GROUP BY city HAVING max(marks)>90;

		SELECT city from student where grade='A' group by city having max(marks)>95;

---- Update
	UPDATE student SET grade = 'C' WHERE grade= 'F';
	SELECT * FROM student;
	UPDATE student SET marks=12 WHERE name='Emanuel';
	UPDATE student SET grade = 'B' WHERE marks BETWEEN 90 AND 80;
	
---DELETE 
	DELETE FROM student;--all data dalete
	DELETE FROM student WHERE marks>23;

--Prectise Demo for forgim key 
 --Create two table Teacher and course
 CREATE TABLE dept(
 id INT PRIMARY KEY,
 name VARCHAR(50)
 );

 CREATE TABLE teacher(
   id INT PRIMARY KEY,
   name varchar(20),
   dept_id INT,
   FOREIGN KEY (dept_id) REFERENCES dept(id)
   ON UPDATE CASCADE
   ON DELETE CASCADE
 );

 INSERT INTO dept VALUES
 (101,'english'),
 (102,'IT'),
 (103,'Hindi');

 INSERT INTO teacher 
	VALUES(101,'Alixa',101),(102,'vrudik','102'),(103,'Eve',103),(104,'Adam',103);
	
	UPDATE dept SET id = '105' WHERE id='103';
	SELECT * FROM teacher;
	 SELECT * FROM dept;


	----- ALTER Table using student table

	ALTER TABLE student ADD age INT ;
	ALTER TABLE student DROP COLUMN age;
	
	SELECT * FROM student;
	--Dynamic roll number value show
	SELECT rollno FROM student WHERE rollno%2=0;
	-- static roll number value show
	SELECT name,rollno FROM student where rollno IN (102,104,106);
----------------- suquery
	SELECT name , rollno FROM student
	WHERE rollno IN (
	SELECT rollno 
	FROM student
	WHERE rollno%2=0);

	SELECT MAX(marks)
	FROM (SELECT * FROM student WHERE city='delhi') AS temp; 
--MySQL View
	CREATE VIEW view1 AS
	SELECT rollno, name, marks
	FROM student;
	
	SELECT * FROM view1;
	
-------------------------------- W3School Prectise  -----------------
	SELECT COUNT(DISTINCT city) FROM student;
	SELECT COUNT(DISTINCT name) FROM student;
	SELECT COUNT (*) AS DistinctCountries FROM (SELECT DISTINCT city FROM student)
	
	SELECT * FROM student;
