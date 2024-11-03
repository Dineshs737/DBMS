CREATE TABLE Technical_Officer (
Technical_ID CHAR(5),
NIC CHAR (12),
Name VARCHAR(50),
Contact CHAR(10);
);


INSERT INTO Technical_officer ('technical_Id','NIC','Name', 'Contact') VALUES
('Tec_Off_01','199012345678', 'Kavindi', '769870000'),
('Tec_Off_02', 'Raja','199109876543', '755566799'),
('Tec_Off_04', 'Kamal','198956788765','760987654'),
('Tec_Off_07', 'Vihanga','198809877890','760000987'),
('Tec_Off_09', 'Mithu','199576547654', '756677665');



CREATE TABLLE Admin(
Admin_ID CHAR(5),
NIC CHAR (12),
Name   VARCHAR(50),
Contact CHAR(10)
);

INSERT INTO Admin VALUES
('A001','198366114466','Suman','719877898'),
('A002','197899556644','Gamage','765677655'),
('A003','199600987656','Nilan','754455660'),
('A004','199500456789','Nikmal','779988776')
('A005','198755678908','namal','751237778');

CREATE TABLE Lecturer(
lecturer_ID char(5),
NIC CHAR (12),
Subject   varchar(50),
Name  varchar(30),
Address varchar(100));



INSERT INTO lecturer(lecturer_ID,NIC,Subject,Name ,Address) VALUES
('L001','198812332111','Database Management System','Mr.Aayansh','123 Main Street, Colombo 07'),
('L002','197798788855','Computer Architecture','Miss.Kavindi','45 Galle Road, Mount Lavinia'),
('L003','197800099988','Computer Networks','Miss.Nadeesha','No. 5, Kandy Road, Nugegoda'),
('L004','198155667788','Server Side Web Development','mr.Tharindu','78, Church Street, Negombo'),
('L005','198000998877','Computer Programming','Miss.Ishara','34, Peradeniya Road, Kandy'),
('L006','199112340987','Multimedia Technology','Mr.Lakal','10, Kottawa Junction, Piliyandala'),
('L007','198088336611','Fundamendals of Information System','mr.Ruwan','56, Gampaha Road, Kelaniya'),
('L008','198900664433','Web Technology','Mr.Nishan'),
('L009','198622330099','Artificial Inteligence','Miss.Shaneeka','22, High Street, Jaffna'),
('L010','198977889911','Software engineering','Ms.Kusum','88, Baduwatta, Galle');


CREATE TABLE Dean (
  dean_id varchar(8) NOT NULL,
  NIC CHAR (12),
  Name CHAR (20),
  start_date  date NOT NULL,
  dean_user_id int(9) NOT NULL
 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci);




INSERT INTO Dean ('dean_id','NIC', 'start_date', 'dean_user_id') VALUES
('D0001','198009809877','Praveen kanth', '2017-01-01', 1);


