/*
Create a table named "employees" with columns for employee_id, first_name, last_name, and hire_date. Then, insert three rows of data into this table and
 write a query to select all employees, ordered by their last name in descending order.
*/
-- first creating databse
create database company;

-- database is created, now we can use as

use company; -- company database will be used now

create table employees(
employee_id int primary key,  -- making employee_id a primary key and type of integer
first_name varchar(10) not null, -- first name which cannot be empty and maxlength of 10 characters
last_name varchar(10) not null, -- last name which cannot be empty and maxlength of 10 characters
hire_date date					-- hire date
);

-- now inserting data into table
insert into employees(employee_id,first_name,last_name,hire_date) -- 4 parameters now we have to insert like this first id and others like that !!
values(101,'Cristiano','Ronaldo','2009-08-12'),
	(102,'lionel','messi','2005-02-28'),
    (103,'toni','kroos','2014-08-10');
    
select * from employees   -- select *(all) from employess
order by last_name desc;  -- sorting(order) by their last name in descending order

-- additional, lets try out with hire date in ascending order
select * from employees   -- select *(all) from employess
order by hire_date asc;  -- sorting(order) by their last name in ascending order

-- tweak around different variables and types 
