-- database
create database P_set;
use P_set;

create table students (
	student_id int primary key,
	name varchar(50) not null,
	age int,
	email varchar(100) unique,
	city varchar(50));
    
select * from students;

create table employees(
	emp_id int primary key,
    emp_name varchar(100) not null,
    salary decimal(10,2)not null,
    department varchar(50),
    join_date date,
    phone varchar(15) unique);

select * from employees;

create table orders(
	order_id int primary key,
    customer_id int not null,
    order_date date not null,
    amount decimal(8,2),
    status varchar(20));
select * from orders;

# modify the full amount line using alter and modify
alter table orders
modify amount decimal(8,2) default 0.00;

alter table orders 
modify status varchar(20) default 'pending';

# DESCRIBE the full table
DESC orders;

create table students_details (
	id int primary key auto_increment,
    name varchar(100) not null,
    email varchar(100) unique,
    age int not null,
    course varchar(50) default 'Computer Science',
    marks decimal(5,2) default 0.00);
    
create table customers (
	customer_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50),
    email varchar(100) unique not null,
    age int, check(age >=18),
    country varchar(50) default 'India');
    
select * from customers;

create table bank_accounts (
	account_id int primary key auto_increment,
    account_holder varchar(100) not null,
    account_number varchar(20) unique not null,
    balance decimal(12,2) default 0.00,
    account_type varchar(20) default 'savings',
    age int check(age >=18));  # here adding the condition
    
create table employees_details (
	emp_id int primary key auto_increment,
    emp_name varchar(100) not null,
    email varchar(100) not null,
    salary decimal(10,2) not null check(salary >0),
    department varchar(50) default'IT',
    experience int default 0 check(experience >=0),
    status varchar(20) default 'Active');

select* from employees_details;
DESCRIBE employees_details;

alter table employees_details
modify email varchar(100) unique;

create table user_profiles(
	user_id int primary key auto_increment,
    username varchar(50) not null unique,
    gender enum ('male','female','other'),   # only this values are selected 
    bio text,
    birth_date date,
    created_at datetime,
    is_active boolean default true);