
CREATE DATABASE demo0002;
USE demo0002;


-- student table structure 


CREATE TABLE user(
NIC CHAR(12) PRIMARY KEY ,
Email VARCHAR(30),
FName VARCHAR(30),
Lname VARCHAR(30),
Role VARCHAR(15)
);


--DESC user;

CREATE TABLE student (
    student_id CHAR(6) PRIMARY KEY,
    NIC CHAR(12) UNIQUE,
    name VARCHAR(30),
    batch CHAR(4),
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    address VARCHAR(30),
    contact CHAR(10)
);

--DESC student;
--
DROP TABLE student;

--- Insert data into student table

INSERT INTO student(student_id, NIC, name, batch, gender, address, contact) VALUES
('TG1062', '200127800625', 'Jamper', '2021', 'M',"Jamper999@gmail.com", '761234654'),
('TG1063', '200157800625', 'Kumar', '2021', 'M', "otara87@gmail.com", '761234789'),
('TG1064', '200130800025', 'Rohit', '2021', 'M', "manodra@gmail.com", '761234678'),
('TG1414', '200227900425', 'Karuvadu', '2022', 'M',"rajapaksha@gmail.com", '761234565'),
('TG1413', '200240800625', 'Rani', '2022', 'F', "asmaakram2@gmail.com", '761234564'),
('TG1345', '200127700625', 'Pampu', '2021', 'M', "", '718032400'),
('TG1067', '200127800626', 'Shalini', '2021', 'F',"shalini52@gmail.com", '761234567'),  -- Updated NIC for uniqueness
('TG1415', '200127800565', 'Pema', '2022', 'M',"sajirshn@gmail.com" , '718032468'),
('TG1417', '200127800800', 'Anpu', '2022', 'M',"kaviduSin@gmail.com", '761234573');
