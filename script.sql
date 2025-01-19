---1

-- 1
SELECT Courses.*, Lecturers.name from Courses
INNER JOIN Lecturers on Courses.lecturer_id= Lecturers.lecturer_id 

--2
SELECT Courses.*, Lecturers.name from Courses
LEFT JOIN Lecturers on Courses.lecturer_id= Lecturers.lecturer_id 

-- 3
SELECT Courses.*, Lecturers.name from Courses
right JOIN Lecturers on Courses.lecturer_id= Lecturers.lecturer_id 

-- 4
SELECT Courses.*, Lecturers.name from Courses
LEFT JOIN Lecturers on Courses.lecturer_id= Lecturers.lecturer_id
WHERE Courses.lecturer_id is null

-- 5
--It didn't work for me, and there is a lecturer 1 who is not assigned to the course
--I tried several possibilities - but without success

SELECT Courses.*, Lecturers.name from Courses
right JOIN Lecturers on Courses.lecturer_id= Lecturers.lecturer_id 
WHERE Lecturers.lecturer_id is null

SELECT Lecturers.*, Courses.name from Lecturers
LEFT JOIN Courses on Lecturers.lecturer_id= Courses.lecturer_id
WHERE Lecturers.lecturer_id is null

-- 8
SELECT * FROM Lecturers WHERE name like '%i%';

-- 9
SELECT count(*) FROM Lecturers ;

-- 10
SELECT count(*) FROM Courses ;

---2


-- 1
SELECT Employees.*,Departments.name,Departments.budget, Departments.building  FROM Employees
INNER JOIN Departments on Employees.department_id=Departments.department_id 

-- 2
SELECT Employees.*,Departments.name,Departments.budget, Departments.building  FROM Employees
LEFT JOIN Departments on Employees.department_id=Departments.department_id 

-- 3
select Employees.*,Departments.name,Departments.budget, Departments.building  FROM Employees
LEFT JOIN Departments on Employees.department_id=Departments.department_id 
where Employees.department_id is null

-- 4
SELECT count(*) FROM Employees

-- 5
SELECT name, avg(salary)  FROM Employees GROUP by Employees.name

-- 6
SELECT Employees.*,Departments.name,Departments.budget, Departments.building  FROM Employees
INNER JOIN Departments on Employees.department_id=Departments.department_id
GROUP BY  Departments.name having MAX ( salary)
