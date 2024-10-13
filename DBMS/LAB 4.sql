--1. Add two more columns City VARCHAR (20) and Pincode INT.
alter table deposit add city varchar(20), pincode int
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
alter table deposit alter column cname varchar(35)
--3. Change the data type DECIMAL to INT in amount Column.
alter table deposit alter column amount int
--4. Rename Column ActNo to ANO.
sp_rename 'deposit.actno','ano'
--5. Delete Column City from the DEPOSIT table.
alter table deposit drop column city
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
sp_rename 'deposit','deposit_detail'


--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
sp_rename 'deposit_detail.adate','aopendate'
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
alter table deposit_detail drop column aopendate
--3. Rename Column CNAME to CustomerName.sp_rename 'deposit_detail.cname','customername'create table student_detail(	Enrollment_No varchar(50),	sname varchar(50),	cpi decimal(5,2),	birthdate datetime)select *from student_detail--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
alter table student_detail add city varchar(20) not null default 'rajkot', backlog int 
--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
alter table student_detail alter column sname varchar(35)
--3. Change the data type DECIMAL to INT in CPI Column.
alter table student_detail alter column cpi int
--4. Rename Column Enrollment_No to ENO.
sp_rename 'student_detail.enrollment_no','eno'
--5. Delete Column City from the student_detail table.
alter table student_detail drop column city
--6. Change name of table student_detail to STUDENT_MASTER.
sp_rename 'student_detail','student_master'

--drop,truncate,delete

select *from deposit_detail
--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 
delete from deposit_detail where amount>=4000
--2. Delete all the accounts CHANDI BRANCH.
delete from deposit_detail where bname = 'chandi'
--3. Delete all the accounts having account number (ANO) is greater than 105.
delete from deposit_detail where ano>105
--4. Delete all the records of Deposit_Detail table. (Use Truncate)
truncate table deposit_detail
--5. Remove Deposit_Detail table. (Use Drop)drop table deposit_detail