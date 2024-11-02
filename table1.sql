CREATE TABLLE Admin(
Admin_ID CHAR(5),
Name VARCHAR(50),
Contact CHAR(10)
);

INSERT INTO Admin VALUES
('A001','Suman','719877898'),
('A002','Gamage','765677655'),
('A003','Nilan','754455660'),
('A004','Nikmal','779988776'),
('A005','namal','751237778');




CREATE TABLE Examination(
Course_Code CHAR(5) PRIMARY KEY,
Subject VARCHAR(50),
Date DATE );


INSERT INTO Examination VALUES
			                  ("ICT1213","Database_management__system","2024-11-18"),
                        ("ICT1222","computer_rchitecture","2024-11-20"), 
                        ("ICT1233","Computer_network","2024-11-21"),  
                        ("ICT1242","Server_side_web_development","2024-11-22"),  
                        ("ICT1253","Computer_programing","2024-11-24"),  
                        ("ICT1261","Muiltimedia_technology","2024-11-27"),  
                        ("ICT1271","Fundamendal_of_IS","2024-11-28"),  
                        ("ICT183","Web_technology","2024-11-30"),  
                        ("ICT1293","Artificial_inteligence","2024-12-02"),  
                        ("ICT212","Software_engineering","2024-12-04");




CREATE TABLE Payables(
Student_ID CHAR(5),
Type VARCHAR(50),
Amount DECIMAL(7,2),
Date DATE
);

INSERT INTO Payables VALUES
('TG1416','Chair damage','5000.00','2024-10-05'),
('TG1425','Table damage','3000.00','2024-07-09'),
('TG1420,'door damage','3500.00','2024-04-22'),
('TG1422','chair damage','2000','2024-09-13');


CREATE TABLE Medical(
Medical_ID CHAT(5) PRIMARY KEY,
Description VARCHAR (100),
Date DATE
);

INSERT INTO Medical VALUES
('M001','Fever','2024-08-15'),
('M002','Stomach pain','2024-07-08'),
('M003','Leg broken','2024-09-24');

