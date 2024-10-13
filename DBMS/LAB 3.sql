CREATE TABLE CRICKET(
	CNAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT
)
INSERT INTO CRICKET(CNAME,CITY,AGE) VALUES
('Sachin Tendulkar','Mumbai',30),
('Rahul Dravid','Bombay',35),
('M. S. Dhoni','Jharkhand',31),
('Suresh Raina','Gujarat',30)
SELECT *FROM CRICKET

--1. Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET  
--2. Create table T20 from cricket with first two columns with no data.
SELECT CNAME,CITY INTO T20 FROM CRICKET 
--3. Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1=2
SELECT *FROM CRICKET

CREATE TABLE EMPLOYEE(
	ENAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT
)

INSERT INTO EMPLOYEE (ENAME,CITY,AGE) VALUES
('Jay Patel','Rajkot',30),
('Rahul Dave','Baroda',35),
('Jeet Patel','Surat',31),
('Vijay Raval','Rajkot',30)

--1. Create table Employee_detail from Employee with all the columns and data.
SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE
--2. Create table Employee_data from Employee with first two columns with no data.
SELECT ENAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE
--3. Create table Employee_info from Employee with no Data
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1=2
SELECT *FROM EMPLOYEE_INFO

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO EMPLOYEE_INFO SELECT * FROM EMPLOYEE WHERE CITY='RAJKOT'
--2. Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_INFO SELECT *FROM EMPLOYEE WHERE AGE>32

--part - A: update operation
UPDATE DEPOSIT SET AMOUNT = 5000 WHERE AMOUNT = 3000
UPDATE BORROW SET BNAME = 'C.G. ROAD' WHERE CNAME='ANIL'
UPDATE DEPOSIT SET ACTNO=111,AMOUNT=5000 WHERE  BNAME='SANDIP'
UPDATE DEPOSIT SET AMOUNT=7000 WHERE CNAME='KRANTI'
UPDATE BRANCH SET BNAME='ANDHERI WEST' WHERE BNAME='ANDHERI'
UPDATE DEPOSIT SET BNAME='NEHRU PALACE' WHERE CNAME='MEHUL'
UPDATE DEPOSIT SET AMOUNT=5000 WHERE ACTNO BETWEEN 103 AND 107
UPDATE DEPOSIT SET ADATE='1995-04-01' WHERE CNAME='ANIL'
UPDATE DEPOSIT SET AMOUNT = 10000 WHERE CNAME = 'MINU'
UPDATE DEPOSIT SET AMOUNT = 5000 , ADATE = '1996-04-01' WHERE CNAME = 'PRAMOD'

