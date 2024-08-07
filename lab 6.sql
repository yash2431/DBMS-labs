--------------SQL BUILT IN FUNCTIONS----------------
------------MATH FUNCTION----------------
------------PART A--------------
--1. Display the result of 5 multiply by 30
SELECT 5*30 AS RESULT

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5%2 AS RESULT
SELECT 5%3 AS RESULT

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2)
SELECT POWER(4,3)

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25),SQRT(30),SQRT(50)

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5),SQUARE(15),SQUARE(25)

--9. Find out the value of PI.
SELECT PI()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2)

--11. Find out exponential value of 2 and 3.
SELECT EXP(2),EXP(3)

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10),LOG(2)

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5),LOG10(100)

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25),SIGN(0),SIGN(25)

--16. Generate random number using function.
SELECT RAND()

----------------------PART B----------------------------
CREATE TABLE EMP_MASTER(
EMPNO INT,
EMPNAME VARCHAR(50),
JOININGDATE DATE,
SALARY DECIMAL(8,2),
COMMISSION INT,
CITY VARCHAR(50),
DEPTCODE VARCHAR(10)
);

INSERT INTO EMP_MASTER VALUES
(101,'KEYUR','2002-01-05',12000,4500,'RAJKOT','3@G'),
(102,'HARDIK','2004-02-15',14000,2500,'AHMEDABAD','3@'),
(103,'KAJAL','2006-03-14',15000,3000,'BARODA','3-GD'),
(104,'BHOOMI','2005-06-23',12500,1000,'AHMEDABAD','1A3D'),
(105,'HARMIT','2004-02-15',14000,2000,'RAJKOT','312A');

SELECT * FROM EMP_MASTER

--1. Display the result of Salary plus Commission.
SELECT SALARY+COMMISSION AS RESULT
FROM EMP_MASTER

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2)

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT 55%2
SELECT 55%3

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23,2),POWER(14,3)

------------------------------STRING FUNCTION------------------------
-------------PART A--------------------
--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL),LEN('  HELLO  '),LEN('')

--2. Display your name in lower & upper case.
SELECT LOWER('YASH'),UPPER('YASH')

--3. Display first three characters of your name.
SELECT LEFT('YASH',3)

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('DARSHAN UNIVERSITY',3,8)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('ABC123EFG','123','XYZ')
SELECT REPLACE('ABCABCABC','ABC','AB5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('a')
SELECT ASCII('A')
SELECT ASCII('z')
SELECT ASCII('Z')
SELECT ASCII(0)
SELECT ASCII(9)

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97)
SELECT CHAR(65)
SELECT CHAR(122)
SELECT CHAR(90)
SELECT CHAR(48)
SELECT CHAR(57)

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT LTRIM('HELLO WORLD       ')

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM('   HELLO WORLD    ')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function). 
SELECT CAST('1234.56' AS FLOAT)
SELECT CONVERT(FLOAT,'1234.56')

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CAST (10.58 AS INT)
SELECT CONVERT (INT,10.58)

--13. Put 10 space before your name using function. 
SELECT CONCAT('          ','YASH')

--14. Combine two strings using + sign as well as CONCAT ().
SELECT 'DARSHAN'+' '+'UNIVERSITY'
SELECT CONCAT('DARSHAN',' ','UNIVERSITY')

--15. Find reverse of “Darshan”.
SELECT REVERSE('DARSHAN')

--16. Repeat your name 3 times.
SELECT REPLICATE('YASH',3)

-----------------------------DATE FUNCTIONS--------------------------
---------PART A---------------------
--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS TODAY_DATE

--2. Write a query to find new date after 365 day with reference to today. 
SELECT DATEADD(DAY, 365, GETDATE()) AS NEW_DATE

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(), 'MMMM d yyyy h:mm tt') AS TODAY_DATE

--4. Display the current date in a format that appears as 03 Jan 1995. 
SELECT FORMAT(GETDATE(),'dd MMM yyyy') AS TODAY_DATE

--5. Display the current date in a format that appears as Jan 04, 96. 
SELECT FORMAT(GETDATE(),'MMM dd, yy') AS TODAY_DATE

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH,'31-DEC-08','31-MAR-09') AS TOTAL_MONTHS

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10. 
SELECT DATEDIFF(YEAR,'25-JAN-12','14-SEP-10') AS TOTAL_YEARS

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 
SELECT DATEDIFF(HOUR,'25-JAN-12 7:00','26-JAN-12 10:30') AS TOTAL_HOURS

--9. Write a query to extract Day, Month, Year from given date 12-May-16. 
SELECT DATEPART(DAY,'12-MAY-16') AS DAY_OF_THE_DATE
SELECT DATEPART(MONTH,'12-MAY-16') AS MONTH_OF_THE_DATE
SELECT DATEPART(YEAR,'12-MAY-16') AS YEAR_OF_THE_DATE

--10. Write a query that adds 5 years to current date. 
SELECT DATEADD(YEAR,5,GETDATE()) AS ADDED_DATE

--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH,-2,GETDATE()) AS SUBTRACTED_DATE

--12. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH,GETDATE())
SELECT DATEPART(MONTH,GETDATE())

--13. Write a query to find out last date of current month. 
SELECT EOMONTH(GETDATE())

--14. Calculate your age in years and months.
SELECT DATEDIFF(YEAR,'2004-11-13',GETDATE()) AS AGE
SELECT DATEDIFF(MONTH,'2004-11-13',GETDATE()) AS AGE

