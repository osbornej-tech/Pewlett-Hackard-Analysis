-- Create retirement table with titles
select e.emp_no
	,e.first_name
	,e.last_name
	,t.title
	,t.from_date
	,t.to_date
into retirement_titles
from emp as e
left join titles as t on t.emp_no = e.emp_no
where birth_date between ('1952-01-01') and ('1955-12-31')


select count(emp_no) from emp;
select count(emp_no) from titles
select distinct count(emp_no) from retirement_titles-- limit 10;

--Create table that has distinct roles, employee with their latest hire to date
-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO uniquetitles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Count number of unique employees who are retiring
select count(emp_no) from uniquetitles

-- Count the number of employees retiring by title, create a new table
select count(title)
	,title 
into retiring_titles
from uniquetitles
group by title
order by count(title) desc

--Deliverable 2
-- Create table for mentorship eligibilty data
select distinct on (e.emp_no) e.emp_no
	,e.first_name
	,e.last_name
	,e.birth_date
	,d.from_date
	,d.to_date
	,t.title
into mentorship_eligibilty
from emp as e
left join dept_emp as d on e.emp_no = d.emp_no
left join titles as t on e.emp_no = t.emp_no
where birth_date between '1965-01-01' and'1965-12-31'
	and d.to_date = '9999-01-01'
order by emp_no

--Number of employees and titles of the silver tsunami
select count(title),title
from mentorship_eligibilty 
group by title
order by count(title) desc


-- Number of current employees by title
select count(title), title from uniquetitles
group by title
order by count(title) desc


select count(emp_no) from emp -- Number of employees = 300024