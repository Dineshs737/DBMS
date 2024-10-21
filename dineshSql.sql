
CREATE DATABASE demo0001;
USE demo0001;

-- structure  of user table
CREATE TABLE user(NIC CHAR(12) PRIMARY KEY ,
Email VARCHAR(30),
DateOfBirth DATE ,
FName VARCHAR(30),
Lname VARCHAR(30),
Gender CHAR(1),
Role VARCHAR(15));

DESC user;

-- #### 

-- structure  of student
CREATE TABLE student(StudentID CHAR(12),
GPA DECIMAL,
Sate VARCHAR(30),
NIC CHAR(12),
FOREIGN KEY(NIC) REFERENCES user(NIC));

DROP TABLE student;
DESC student;

-- ####

-- structure  of user admin

CREATE TABLE admin(AdminID CHAR(6) PRIMARY KEY ,
NIC CHAR(12),
AdminName VARCHAR(30),
FOREIGN KEY(NIC) REFERENCES user(NIC));

DESC admin;

-- ####



