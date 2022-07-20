create database payroll_service;

create table employee_payroll2(
Id int identity(1,1) PRIMARY KEY,
Name varchar(200),
Salray float,
StartDate date
);


INSERT INTO employee_payroll2
VALUES ( 'sachain', 532, '2012-03-12'),( 'Deepak', 6345, '2014-06-04'),
( 'Dhoni', 343, '2021-12-12'),( 'Virat', 54544, '2018-12-04');

select * from employee_payroll2;
select Id,Name from employee_payroll2;

select * from employee_payroll2 where Salray=532;
select * from employee_payroll2 where Name='Deepak' or Id=1;

select *from employee_payroll2 where StartDate between cast('2018-12-04' as date) and getdate();

ALTER TABLE  employee_payroll2 ADD Gender char(1);
UPDATE employee_payroll2 SET Gender='M' ;


select sum(Salray) as TotalSalary from employee_payroll2;

select avg(Salray) as AvgSalary from employee_payroll2;

select min(Salray) as MinSalary from employee_payroll2;

select max(Salray) as MaxSalary from employee_payroll2;

select count(Salray) as CountSalary from employee_payroll2;


ALTER TABLE  employee_payroll2 ADD PhoneNumber bigint
ALTER TABLE  employee_payroll2 ADD Department varchar(200) not null default 'HR';

ALTER TABLE  employee_payroll2 ADD Department varchar(200) not null default 'HR';
ALTER TABLE  employee_payroll2 ADD Address varchar(200)  default 'Rajasthan';


-------------UC9 Extend the employee table----------------
ALTER TABLE employee_payroll2 ADD BasicSalary float,Deductions float,TaxablePay float,IncomeTax float,NetPay float;
select * from employee_payroll2;


--delete from employee_payroll2 where Id=1;
--------------UC10 ability to make same employee for the two different department-----------
INSERT INTO employee_payroll2(Name,Salray,StartDate,Gender,PhoneNumber,Department,Address,BasicSalary,Deductions,TaxablePay,IncomeTax,NetPay)
VALUES('sachain',50002,'2008-02-02','M',5436787654,'Sales','Mysore',4567860,200,3000,8765,600000);


-------UC11-creating the new tables for many to many relation-----------------
CREATE TABLE EmployeeDeparment(
DeptId int identity(1,1) PRIMARY KEY,

EmployeeID int FOREIGN KEY REFERENCES employee_payroll2(Id));


select * from EmployeeDeparment;


INSERT INTO EmployeeDeparment(EmployeeID) values(1);
INSERT INTO EmployeeDeparment(EmployeeID) values(2);
INSERT INTO EmployeeDeparment(EmployeeID) values(3);
INSERT INTO EmployeeDeparment(EmployeeID) values(4);
INSERT INTO EmployeeDeparment(EmployeeID) values(5);
INSERT INTO EmployeeDeparment(EmployeeID) values(6);

-----------------------------------------
create table payroll
(
	Payroll_ID int not null primary key,
	Basic_Pay money not null,
	Deduction float not null,
	Taxable real, 
	Income_Tax float,
	Netpay real, 
)

  insert into payroll values
	(101,800000,2200.20,6000,50000,25000),
	(102,900000,6600.20,4000,70000,55000),
	(103,700000,7700.20,5000,70000,55000),
	(104,600000,9900.10,3000,80000,56000)

	select *from payroll
--------------------------------------------
	create table Company(
	Company_ID int primary key,
	ComapnyName varchar(20));

	insert into Company values
	(11,'Apple'),
	(22,'Google'),
	(33,'IBM'),
	(44,'TCS')

	select * from Company

	-----------------------------------------

	create table Employee(
	Employee_ID int not null primary key,
	Name varchar(20) not null,
	Gender varchar(1) not null,
	Basic_pay money not null,
	StartDate date not null,
	PhoneNumber varchar(10),
	Addres varchar(60),
	CompanyEmployeeID int FOREIGN KEY REFERENCES Company(Company_ID),
	PayrolID int FOREIGN KEY  REFERENCES Payroll(Payroll_ID));

	insert into Employee values
	(001,'Karan','M',444444,'2018-07-11','8502012867','Gurguram',11,101),
	(002,'Bittu','M',800000,'2021-09-05','8502018567','Alwar',22,102),
	(003,'Kirti','F',600000,'2019-08-09','7894561238','Ajmer',33,103),
	(004,'Hement','M',900000,'2018-07-05','9632587417','Dehli',44,104);

	select * from Employee;


