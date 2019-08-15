use employees;

select * from employees where first_name in ('Irena', 'Vidya', 'Maya') order by last_name DESC, first_name DESC;
select * from employees where gender = 'm' and (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya');

select * from employees where last_name like 'E%';
select * from employees where last_name like 'e%' or last_name like '%e' order by emp_no DESC;
select * from employees where last_name like 'e%' and last_name like '%e';

select * from employees where hire_date between '1990-01-01' and '1999-12-31';

select * from employees where birth_date like '%12-25';
select * from employees where birth_date like '%12-25' and (hire_date between '1990-01-01' and '1999-12-31') order by birth_date, hire_date desc ;

select * from employees where last_name like '%q%';
select * from employees where last_name like '%q%' and last_name not like '%qu%';

select concat_ws(' ', first_name, last_name) as 'Full Name' from employees where last_name like 'e%' and last_name like '%e';

select *, datediff(curdate(), hire_date) as 'days_employed' from employees where birth_date like '%12-25' and (hire_date between '1990-01-01' and '1999-12-31') order by birth_date, hire_date desc ;
