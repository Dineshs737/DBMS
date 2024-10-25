-- Active: 1724324587640@@127.0.0.1@3307@demo0001
CREATE DATABASE demo0001;
USE demo0001;

CREATE TABLE  Cource (Cource_id CHAR(8) PRIMARY KEY ,
Name VARCHAR(20),
Credit INT ,
Week VARCHAR(20)
);

 desc cource;
 
 ALTER TABLE cource
 MODIFY Name VARCHAR(40);


INSERT INTO COURCE VALUE("ICT1213","Database_management__system",3,"15"),
                        ("ICT1222","computer_rchitecture",2,"15"), 
                        ("ICT1233","Computer_network",3,"15"),  
                        ("ICT1242","Server_side_web_development",2,"15"),  
                        ("ICT1253","Computer_programing",3,"15"),  
                        ("ICT1261","Muiltimedia_technology",1,"15"),  
                        ("ICT1271","Fundamendal_of_IS",1,"15"),  
                        ("ICT183","Web_technology",3,"15"),  
                        ("ICT1293","Artificial_inteligence",3,"15"),  
                        ("ICT212","Software_engineering",2,"15");


                          