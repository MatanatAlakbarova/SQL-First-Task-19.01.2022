CREATE DATABASE COMPANY

USE COMPANY

CREATE TABLE Worker(
	Id int,
	Name nvarchar(20),
	Surname nvarchar(25),
	Age int,
	Salary int,
	Position nvarchar(50)
)

ALTER TABLE Worker
ADD Award int

ALTER TABLE Worker
DROP COLUMN Award

EXEC sp_rename 'Worker' ,'Workers'

ALTER TABLE Workers
ADD Gender nvarchar(10)

INSERT INTO Workers (Id, Name, Surname, Age, Salary, Position,Gender)
VALUES('1', 'Matanat', 'Alakbarova', '24', '900', 'Senior Consultant','Female')

TRUNCATE TABLE Workers

INSERT INTO Workers (Id, Name, Surname, Age, Salary, Position, Gender)
VALUES('1', 'Matanat', 'Alakbarova', '24', '900', 'Senior Consultant','Female'),
	  ('2', 'Idris', 'Jafarzade', '25', '1000', 'Machinist','Male'),
	  ('3', 'Leyla', 'Asadova', '21', '400', ' Consultant','Female'),
	  ('4', 'Guler', 'Ahmadli', '26', '700', 'Musician','Female'),
	  ('5', 'Zehra', 'Mustafayeva', '26', '300', 'Musician','Female'),
	  ('6', 'Mustafa', 'Bayramov', '24', '500', 'Consultant','Male'),
	  ('7', 'Ali', 'Suleymanov', '23', '600', 'Consultant','Male'),
	  ('8', 'Aliye', 'Mammadli', '28', '520', 'Consultant','Female'),
	  ('9', 'Efsane', 'Alakbarova', '29', '350', 'Consultant','Female'),
	  ('10', 'Efsane', 'Mamadova', '22', '350', 'Consultant','Female')

SELECT AVG (Salary) 'Average of salary for workers' FROM Workers

SELECT MAX (Salary) 'Maximum Salary for Company'FROM Workers

SELECT MIN (Salary)'Minimum Salary For Company' FROM Workers

SELECT * FROM Workers
	WHERE Salary> (SELECT AVG (Salary) FROM Workers) AND Age >= 24 

SELECT Name 'FirstName',Surname 'LastName',Salary FROM Workers
	WHERE Salary> (SELECT AVG (Salary) FROM Workers)

SELECT * FROM Workers
    WHERE Position='Musician' AND Salary > 350

SELECT * FROM Workers
	WHERE Gender= 'Male' AND Salary>500

DROP TABLE Workers
	 



