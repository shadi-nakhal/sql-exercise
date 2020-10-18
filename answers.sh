problem-1: Get all the names of students in the database
Answer: SELECT name from students

Problem-2: Get all the data of students above 30 years old
Answer: SELECT name from students WHERE Age > "30"

Problem-3:Get the names of the females who are 30 years old
Answer: SELECT name from students WHERE Age = "30" AND Gender = "F"

Problem-4:Get the number of Points of Alex
Answer: SELECT Points from students WHERE name = "Alex"

Problem-5:Add yourself as a new student (your name, your age...)
Answer:INSERT INTO students (ID, name, Age, Gender, points)
VALUES ("8","Shadi","33","M","500")

Problem-6: Increase the points of Basma because she solved a new exercise
Answer:UPDATE students SET Points = "700" WHERE name = "Basma"


Problem-7: Decrease the points of Alex because hes late today.
Answer:UPDATE students SET Points = "180" WHERE name = "Alex"



Creating Table

CREATE TABLE gradutes (
	ID NOT NULL PRIMARY KEY,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation DATE
);

Copying from one table to another

INSERT INTO gradutes (ID, name, Age, Gender, Points)
SELECT id, name, Age, Gender, Points
FROM students WHERE name="Layal";

JOINS 

problem-1 Produce a table that contains, for each employee, his/her name, company name, and company date.

answer:

SELECT employees.name, companies.name, date
FROM employees
INNER JOIN companies
on employees.Company = companies.name


problem-2 Find the name of employees that work in companies made before 2000.

answer:

SELECT employees.name, companies.name, date
FROM employees
INNER JOIN companies
on employees.Company = companies.name
WHERE date < 2000

problem-3 Find the name of company that has a graphic designer.

answer:

SELECT companies.name
FROM employees
INNER JOIN companies
on employees.Company = companies.name
WHERE employees.Role = "Graphic Designer"

or 

SELECT Company from employees
WHERE Role = "Graphic Designer"


Count & Filter


problem-1 Find the person with the highest number of points in students

answer:

SELECT ID, name, Age, Gender, max(Points) as highest_Points FROM students


problem-2 Find the average of points in students

answer: SELECT avg(Points) as Average_Points FROM students


problem-3 Find the number of students that have 500 points

answer:

SELECT count(name) as Number_of_Students_that_have_500_pints FROM students
WHERE Points = 500


problem-4 Find the names of students that contains 's'

answer:
SELECT name FROM students
WHERE name like "%s%"

problem-5 Find all students based on the decreasing order of their points

answer :
SELECT name, Points FROM students
ORDER BY Points DESC




