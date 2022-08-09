-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- Retrieve the title, from_date, and to_date columns from the Titles table.
-- Create a new table using the INTO clause.
-- Join both tables on the primary key.
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. 
-- Then, order by the employee number.

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles
	ON (e.emp_no = titles.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Export the Retirement Titles table from the previous step as retirement_titles.csv and 
-- save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- Note: There are duplicate entries for some employees because they have switched titles over the years. 

SELECT * from retirement_titles;
-- Use the following instructions to remove these duplicates and keep only the most recent title of each employee.

-- Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.

-- Use Dictinct with Orderby to remove duplicate rows
-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
-- These columns will be in the new table that will hold the most recent title of each employee.
-- Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows 
-- defined by the ON () clause.
-- Exclude those employees that have already left the company by filtering on to_date to keep only those dates that are equal to '9999-01-01'.
-- Create a Unique Titles table using the INTO clause.
-- Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.

SELECT DISTINCT ON (r.emp_no) r.emp_no,
r.first_name,
r.last_name,
r.title

INTO retirement_titles_unique
FROM retirement_titles as r 
WHERE (to_date='9999-01-01')
ORDER BY emp_no, to_date DESC;


-- Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
select * from retirement_titles_unique;

-- Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees 
-- by their most recent job title who are about to retire.
-- First, retrieve the number of titles from the Unique Titles table.
-- Then, create a Retiring Titles table to hold the required information.
-- Group the table by title, then sort the count column in descending order.

SELECT COUNT(u.title), u.title
INTO retiring_titles
FROM retirement_titles_unique as u
GROUP BY u.title
ORDER by u.count DESC;

-- Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
SELECT * FROM retiring_titles;

select sum(count) from retiring_titles;

-- Using the ERD you created in this module as a reference and your knowledge of SQL queries, 
-- create a mentorship-eligibility table that holds the current employees who were born between 
-- January 1, 1965 and December 31, 1965.
-- In the Employee_Database_challenge.sql file, write a query to create a Mentorship Eligibility table 
-- that holds the employees who are eligible to participate in a mentorship program.

-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Retrieve the from_date and to_date columns from the Department Employee table.
-- Retrieve the title column from the Titles table.
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number 
-- for each set of rows defined by the ON () clause.
-- Create a new table using the INTO clause.
-- Join the Employees and the Department Employee tables on the primary key.
-- Join the Employees and the Titles tables on the primary key.
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	titles.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
	on (e.emp_no = de.emp_no)
INNER JOIN titles as titles
	on (e.emp_no = titles.emp_no)
WHERE (de.to_date='9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' and '1965-12-31')
ORDER BY e.emp_no;

Select * from mentorship_eligibility;

select count(*) from mentorship_eligibility;

-- -- Filter the data on the to_date column to all the current employees, 
-- then filter the data on the birth_date columns to get all the employees 
-- whose birth dates are between January 1, 1965 and December 31, 1965.
-- Order the table by the employee number.
-- Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.



