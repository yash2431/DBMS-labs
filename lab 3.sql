-----PART A SELECT INTO----------
SELECT * FROM CRICKET

----Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET 

----Create table T20 from cricket with first two columns with no data
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=2
SELECT * FROM T20

-----Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1=2
SELECT * FROM IPL

------PART A UPDATE OPERATION------------
----Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=2000
WHERE AMOUNT BETWEEN 3000 AND 5000

--------Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW
SET BNAME='C.G. ROAD'
WHERE CNAME='ANIL'

---------Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSIT
SET ACTNO=111
WHERE CNAME='SANDIP'

UPDATE DEPOSIT
SET AMOUNT=5000
WHERE CNAME='SANDIP'

-------Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=7000
WHERE CNAME='KRANTI'

---------Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH
SET BNAME='ANDHERI WEST'
WHERE BNAME='ANDHERI'

----------Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE DEPOSIT
SET BNAME='NEHRU PALACE'
WHERE CNAME='MEHUL'

-----------Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=5000
WHERE ACTNO BETWEEN 103 AND 107

------------Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE DEPOSIT
SET ADATE='1995-04-01'
WHERE CNAME='ANIL'

-------------Update the amount of MINU to 10000. (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=10000
WHERE CNAME='MINU'

-------------Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=5000
WHERE CNAME='PRAMOD'

UPDATE DEPOSIT
SET ADATE='1996-04-01'
WHERE CNAME='PRAMOD'

-------------------PART B--------------------
-------SELECT INTO-------
SELECT * FROM EMPLOYEE

-------------Create table Employee_detail from Employee with all the columns and data.
SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE
SELECT * FROM EMPLOYEE_DETAIL

-------------Create table Employee_data from Employee with first two columns with no data.
SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=2
SELECT * FROM EMPLOYEE_DATA

---------------Create table Employee_info from Employee with no Data
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1=2
SELECT * FROM EMPLOYEE_INFO

--------------PART C---------------
----SELECT INTO------
---------Insert the Data into Employee_info from Employee whose CITY is Rajkot
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE
INSERT INTO EMPLOYEE_INFO
SELECT * FROM EMPLOYEE WHERE CITY='RAJKOT'

---------Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_INFO
SELECT * FROM EMPLOYEE WHERE AGE>32