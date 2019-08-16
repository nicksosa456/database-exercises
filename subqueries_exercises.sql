use employees;

select concat_ws(' ', first_name, last_name)
from employees
where hire_date = (
    select hire_date from employees where emp_no = 101010
    );

select *
from titles
where emp_no in (
    select emp_no from employees where first_name = 'Aamod'
    );

select first_name, last_name
from employees
where gender = 'f' and emp_no in (select emp_no from dept_manager where to_date = '9999-01-01');

select dept_name
from departments
where dept_no in (
    select dept_no from dept_manager
    where emp_no in (
        select emp_no from employees where gender = 'f'
        ) and to_date > now()
    )
order by dept_name;

select first_name, last_name
from employees
where emp_no = (
    select emp_no from salaries
    where to_date > now()
    order by salary desc limit 1
    )