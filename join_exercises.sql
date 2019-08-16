use employees;

select d.dept_name, concat(e.first_name, ' ', e.last_name) as manager_name
from employees as e
    join dept_manager as m on m.emp_no = e.emp_no
    join dept_emp as de on de.emp_no = e.emp_no
    join departments as d on d.dept_no = de.dept_no
where m.to_date = '9999-01-01' and m.emp_no=e.emp_no
order by dept_name;

select d.dept_name, concat(e.first_name, ' ', e.last_name) as manager_name
from employees as e
    join dept_manager as m on m.emp_no = e.emp_no
    join dept_emp as de on de.emp_no = e.emp_no
    join departments as d on d.dept_no = de.dept_no
where m.to_date = '9999-01-01' and m.emp_no=e.emp_no and e.gender = 'f'
order by dept_name;

select t.title as 'Title', count(t.title) as 'Count'
from employees as e
    join titles as t on t.emp_no = e.emp_no
    join dept_emp as de on de.emp_no = e.emp_no
    join departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Customer Service' and t.to_date  = '9999-01-01'
group by title
order by t.title;

select d.dept_name, concat(e.first_name, ' ', e.last_name) as manager_name, s.salary
from employees as e
    join dept_manager as m on m.emp_no = e.emp_no
    join dept_emp as de on de.emp_no = e.emp_no
    join departments as d on d.dept_no = de.dept_no
    join salaries as s on s.emp_no = e.emp_no
where m.to_date = '9999-01-01' and m.emp_no=e.emp_no and s.to_date = '9999-01-01'
order by dept_name;

select concat(e.first_name, ' ', e.last_name) as 'employee_name', d.dept_name, concat(ee.first_name, ' ', ee.last_name) as manager_name
from employees as e
    join dept_emp as de on e.emp_no = de.emp_no
    join departments as d on de.dept_no = d.dept_no
    join dept_manager as dm on d.dept_no = dm.dept_no
    join employees as ee on ee.emp_no = de.emp_no
where de.to_date > curdate() and dm.to_date > curdate()
order by d.dept_name;

select concat(e.first_name, ' ', e.last_name) as 'employee_name', d.dept_name, concat(ee.first_name, ' ', ee.last_name) as manager_name
from employees as e
    join dept_emp de on e.emp_no = de.emp_no
    join departments d on de.dept_no = d.dept_no
    join dept_manager dm on d.dept_no = dm.dept_no
    join employees as ee on dm.emp_no = ee.emp_no
where dm.to_date = '9999-01-01' and de.to_date = '9999-01-01'
order by d.dept_name;