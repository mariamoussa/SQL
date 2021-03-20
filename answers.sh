# 1. Get all the names of students in the database 
SELECT name 
FROM students;

# 2. Get all the data of students above 30 years old 
SELECT *
FROM students
WHERE Age>30;

# 3. Get the names of the females who are 30 years old 
SELECT name
FROM students
WHERE Gender="F" AND Age="30";

# 4. Get the number of Points of Alex 
SELECT Points
FROM students
WHERE name="Alex";

# 5. Add yourself as a new student (your name, your age...) 
INSERT INTO students
VALUES (8,"Maria", 24, "F", 500);

# 6. Increase the points of Basma because she solved a new exercise 
UPDATE students
SET Points=Points+50
WHERE name="Basma";

# 7. Decrease the points of Alex because he's late today 
UPDATE students
SET Points=Points-20
WHERE name="Alex";

# Part 2

# Create table graduates
CREATE TABLE graduates(
ID INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
Name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation TEXT);

# Copy Layal's data from students to graduates
INSERT INTO graduates(Name, Age, Gender, Points)
VALUES ("Layal",18,"F",350);

# Add the graduation date previously mentioned to Layal's record in graduates
UPDATE graduates
SET Graduation="08/09/2018"
WHERE name="Layal";

# Remove Layal's record from students
DELETE FROM students 
WHERE name="Layal";

