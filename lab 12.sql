-------------------PART A----------------------
SELECT * FROM PERSON
SELECT * FROM DEPT

--1. Find all persons with their department name & code.
SELECT PERSON.PersonName,DEPT.DepartmentName,DEPT.DepartmentCode
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID

--2. Find the person's name whose department is in C-Block.
SELECT PERSON.PersonName,DEPT.Location
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.Location='C-BLOCK'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT PERSON.PersonName,PERSON.Salary,DEPT.DepartmentName
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.City = 'JAMNAGAR'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT PERSON.PersonName,PERSON.Salary,DEPT.DepartmentName
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.City = 'RAJKOT'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
SELECT PERSON.PersonName
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.DepartmentName = 'CIVIL' AND PERSON.JoiningDate >'2001-08-01'

--6. Find details of all persons who belong to the computer department.
SELECT PERSON.PersonID,PERSON.PersonName,PERSON.DepartmentID,PERSON.Salary,PERSON.JoiningDate,PERSON.City
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.DepartmentName = 'COMPUTER'

--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
SELECT PERSON.PersonName,DEPT.DepartmentName
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE PERSON.JoiningDate > DATEADD(YEAR,-1,GETDATE())

--8. Find department wise person counts.
SELECT COUNT(PERSON.PersonID) AS PERSONCOUNT,DEPT.DepartmentName
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DEPT.DepartmentName

--9. Give department wise maximum & minimum salary with department name. 
SELECT MAX(PERSON.Salary) AS MAXIMUM_SALARY,MIN(PERSON.Salary) AS MINIMUM_SALARY ,DEPT.DepartmentName
FROM  PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DEPT.DepartmentName

--10. Find city wise total, average, maximum and minimum salary.
SELECT SUM(Salary) AS TOTAL_SALARY,AVG(Salary) AS AVERAGE_SALARY,
MAX(Salary) AS MAXIMUM_SALARY,MIN(Salary) AS MINIMUM_SALARY
FROM  PERSON
GROUP BY City

--11. Find the average salary of a person who belongs to Ahmedabad city. 
SELECT City,AVG(Salary) AS AVERAGE_SALARY
FROM PERSON
WHERE City = 'AHMEDABAD'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In 
--single column)

SELECT CONCAT(PERSON.PersonName, ' lives in ', PERSON.City, ' and works in ', DEPT.DepartmentName, ' Department.') 
AS EmployeeDetails
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID 

-------------------------PART B-----------------------------------
--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In 
--single column) 
SELECT CONCAT(PERSON.PersonName, ' earns ', PERSON.Salary, ' from ', DEPT.DepartmentName, ' department monthly.') 
AS EmployeeDetails
FROM PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID 

--2. Find city & department wise total, average & maximum salaries. 
SELECT PERSON.City,DEPT.DepartmentName,MAX(PERSON.Salary) AS MAXIMUM_SALARY,SUM(PERSON.Salary) 
AS TOTAL_SALARY,AVG(PERSON.Salary)  AS AVERAGE_SALARY 
FROM  PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY PERSON.City,DEPT.DepartmentName

--3. Find all persons who do not belong to any department. 
SELECT * FROM  PERSON 
WHERE DepartmentID IS NULL

--4. Find all departments whose total salary is exceeding 100000.
SELECT SUM(PERSON.Salary) AS TOTAL_SALARY,DEPT.DepartmentName
FROM  PERSON INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DEPT.DepartmentName
HAVING SUM(PERSON.Salary)>100000

-------------------------------------PART C----------------------------------
--1. List all departments who have no person. 
SELECT DEPT.DepartmentName
FROM DEPT
LEFT JOIN PERSON ON DEPT.DepartmentID = PERSON.DepartmentID
WHERE PERSON.DepartmentID IS NULL

--2. List out department names in which more than two persons are working. 
SELECT DEPT.DepartmentName
FROM DEPT
INNER JOIN PERSON ON DEPT.DepartmentID = PERSON.DepartmentID
GROUP BY DEPT.DepartmentName
HAVING COUNT(PERSON.PersonID) > 2

--3. Give a 10% increment in the computer department employee’s salary. (Use Update) 
UPDATE PERSON
INNER JOIN DEPT ON PERSON.DepartmentID = DEPT.DepartmentID
SET PERSON.Salary = PERSON.Salary * 1.10
WHERE DEPT.DepartmentName = 'COMPUTER'



