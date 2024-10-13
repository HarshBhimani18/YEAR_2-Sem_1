create table student(
	StuID int,
	Firstname varchar(25),
	Lastname varchar(25),
	Website varchar(50),
	City varchar(25),
	Address varchar(100)
)

insert into student values 
(1011,'Keyur','Patel','techonthenet.com','rajkot','A-303 ''Vasant Kunj'', Rajkot'),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','''Ram Krupa'', Raiya Road'),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden'),
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','''Jig''s Home'', Narol'),
(1055,'Harmit','Mitel','@me.darshan.com','rajkot','B-55, Raj Residency'),
(1066,'Ashok','Jani',null,'Baroda','A502, Club House Building')	

--1. Display the name of students whose name starts with ‘k’.
select firstname from student where Firstname like 'k%'
--2. Display the name of students whose name consists of five characters.
select firstname from student where Firstname like '_____'
--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
select firstname,lastname from student where City like '_____a'
--4. Display all the students whose last name ends with ‘tel’.
select * from student where Lastname like '%tel' 
--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
select * from student where Firstname like 'ha%t'
--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
select * from student where Firstname like 'k_y%'
--7. Display the name of students having no website and name consists of five characters.
select Firstname from student where Website is null and Firstname like '_____'
--8. Display all the students whose last name consist of ‘jer’.
select * from student where Lastname like '%jer%'
--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
select * from student where City like '[rb]%'
--10. Display all the name students having websites.
select firstname from student where Website is not null 
--11. Display all the students whose name starts from alphabet A to H.
select * from student where Firstname like '[a-h]%'
--12. Display all the students whose name’s second character is vowel.
select * from student where Firstname like'_[aeiou]%'
--13. Display the name of students having no website and name consists of minimum five characters.
select firstname from student where Website is null and Firstname like '%_____%'
--14. Display all the students whose last name starts with ‘Pat’. 
select * from student where Lastname like 'pat%'
--15. Display all the students whose city name does not starts with ‘b’.
select * from student where City not like 'b%'

--part B
--1. Display all the students whose name starts from alphabet A or H.
select * from student where Firstname like '[ah]%'
--2. Display all the students whose name’s second character is vowel and of and start with H.
select * from student where Firstname like 'h[aeiou]%'
--3. Display all the students whose last name does not ends with ‘a’.
select * from student where Lastname not like '%a'
--4. Display all the students whose first name starts with consonant.
select * from student where Firstname not like 'h[aeiou]%'
--5. Display all the students whose website contains .net
select * from student where Website like '%.net%'

--Part – C:
--1. Display all the students whose address consist of -.
select * from student where Address like '%-%'
--2. Display all the students whose address contains single quote or double quote.
select * from student where Address like '%''%''%''%' or Address like '%"%"%'
update student set Address = '"Ram Krupa", Raiya Road' where Address = '''Ram Krupa'', Raiya Road'
update student set Address ='A-303 "Vasant Kunj", Rajkot' where Address = 'A-303 ''Vasant Kunj'', Rajkot'
--3. Display all the students whose website contains @.
select * from student where Website like '%@%'
--4. Display all the names those are either four or five characters.
select * from student where Firstname like '_____' or '_____'