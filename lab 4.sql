---------LAB 4-------------
-----------------------PART A------------------------
--------ALTER OPERATION--------------

-----------------Add two more columns City VARCHAR (20) and Pincode INT
 ALTER TABLE DEPOSIT
 ADD CITY VARCHAR(20),
 PINCODE INT

 ---------------Change the size of CNAME column from VARCHAR (50) to VARCHAR (35)
 ALTER TABLE DEPOSIT
 ALTER COLUMN CNAME VARCHAR(35)

 -------------Change the data type DECIMAL to INT in amount Column.
 ALTER TABLE DEPOSIT
 ALTER COLUMN AMOUNT INT

 ----------------Rename Column ActNo to ANO.
 SP_RENAME 'DEPOSIT.ACTNO','ANO'

 -------------Delete Column City from the DEPOSIT table.
 ALTER TABLE DEPOSIT
 DROP COLUMN CITY

 ----------------Change name of table DEPOSIT to DEPOSIT_DETAIL.
 SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'


 ------------------------DELETE,TRUNCATE,DROP OPERATIONS-----------------

 ------------------Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
 DELETE FROM DEPOSIT_DETAIL
 WHERE AMOUNT>=4000

 --------------------Delete all the accounts CHANDI BRANCH.
 DELETE FROM DEPOSIT_DETAIL
 WHERE BNAME='CHANDI'

 ---------------------Delete all the accounts having account number (ANO) is greater than 105.
 DELETE FROM DEPOSIT_DETAIL
 WHERE ANO>105

 ----------------------Delete all the records of Deposit_Detail table. (Use Truncate)
 TRUNCATE TABLE DEPOSIT_DETAIL

 ----------------------Remove Deposit_Detail table. (Use Drop)
 DROP TABLE DEPOSIT_DETAIL

 --------------------ALL OPERATIONS----------------
 ----------------PART B---------------
 -------------------Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
 SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE'

 -------------------Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
 ALTER TABLE DEPOSIT_DETAIL
 DROP COLUMN AOPENDATE


 ------------------Rename Column CNAME to CustomerName.
 SP_RENAME 'DEPOSIT_DETAIL.CNAME','CustomerName'


 ---------------Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
 SELECT*FROM EMPLOYEE_MASTER
 DELETE FROM EMPLOYEE_MASTER
 WHERE SALARY>=14000

 ----------------Delete all the Employees who belongs to ‘RAJKOT’ city.
 DELETE FROM EMPLOYEE_MASTER
 WHERE CITY='RAJKOT'

 ----------------Delete all the Employees who joined after 1-1-2007.
 DELETE FROM EMPLOYEE_MASTER
 WHERE JOININGDATE>'2007-01-01'

 -----------------Delete the records of Employees whose joining date is null and Name is not null.
 DELETE FROM EMPLOYEE_MASTER
 WHERE JOININGDATE IS NULL AND EMPNAME IS NOT NULL

 -----------------Delete the records of Employees whose salary is 50% of 20000.
 DELETE FROM EMPLOYEE_MASTER
 WHERE SALARY=20000*0.5

 --------------------Delete the records of Employees whose City Name is not EMPTY
 DELETE FROM EMPLOYEE_MASTER
 WHERE CITY IS NOT NULL

 ---------------------Delete all the records of Employee_MASTER table. (Use Truncate)
 TRUNCATE TABLE EMPLOYEE_MASTER

 ----------------------Remove Employee_MASTER table. (Use Drop)
 DROP TABLE EMPLOYEE_MASTER
