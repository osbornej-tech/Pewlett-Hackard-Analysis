# Pewlett-Hackard-Analysis
# Overview of the Analysis 

Employees are eligible for retirement if they were born between 1952 and 1955. For this analysis, we utilize SQL queries:
- create a Retirement Titles table to identify employees who are born between January 1, 1952 and December 31, 1955.
- create a Unique Titles table that contains the employee number, first and last name, and most recent title.
- create a retiring table that summaries the number of titles filled by employees who are retiring.
- create a mentorship-eligibilty table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

# Results

ERD Schema 

<img src= 'https://github.com/osbornej-tech/Pewlett-Hackard-Analysis/blob/main/Images/EmployeeDB_revised.png'>

In the initial employee database, there were 300024 employees listed due to multiples having multiple hire dates and positions. By selecting distinct employees and their recent hire date, we are able to retrieve a unique list of titles per employee.
There are 90,398 employees listed in the unique titles table. The following is a breakdown of the unique titles and number of employees at Pewlett Hackard. 

Current List of Employee Count by Title

<img src = 'https://github.com/osbornej-tech/Pewlett-Hackard-Analysis/blob/main/Images/current_employee_ct.png'>

# Summary
There are 133,776 employees who will be retiring in the silver tsunami.The breakdown by role is provided in the image below. 
Retiring Employee Count 

<img src = 'https://github.com/osbornej-tech/Pewlett-Hackard-Analysis/blob/main/Images/retiring_roles_counts.png'>

By the comparing the number of current emloyee count that of the retiring employee count, we see that there is sufficient employees to cover each role. 

<img src = 'https://github.com/osbornej-tech/Pewlett-Hackard-Analysis/blob/main/Images/remaining_staff.png'>

Two questions that should be considered include: 
  - Who are the two managers? 
    Query: SELECT * FROM uniquetitles WHERE title ='Manager')
  
  - What are the roles and the salary of the ten highest paid employees?
    Query: SELECT a.emp_no, title, salary from uniquetitles as a
    LEFT JOIN salaries on a.emp_no = salaries.emp_no
    ORDER BY salary desc 
    LIMIT 10
    
  <img src ='https://github.com/osbornej-tech/Pewlett-Hackard-Analysis/blob/main/Images/top_10_highest_paid.png'>

  - What is the succession plan for the 2 managers that are employeed within the organization?
  - Who are potential employees that should be considered for promotion to the senior roles?

# Resources:
PostgreSQL for performing SQL analysis

DataFiles 
Employee, department_manager, salaries, titles, departments
