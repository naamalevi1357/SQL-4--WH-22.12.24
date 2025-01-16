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
