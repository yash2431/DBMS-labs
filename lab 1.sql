create database CSE_3A_265

--CREATE TABLE DEPOSIT
CREATE TABLE DEPOSIT(
ACTNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2),
ADATE DATETIME
);

--INSERT DEPOSIT VALUES
INSERT INTO DEPOSIT VALUES
(101,'ANIL','VRCE',1000,1995-03-01),
(102,'SUNIL','AJNI',5000,1996-01-04),
(103,'MEHUL','KAROLBAGH',3500,1995-11-17),
(104,'MADHURI','CHANDI',1200,1995-12-17),
(105,'PRAMOD','M.G.ROAD',3000,1996-03-27),
(106,'SANDIP','ANDHERI',2000,1996-03-31),
(107,'SHIVANI','VIRAR',1000,1995-09-05),
(108,'KRANTI','NEHRU PLACE',5000,1995-07-02),
(109,'MINU','POWAI',7000,1995-08-10);

SELECT * FROM DEPOSIT

--CREATE TABLE BRANCH
CREATE TABLE BRANCH(
BNAME VARCHAR(50),
CITY VARCHAR(50),
);

--INSERT TABLE VALUES
INSERT INTO BRANCH VALUES
('VRCE','NAGPUR'),
('AJNI','NAGPUR'),
('KAROLBAGH','DELHI'),
('CHANDI','DELHI'),
('DHARAMPETH','NAGPUR'),
('M.G. ROAD','BANGLORE'),
('ANDHERI','BOMBAY'),
('VIRAR','BOMBAY'),
('NEHRU PLACE','DELHI'),
('POWAI','BOMBAY');

SELECT * FROM BRANCH

--CREATE TABLE CUSTOMERS
CREATE TABLE CUSTOMERS(
CNAME VARCHAR(50),
CITY VARCHAR(50),
);

--INSERT TABLE VALUES
INSERT INTO CUSTOMERS VALUES
('ANIL','CALCUTTA'),
('SUNIL','DELHI'),
('MEHUL','BARODA'),
('MANDAR','PATNA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI','BOMBAY'),
('NAREN','BOMBAY');

SELECT * FROM CUSTOMERS

SELECT * FROM BORROW

