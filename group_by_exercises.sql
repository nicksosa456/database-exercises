use employees;

select distinct title from titles;

select * from employees where last_name like 'e%' and last_name like '%e';
select distinct last_name as 'last name start and end with e' from employees where last_name like 'e%' and last_name like '%e' group by last_name ;

select distinct first_name, last_name as 'last name start and end with e' from employees where last_name like 'e%' and last_name like '%e';

select last_name, count(last_name) as 'times these specific last name show up' from employees where last_name like '%q%' and last_name not like '%qu%' group by last_name;

select count(gender) as 'amount of male/female employees with specific names', gender from employees where first_name in ('Irena', 'Vidya', 'Maya') group by gender;
