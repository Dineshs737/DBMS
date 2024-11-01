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
