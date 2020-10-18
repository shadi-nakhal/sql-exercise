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



