	--create table
		CREATE TABLE RegisterUser(userid int,lastname varchar(20),firstname varchar(29),useraddress varchar(100),city varchar(20));
 
		select * from RegisterUser;

 USE TechnologyKeedaDB;

		Insert INTO RegisterUser(userid,lastname,firstname,useraddress,city)
			VALUES
			(1,'sharama','kritiv','railyastation','varansi'),
			(2,'Mishra','Vrindita','Ayodhyasheri','Ayodhya'),
			(3,'Pathk','Mishtita','golanpur','kerela'),
			(4,'sheety','Krinika','relampur','karnatak'),
			(5,'Reddy','SupermAyyar','milanpara','Tamilnadu'),
			(6,'dave','krinda','jangal','Gujarat');
		Insert into RegisterUser values(7,'kulksni','rajpal','bhomeswer station','kerela');
  
		UPDATE RegisterUser SET lastname='Kulkni' WHERE userid=7;

