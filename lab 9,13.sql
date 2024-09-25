---------------------------- LAB 13 -----------------------------------------------------

--Advanced level Joins --



CREATE TABLE City (
    CityID INT PRIMARY KEY,
    Name VARCHAR(100) UNIQUE,
    Pincode INT NOT NULL,
    Remarks VARCHAR(255)
);

CREATE TABLE Village (
    VID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

INSERT INTO City (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Very Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');

INSERT INTO Village (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

----------------------------PART A-------------------------------
SELECT * FROM CITY
SELECT * FROM VILLAGE

--1. Display all the villages of Rajkot city.
SELECT CITY.NAME AS CITY,VILLAGE.NAME AS VILLAGES
FROM CITY INNER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID
WHERE CITY.NAME = 'RAJKOT'

--2. Display city along with their villages & pin code
SELECT CITY.NAME,VILLAGE.NAME,CITY.PINCODE
FROM CITY INNER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID

--3. Display the city having more than one village.
SELECT CITY.NAME
FROM CITY INNER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID
GROUP BY CITY.NAME
HAVING COUNT(VILLAGE.NAME)>1

--4. Display the city having no village.
SELECT CITY.NAME
FROM CITY LEFT OUTER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID
GROUP BY CITY.NAME
HAVING COUNT(VILLAGE.NAME) = 0

--5. Count the total number of villages in each city.
SELECT CITY.NAME,COUNT(VILLAGE.NAME) AS VILLAGES
FROM CITY INNER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID
GROUP BY CITY.NAME

--6. Count the number of cities having more than one village.
SELECT COUNT(CITY.NAME) AS CITIES
FROM CITY INNER JOIN VILLAGE ON CITY.CITYID = VILLAGE.CITYID
GROUP BY CITY.NAME
HAVING COUNT(VILLAGE.NAME)>1

-----------------------------CONSTRAINTS---------------------------------

CREATE TABLE STU_MASTER (
    Rno INT PRIMARY KEY,
    Name VARCHAR(50),
    Branch VARCHAR(10) DEFAULT 'General',
    SPI DECIMAL(3, 2) CHECK (SPI <= 10),
    Bklog INT CHECK (Bklog >= 0)          
);

INSERT INTO STU_MASTER (Rno, Name, Branch, SPI, Bklog) VALUES
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 0),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', DEFAULT, 4.50, 3);

UPDATE STU_MASTER
SET BRANCH = DEFAULT
WHERE BRANCH = 'GENERAL'

SELECT * FROM STU_MASTER


-------------------- LAB 9 --------------------------------------------------------------



--Sub Queries--
CREATE TABLE Stu_Detail (
    Rno INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT,
);

INSERT INTO Stu_Detail (Rno, Name, City, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

CREATE TABLE Academic (
    Rno INT,
    SPI DECIMAL(3, 1),
    Bklog INT
);

INSERT INTO Academic (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

CREATE TABLE Department (
    DID INT,
    DName VARCHAR(50)
);

INSERT INTO Department (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

----------------------------PART A------------------------------------
SELECT * FROM STU_DETAIL
SELECT * FROM ACADEMIC
SELECT * FROM DEPARTMENT

--1. Display details of students who are from computer department.
SELECT *
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Computer')


--2. Displays name of students whose SPI is more than 8.
SELECT Name
FROM Stu_Detail
WHERE Rno IN (SELECT Rno FROM Academic WHERE SPI > 8)


--3. Display details of students of computer department who belongs to Rajkot city.
SELECT *
FROM Stu_Detail
WHERE City = 'Rajkot'AND DID = (SELECT DID FROM Department WHERE DName = 'Computer')


--4. Find total number of students of electrical department.
SELECT COUNT(*) AS Total_Students
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Electrical')

--5. Display name of student who is having maximum SPI.
SELECT Name
FROM Stu_Detail
WHERE Rno = (SELECT Rno FROM Academic WHERE SPI = (SELECT MAX(SPI) FROM Academic))

--6. Display details of students having more than 1 backlog. 
SELECT *
FROM Stu_Detail
WHERE Rno IN (SELECT Rno FROM Academic WHERE Bklog > 1)

--------------SET OPERTAOR----------------------
---------------PART A-----------------------------------

CREATE TABLE Computer (
    RollNo INT,
    Name VARCHAR(50)
);


INSERT INTO Computer (RollNo, Name) VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

CREATE TABLE Electrical (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Electrical (RollNo, Name) VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');

SELECT * FROM COMPUTER
SELECT * FROM ELECTRICAL

--1. Display name of students who is either in Computer or in Electrical.
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Computer')
UNION
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Electrical')

--2. Display name of students who is either in Computer or in Electrical including duplicate data. 
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Computer')
UNION ALL
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Electrical')

--3. Display name of students who is in both Computer and Electrical. 
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Computer')
INTERSECT
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Electrical')

--4. Display name of students who are in Computer but not in Electrical. 
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Computer')
EXCEPT
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Electrical')

--5. Display name of students who are in Electrical but not in Computer. 
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Electrical')
EXCEPT
SELECT Name
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Computer')

--6. Display all the details of students who are either in Computer or in Electrical.
SELECT *
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Computer')
UNION
SELECT *
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Electrical')

--7. Display all the details of students who are in both Computer and Electrical. 
SELECT *
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Computer')
INTERSECT
SELECT *
FROM Stu_Detail
WHERE DID = (SELECT DID FROM Department WHERE DName = 'Electrical')










