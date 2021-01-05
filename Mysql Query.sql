-- Create Database
create database prasad_db;

-- Use Database
use prasad_db;

-- Create Table in Prasad_db
create table Employee(
Emp_id int primary key,FirstName varchar (50),LastName varchar (50),Age int,Department_Id int)

-- Show the Table all Records(*)
select * from Employee

-- Add/Insert Records into Table
insert into Employee values(122,'Prasad','Garudkar',28,328)
insert into Employee values(123,'Pravin','Nirdi',30,329)
insert into Employee values(124,'Akash','Nichal',29,330)
insert into Employee values(125,'Ashish','Chaudhary',31,331)
insert into Employee values(126,'Sanket','Pawar',27,331)
insert into Employee values(128,'Sanket','Pawar',27,331)
select * from Employee

-- Update Records in Table
update Employee set Department_Id=332 where Emp_id=126
select * from Employee

-- Delete Records in Table
delete from Employee where Emp_id=128
select * from Employee

-- Where Clause
Select * from Employee where Emp_id=124
Select FirstName from Employee where Emp_id=122
Select LastName from Employee where Emp_id=125
select FirstName,Department_Id,Age from Employee where Emp_id=126

-- Operators(AND,OR,NOT) with Where Clause
-- AND Operator(Both Condition Must True)
select FirstName from Employee where Emp_id=125 And Age=31
select Department_Id from Employee where Emp_id=122 And Age=28

-- OR Operator(One Condition Will Must True)
select Age from Employee where FirstName='Prasad' or Lastname='Chaudhary'
select Emp_id from Employee where LastName='Garudkar' or Department_Id=329

-- Not(Condition will Not True)
select * from Employee where not FirstName='Prasad'
select * from Employee where not Emp_id=125

-- Order by(Use for Sorting) asc/desc
-- asc
select * from Employee order by Emp_id asc
select * from Employee order by FirstName asc
-- desc
select * from Employee order by Emp_id desc
select * from Employee order by Age desc

-- is null/is not null (using where clause)
-- is null
select * from Employee where Age is not null
insert into Employee (Emp_id,FirstName) values(127,'Rish')
select * from Employee
select * from Employee where Department_Id is null

-- Using Both
select * from Employee where Emp_id is not null and Age is null
select * from Employee where Emp_id is null and Department_Id is not null
select * from Employee where Emp_id is null or Department_Id is not null

-- Add Column, Drop Column, Change Column Datatype(using Alter Table)
-- Alter(Add Colunn)
alter table Employee add Salary int not null
select * from Employee

update Employee set Salary=78000 where Emp_id=122
update Employee set Salary=58000 where Emp_id=123
update Employee set Salary=42000 where Emp_id=124
update Employee set Salary=31000 where Emp_id=125
update Employee set Salary=46000 where Emp_id=126
update Employee set Salary=59000 where Emp_id=127

-- Alter(delete column)
alter table Employee drop column Salary

-- count command
select count(*) from Employee
select count(Age) from Employee
select * from Employee

-- Operators
select * from Employee where Age >30
select * from Employee where Age >=31
select * from Employee where Age <30
select FirstName,LastName from Employee where Age <=27
select * from Employee where Age=27
select * from Employee where Age=28

-- Between Command
select * from Employee where Age between 28 and 30
-- IN Operator
select * from Employee where Age in (28,30,31,27)

select * from Employee
-- Primary Key
create table Emp(emp_id int primary key,name varchar (50),address varchar (100))
insert into emp values(1,'sam','pune')
insert into emp values(2,'max','mumbai')
insert into emp values(3,'john','delhi')
select * from Emp

-- Foreign Key
create table Dept(dept_id int primary key,dept_name varchar(50) not null,emp_id int,foreign key(emp_id) references Emp(emp_id))
insert into Dept values(123,'IT',1)
insert into Dept values(124,'Science',2)
insert into Dept values(125,'Sales',3)
insert into Dept values(126,'HR',NULL)
select * from Dept

-- Inner Join
select dept_id,dept_name,name,address from Emp inner join Dept on Emp.emp_id=Dept.emp_id

-- left Join
select dept_id,dept_name,name,address from Emp left join Dept on Emp.emp_id=Dept.emp_id
-- Right Join
select dept_id,dept_name,name,address from Emp right join Dept on Emp.emp_id=Dept.emp_id

-- Full Join
select dept_id,dept_name,name,address from Emp full outer join Dept on Emp.emp_id=Dept.emp_id




