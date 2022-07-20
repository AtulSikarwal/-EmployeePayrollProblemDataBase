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
