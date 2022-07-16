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