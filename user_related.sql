##CREATE DATABASE v001;
##USE v001;

## Lecturer table structure
CREATE TABLE IF NOT EXISTS `lecturer`(
    `lecturer_ID` CHAR(5),
    `NIC` CHAR(12),
    `subject` VARCHAR(50),
    `name` VARCHAR(30),
    `address` VARCHAR(100)
);

## Insert data into `lecturer` table
##SART
INSERT INTO `lecturer` (`lecturer_ID`, `NIC`, `subject`, `name`, `address`) VALUES
('L001', '198812332111', 'Database Management System', 'Mr.Aayansh', '123 Main Street, Colombo 07'),
('L002', '197798788855', 'Computer Architecture', 'Miss.Kavindi', '45 Galle Road, Mount Lavinia'),
('L003', '197800099988', 'Computer Networks', 'Miss.Nadeesha', 'No. 5, Kandy Road, Nugegoda'),
('L004', '198155667788', 'Server Side Web Development', 'Mr.Tharindu', '78, Church Street, Negombo'),
('L005', '198000998877', 'Computer Programming', 'Miss.Ishara', '34, Peradeniya Road, Kandy'),
('L006', '199112340987', 'Multimedia Technology', 'Mr.Lakal', '10, Kottawa Junction, Piliyandala'),
('L007', '198088336611', 'Fundamentals of Information System', 'Mr.Ruwan', '56, Gampaha Road, Kelaniya'),
('L008', '198900664433', 'Web Technology', 'Mr.Nishan', 'Thadchanamaruthamaadhu, Mannar'),
('L009', '198622330099', 'Artificial Intelligence', 'Miss.Shaneeka', '22, High Street, Jaffna'),
('L010', '198977889911', 'Software Engineering', 'Ms.Kusum', '88, Baduwatta, Galle');
##END

## `Technical_Officer` structure 

CREATE TABLE IF NOT EXISTS `technical_Officer` (
    `technical_ID` CHAR(10) PRIMARY KEY, -- Increase size to accommodate longer IDs
    `NIC` CHAR(12),
    `name` VARCHAR(50)
);

## insert data into `Technical_Officer` table

##SART
INSERT INTO `technical_Officer` (`technical_ID`, `NIC`, `name`) VALUES
('Tec_Off_01', '199012345678', 'Kavindi'),
('Tec_Off_02', '199109876543', 'Raja'),
('Tec_Off_04', '198956788765', 'Kamal'),
('Tec_Off_07', '198809877890', 'Vihanga'),
('Tec_Off_09', '199576547654', 'Mithu');
## END


##`dean` table stucture 
CREATE TABLE IF NOT EXISTS `dean` (
    `dean_id` CHAR(5) PRIMARY KEY,  
    `NIC` CHAR(12) UNIQUE,          
    `name` VARCHAR(50),              
    `start_date` DATE                 
);

## insert data into `dean` table

##SART

INSERT INTO `dean` (`dean_id`, `NIC`, `name`, `start_date`) VALUES
('D0001', '198009809877', 'Praveen Kanth', '2017-01-01');

##END


###  ##  `admin` table structure
	
CREATE TABLE IF NOT EXISTS `admin` (
    `Admin_ID` CHAR(5) PRIMARY KEY,-- Admin ID
    `NIC` CHAR(12) NOT NULL,
    `name` VARCHAR(50)                -- Name of the Admin
);


## Insert data into  `admin` table
##SART
INSERT INTO `admin` (`admin_ID`,`NIC`, `name`) VALUES
('A001','198366114466','Suman');
##END


##  `student` table structure
CREATE TABLE IF NOT EXISTS `student` (
    `student_id` CHAR(6) PRIMARY KEY,
    `NIC` CHAR(12) UNIQUE,
    `name` VARCHAR(30),
    `batch` CHAR(4),
    `gender` CHAR(1) CHECK (`gender` IN ('M', 'F'))
);



## Insert data into  `student` table
##SART
INSERT INTO `student` (`student_id`, `NIC`, `name`, `batch`, `gender`) VALUES
('TG1062', '200127800625', 'Jamper', '2022', 'M'),
('TG1063', '200157800625', 'Kumar', '2022', 'M'),
('TG1064', '200130800025', 'Rohit', '2022', 'M'),
('TG1414', '200227900425', 'Karuvadu', '2022', 'M'),
('TG1413', '200240800625', 'Rani', '2022', 'F'),
('TG1345', '200127700625', 'Pampu', '2022', 'M'),
('TG1067', '200127800626', 'Shalini', '2022', 'F'),
('TG1415', '200127800565', 'Pema', '2022', 'M'),
('TG1417', '200127800800', 'Anpu', '2022', 'M'),
('TG1416', '200277889955', 'Dinesh', '2022', 'M'),
('TG1418', '200212345678', 'Kaviya', '2022', 'F'),
('TG1419', '200289765411', 'Dhanu', '2022', 'F'),
('TG1420', '202289786756', 'Dharshi', '2022', 'F'),
('TG1421', '200299666543', 'Thinesh', '2022', 'M'),
('TG1422', '200278904321', 'Akram', '2022', 'M'),
('TG1423', '200234567890', 'Thakshan', '2022', 'M'),
('TG1424', '200287667887', 'Keerthan', '2022', 'M'),
('TG1425', '200223450987', 'Madhu', '2022', 'F'),
('TG1426', '200212347890', 'Suba', '2022', 'F'),
('TG1427', '200298769876', 'Praveen', '2022', 'M'); -- Changed NIC to a unique value



##              student  repeat  data            ##
('TG901','200198769876','Sajeeya','2021','F'),
('TG997','200112347890','Asma','2021','F'),
('TG998','200134567890','Umesha','2021','F'),
('TG999','200177889955','Danith','2021','M'),
('TG1002','200130800126','Dasun','2021','M');
##END