
-- lechure table structure

CREATE TABLE Lecturer(
lecturer_ID char(5) PRIMARY KEY,
Subject   varchar(50),
Name  varchar(30),
Address varchar(100));


-- data of the table

INSERT INTO lecturer VALUES
('L001','Database Management System','Mr.Aayansh',"123 Main Street, Colombo 07"),
('L002','Computer Architecture','Miss.Kavindi','45 Galle Road, Mount Lavinia'),
('L003','Computer Networks','Miss.Nadeesha','No. 5, Kandy Road, Nugegoda'),
('L004','Server Side Web Development','mr.Tharindu','78, Church Street, Negombo'),
('L005','Computer Programming','Miss.Ishara','34, Peradeniya Road, Kandy'),
('L006','Multimedia Technology','Mr.Lakal','10, Kottawa Junction, Piliyandala'),
('L007','Fundamendals of Information System','mr.Ruwan','56, Gampaha Road, Kelaniya'),
('L008','Web Technology','Mr.Nishan',"thadchanamaruthamaadhu mannar"),
('L009','Artificial Inteligence','Miss.Shaneeka','22, High Street, Jaffna'),
('L010','Software engineering','Ms.Kusum','88, Baduwatta, Galle');
--- attendance table structure

CREATE TABLE `Attendance` (
  `student_id` varchar(10) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `week_01` varchar(2) DEFAULT NULL,
  `week_02` varchar(2) DEFAULT NULL,
  `week_03` varchar(2) DEFAULT NULL,
  `week_04` varchar(2) DEFAULT NULL,
  `week_05` varchar(2) DEFAULT NULL,
  `week_06` varchar(2) DEFAULT NULL,
  `week_07` varchar(2) DEFAULT NULL,
  `week_08` varchar(2) DEFAULT NULL,
  `week_09` varchar(2) DEFAULT NULL,
  `week_10` varchar(2) DEFAULT NULL,
  `week_11` varchar(2) DEFAULT NULL,
  `week_12` varchar(2) DEFAULT NULL,
  `week_13` varchar(2) DEFAULT NULL,
  `week_14` varchar(2) DEFAULT NULL,
  `week_15` varchar(2) DEFAULT NULL,
  `total_attended` int(11) GENERATED ALWAYS AS (case when `week_01` = 'AB' then 0 when `week_01` = 'MC' then 1 else cast(`week_01` as signed) end + case when `week_02` = 'AB' then 0 when `week_02` = 'MC' then 1 else cast(`week_02` as signed) end + case when `week_03` = 'AB' then 0 when `week_03` = 'MC' then 1 else cast(`week_03` as signed) end + case when `week_04` = 'AB' then 0 when `week_04` = 'MC' then 1 else cast(`week_04` as signed) end + case when `week_05` = 'AB' then 0 when `week_05` = 'MC' then 1 else cast(`week_05` as signed) end + case when `week_06` = 'AB' then 0 when `week_06` = 'MC' then 1 else cast(`week_06` as signed) end + case when `week_07` = 'AB' then 0 when `week_07` = 'MC' then 1 else cast(`week_07` as signed) end + case when `week_08` = 'AB' then 0 when `week_08` = 'MC' then 1 else cast(`week_08` as signed) end + case when `week_09` = 'AB' then 0 when `week_09` = 'MC' then 1 else cast(`week_09` as signed) end + case when `week_10` = 'AB' then 0 when `week_10` = 'MC' then 1 else cast(`week_10` as signed) end + case when `week_11` = 'AB' then 0 when `week_11` = 'MC' then 1 else cast(`week_11` as signed) end + case when `week_12` = 'AB' then 0 when `week_12` = 'MC' then 1 else cast(`week_12` as signed) end + case when `week_13` = 'AB' then 0 when `week_13` = 'MC' then 1 else cast(`week_13` as signed) end + case when `week_14` = 'AB' then 0 when `week_14` = 'MC' then 1 else cast(`week_14` as signed) end + case when `week_15` = 'AB' then 0 when `week_15` = 'MC' then 1 else cast(`week_15` as signed) end) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


---- data of the attendance

INSERT INTO `attendance` (`student_id`, `course_id`, `week_01`, `week_02`, `week_03`, `week_04`, `week_05`, `week_06`, `week_07`, `week_08`, `week_09`, `week_10`, `week_11`, `week_12`, `week_13`, `week_14`, `week_15`) VALUES
('TG1062', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1222', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', 'MC', '1', 'AB', '1', '1', '1'),
('TG1062', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1062', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1062', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1063', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1063', 'ICT1222', '1', '1', '1', '1', 'AB', '1', 'AB', '1', '1', '1', '1', 'AB', '1', 'AB', '1'),
('TG1063', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1063', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1063', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1063', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1063', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1063', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1063', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1063', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ICT1253', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1'),
('TG1064', 'ICT1261', '1', 'MC', '1', '1', 'AB', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ICT1271', '1', 'MC', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ICT1283', '1', 'MC', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ICT1293', '1', 'MC', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1064', 'ICT12102', '1', 'MC', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1414', 'ICT1213' ,'1', 'MC', '1', '1', '1', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1'),
('TG1414', 'ICT1222', '1', 'MC', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1'),
('TG1414', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1414', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1414', 'ICT1252', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1414', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1414', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1414', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1414', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1414', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1413', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1413', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1413', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1413', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1413', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1413', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1413', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1413', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1413', 'ICT1293', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1413', 'ICT12102', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1415', 'ICT1213', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1415', 'ICT1222', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1415', 'ICT1233', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1415', 'ICT1242', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1415', 'ICT1253', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1415', 'ICT1261', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1415', 'ICT1271', '1', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1415', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1415', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1415', 'ICT12102', '1', '1', 'AB', '1', 'AB', 'AB', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1417', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1417', 'ICT1222', '1', '1', 'AB', '1', 'AB', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1417', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1417', 'ICT1242', '1', '1', 'AB', '1', 'AB', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1417', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1417', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1417', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1417', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1417', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1417', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1067', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1067', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1067', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1067', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1067', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1067', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1067', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1067', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1067', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1067', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1416', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1416', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1416', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1416', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1416', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1416', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1416', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1416', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1416', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1416', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1345', 'ICT1213', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1345', 'ICT1222', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1345', 'ICT1233', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1345', 'ICT1242', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG4345', 'ICT1253', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1345', 'ICT1261', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1345', 'TCS1271', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1345', 'ICT1283', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1345', 'ICT1293', '1', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1345', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1418', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1418', 'ICT1222', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', 'MC', '1', 'AB', '1', '1', '1'),
('TG1418', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1418', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1418', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1418', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1418', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1418', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1418', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1418', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1419', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1419', 'ICT1222', '1', '1', '1', '1', 'AB', '1', 'AB', '1', '1', '1', '1', 'AB', '1', 'AB', '1'),
('TG1419', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1419', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1419', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1419', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1'),
('TG1419', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', '1', '1', '1', '1'),
('TG1419', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1419', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1419', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1420', 'ICT1213', '1', 'MC', '1', '1', '1', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1'),
('TG1420', 'ICT1222', '1', 'MC', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1'),
('TG1420', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1420', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1420', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1420', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1420', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1420', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1420', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1420', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1421', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1421', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1421', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1421', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1421', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1421', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1421', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1421', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1421', 'ICT1293', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1421', 'ICT12103', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1422', 'ICT1213', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1422', 'ICT1222', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1422', 'ICT1233', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1422', 'ICT1242', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1422', 'TCS1253', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1422', 'ICT1261', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1422', 'ICT1271', '1', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1422', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1422', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1422', 'ICT12102', '1', '1', 'AB', '1', 'AB', 'AB', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1423', 'ICT1213', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1423', 'ICT1222', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1423', 'ICT1233', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1423', 'ICT1242', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1423', 'ICT1253', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1423', 'ICT1261', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1423', 'ICT1271', '1', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1423', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1423', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1423', 'ICT12102', '1', '1', 'AB', '1', 'AB', 'AB', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1424', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1424', 'ICT1222', '1', '1', 'AB', '1', 'AB', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1424', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1424', 'ICT1242', '1', '1', 'AB', '1', 'AB', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1424', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1424', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1424', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1424', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1424', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1424', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1425', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1425', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1425', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1425', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1425', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1425', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1425', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1425', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1425', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1425', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1426', 'ICT1213', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1426', 'ICT1222', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1426', 'ICT1233', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1426', 'ICT1242', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1426', 'ICT1253', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1426', 'ICT1261', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1426', 'ICT1271', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1426', 'ICT1283', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1426', 'ICT1293', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1426', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
('TG1427', 'ICT1213', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1427', 'ICT1222', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1427', 'ICT1233', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1427', 'ICT1242', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1427', 'ICT1253', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1427', 'ICT1261', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1427', 'ICT1271', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1427', 'ICT1283', '1', '1', 'MC', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1'),
('TG1427', 'ICT1293', '1', '1', 'AB', '1', '1', 'AB', '1', 'AB', '1', 'AB', '1', '1', 'AB', '1', 'MC'),
('TG1427', 'ICT12102', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'AB', '1', '1', 'AB', '1', 'MC');





