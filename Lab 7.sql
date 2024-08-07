CREATE TABLE EMP(
EID INT,
ENAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY DECIMAL(8,2),
JOININGDATE DATETIME,
CITY VARCHAR(25)
);

INSERT INTO EMP VALUES
(101,'RAHUL','ADMIN',56000,'1990-JAN-01','RAJKOT'),
(102,'HARDIK','IT',18000,'1990-SEP-25','AHMEDABAD'),
(103,'BHAVIN','HR',25000,'1991-MAY-14','BARODA'),
(104,'BHOOMI','ADMIN',39000,'1991-FEB-08','RAJKOT'),
(105,'ROHIT','IT',17000,'1990-JUL-23','JAMNAGAR'),
(106,'PRIYA','IT',9000,'1990-OCT-18','AHMEDABAD'),
(107,'BHOOMI','HR',34000,'1991-DEC-25','RAJKOT')

SELECT * FROM EMP

----------------------PART A--------------------------------
--------Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM,
MIN(SALARY) AS MINIMUM
FROM EMP

-----------Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively. SELECT SUM(SALARY) AS TOTAL_SAL,
AVG(SALARY) AS AVERAGE_SAL
FROM EMP

-------------Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID) AS TOTAL_EMPLOYEE
FROM EMP

-----------------Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS HIGHEST_SALARY
FROM EMP
WHERE CITY = 'RAJKOT'

-----------Give maximum salary from IT department.
SELECT MAX(SALARY) AS MAXIMIUM_SALARY
FROM EMP
WHERE DEPARTMENT = 'IT'

-------------Count employee whose joining date is after 8-feb-91.
SELECT COUNT(ENAME) AS TOTAL_EMPLOPYEES
FROM EMP 
WHERE JOININGDATE>'1991-FEB-08'

------------Display average salary of Admin department.
SELECT AVG(SALARY) AS AVERAGE_SALARY
FROM EMP
WHERE DEPARTMENT = 'ADMIN'

---------------Display total salary of HR department.
SELECT SUM(SALARY) AS TOTAL_SALARY
FROM EMP
WHERE DEPARTMENT = 'HR'

----------------Count total number of cities of employee without duplication.SELECT COUNT(DISTINCT CITY) AS DISTINCT_CITIES
FROM EMP

----------------Count unique departments.SELECT COUNT(DISTINCT DEPARTMENT) AS UNIQUE_DEPARTMENT
FROM EMP

------------------Give minimum salary of employee who belongs to Ahmedabad
SELECT MIN(SALARY) AS MINIMUM_SALARY
FROM EMP
WHERE CITY = 'AHMEDABAD'

----------------Find city wise highest salary.SELECT CITY,MAX(SALARY) AS MAXIMUM_SALARY
FROM EMP
GROUP BY CITY

----------------Find department wise lowest salary.
SELECT DEPARTMENT,MIN(SALARY) AS LOWEST_SALARY
FROM EMP
GROUP BY DEPARTMENT

----------------Display city with the total number of employees belonging to each city.
SELECT CITY,COUNT(EID) AS TOTAL_EMPLOYEES
FROM EMP
GROUP BY CITY

-----------------Give total salary of each department of EMP table.
SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPARTMENT

---------------------Give average salary of each department of EMP table without displaying the respective department name.
SELECT AVG(SALARY) AS AVERAGE_SALARY
FROM EMP
GROUP BY DEPARTMENT

--------------------------PART B---------------------------
--------------------Count the number of employees living in Rajkot.
SELECT COUNT(EID) AS EMPLOYEES
FROM EMP
WHERE CITY='RAJKOT'

---------------------Display the difference between the highest and lowest salaries. Label the column DIFFERENCE
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE
FROM EMP

--------------------Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(EID) AS EMPLOYEES
FROM EMP
WHERE JOININGDATE<'1991-JAN-01'

----------------------------------PART C----------------------------
-------------Count the number of employees living in Rajkot or Baroda.
SELECT COUNT(EID) AS EMPLOYEES
FROM EMP
WHERE CITY IN ('RAJKOT','BARODA')

------------------Display the total number of employees hired before 1st January, 1991 in IT department.
SELECT COUNT(EID) AS EMPLOYEES
FROM EMP
WHERE JOININGDATE<'1991-JAN-01' AND DEPARTMENT='IT'

-----------------Find the Joining Date wise Total Salaries.
SELECT JOININGDATE,SUM(SALARY) AS TOTAL_SALARY
FROM EMP
GROUP BY JOININGDATE

-----------------Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT,CITY,MAX(SALARY) AS MAXIMUM_SALARY
FROM EMP
WHERE CITY LIKE 'R%'
GROUP BY DEPARTMENT,CITY



