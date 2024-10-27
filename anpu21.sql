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
                        ("ICT1283","Web_technology",3,"15"),  
                        ("ICT1293","Artificial_inteligence",3,"15"),  
                        ("ICT12101","Software_engineering",2,"15");


CREATE TABLE ICT1213_course_marks ( 
student_id varchar(10) NOT NULL,
  quiz_1 decimal(5,2) NOT NULL DEFAULT 0.00,
  quiz_2 decimal(5,2) NOT NULL DEFAULT 0.00,
  quiz_3 decimal(5,2) NOT NULL DEFAULT 0.00,
  inclass_test_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  final_quiz_marks decimal(5,2) GENERATED ALWAYS AS ((quiz_1 + quiz_2 + quiz_3 - least(quiz_1,quiz_2,quiz_3)) / 3 * 0.10) STORED,
  final_assignment_marks decimal(5,2) GENERATED ALWAYS AS (inclass_test_marks * 0.05) STORED,
  mid_exam_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  end_exam_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  CA_total_marks decimal(5,2) GENERATED ALWAYS AS (final_quiz_marks + final_assignment_marks + mid_exam_marks * 0.25) STORED,
  final_marks decimal(5,2) GENERATED ALWAYS AS (final_quiz_marks + final_assignment_marks + mid_exam_marks * 0.25 + end_exam_marks * 0.60) STORED
) ;

INSERT INTO ICT1213_course_marks  (student_id, quiz_1, quiz_2, quiz_3,inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 95.00, 100.00, 85.00, 100.00, 90.00, 85.00),
('TG1417', 88.00, 90.00, 34.50,  90.00,  75.00 , 87.00),
('TG1414', 80.50, 90.50, 65.00,  59.00,  65.00,  58.00),
('TG1415', 88.00, 90.00, 75.50,  80.00,  85.00,  75.00),
('TG1413', 87.00, 90.70, 68.50,  90.00,  85.00,  98.00),
('TG1064', 10.00, 30.00, 20.00,  20.00,  0.00,    0.00),
('TG1063', 78.00, 80.00, 75.00,  90.00, 85.00, 76.00),
('TG1067', 100.00, 90.00, 80.00,  90.00, 85.00, 54.00),
('TG1416', 70.00, 80.00, 60.00,  80.00, 75.00, 73.00),
('TG1345', 100.00, 100.00, 90.00,  90.00, 95.00, 90.00),
('TG1418', 90.00, 80.00, 80.00, 85.00, 67.00, 89.00),
('TG1419', 80.00, 80.00, 70.00,  65.00, 87.00, 90.00),
('TG1420', 90.00, 80.00, 80.00,  85.00, 89.00, 76.00),
('TG1421', 60.00, 60.50, 70.50,  85.00, 77.00, 88.00),
('TG1422', 60.80, 80.70, 80.00,  85.00, 90.00, 87.00),
('TG1423', 90.00, 70.00, 80.00,  85.00, 65.00, 78.00),
('TG1424', 50.00, 70.00, 40.00,  85.00, 78.00, 89.00),
('TG1425', 90.00, 80.00, 80.00,  95.00, 57.00, 92.00),
('TG1426', 60.00, 80.00, 70.00,  67.00, 87.00, 77.00),
('TG1427', 95.00,100.00, 85.00, 100.00, 90.00, 85.00);


CREATE TABLE ICT1222_course_marks ( 
student_id varchar(10) NOT NULL,
  quiz_1 decimal(5,2) NOT NULL DEFAULT 0.00,
  quiz_2 decimal(5,2) NOT NULL DEFAULT 0.00,
  quiz_3 decimal(5,2) NOT NULL DEFAULT 0.00,
  inclass_test_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  final_quiz_marks decimal(5,2) GENERATED ALWAYS AS ((quiz_1 + quiz_2 + quiz_3 - least(quiz_1,quiz_2,quiz_3)) / 3 * 0.10) STORED,
  final_assignment_marks decimal(5,2) GENERATED ALWAYS AS (inclass_test_marks * 0.05) STORED,
  mid_exam_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  end_exam_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  CA_total_marks decimal(5,2) GENERATED ALWAYS AS (final_quiz_marks + final_assignment_marks + mid_exam_marks * 0.25) STORED,
  final_marks decimal(5,2) GENERATED ALWAYS AS (final_quiz_marks + final_assignment_marks + mid_exam_marks * 0.25 + end_exam_marks * 0.60) STORED
) ;

INSERT INTO ICT1222_course_marks  (student_id, quiz_1, quiz_2, quiz_3,inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 85.00, 100.00, 75.00, 99.00, 90.00, 75.00),
('TG1417', 98.00, 80.00, 94.50,  90.00,  85.00 , 97.00),
('TG1414', 80.50, 93.50, 75.00,  89.00,  55.00,  88.00),
('TG1415', 88.00, 80.00, 85.50,  88.00,  85.00,  85.00),
('TG1413', 87.50, 90.90, 78.50,  90.00,  95.00,  88.00),
('TG1064', 80.00, 50.00, 50.00,  70.00,  60.00,  60.00),
('TG1063', 79.00, 84.00, 76.00,  95.00,  85.50, 76.50),
('TG1067', 90.00, 90.00, 84.00,  90.00,  85.50, 54.00),
('TG1416', 80.00, 88.00, 65.00,  90.50,  75.50, 73.00),
('TG1345', 90.00, 90.50, 80.50,  90.50,  98.00, 80.00),
('TG1418', 90.00, 80.00, 85.00,  75.00,  67.50, 89.00),
('TG1419', 80.00, 87.00, 77.00,  65.00,  97.00, 96.00),
('TG1420', 90.50, 80.00, 80.00,  85.00, 89.50, 77.00),
('TG1421', 70.00, 64.50, 76.50,  85.50, 77.50, 79.00),
('TG1422', 70.80, 85.70, 81.50,  96.50, 90.50, 89.00),
('TG1423', 94.00, 80.00, 86.00,  65.00, 55.00, 68.50),
('TG1424', 70.00, 80.60, 77.50,  86.60, 88.60, 90.80),
('TG1425', 97.00, 70.00, 80.50,  95.60, 77.00, 90.00),
('TG1426', 70.00, 83.50, 73.90,  77.50, 87.50, 79.50),
('TG1427', 85.00, 99.50,  95.50, 92.50, 99.50, 95.50);

CREATE TABLE ICT1233_course_marks ( 
student_id varchar(10) NOT NULL,
  quiz_1 decimal(5,2) NOT NULL DEFAULT 0.00,
  quiz_2 decimal(5,2) NOT NULL DEFAULT 0.00,
  quiz_3 decimal(5,2) NOT NULL DEFAULT 0.00,
  inclass_test_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  final_quiz_marks decimal(5,2) GENERATED ALWAYS AS ((quiz_1 + quiz_2 + quiz_3 - least(quiz_1,quiz_2,quiz_3)) / 3 * 0.10) STORED,
  final_assignment_marks decimal(5,2) GENERATED ALWAYS AS (inclass_test_marks * 0.05) STORED,
  mid_exam_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  end_exam_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  CA_total_marks decimal(5,2) GENERATED ALWAYS AS (final_quiz_marks + final_assignment_marks + mid_exam_marks * 0.25) STORED,
  final_marks decimal(5,2) GENERATED ALWAYS AS (final_quiz_marks + final_assignment_marks + mid_exam_marks * 0.25 + end_exam_marks * 0.60) STORED
) ;

INSERT INTO ICT1233_course_marks  (student_id, quiz_1, quiz_2, quiz_3,inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 75.00, 99.00, 85.00, 100.00, 90.00, 85.00),
('TG1417', 98.00, 90.50, 95.50,  91.00,  95.00 , 100.00),
('TG1414', 81.00, 94.50, 75.50,  89.00,  95.00,  98.00),
('TG1415', 82.00, 83.50, 86.00,  89.00,  75.00,  85.50),
('TG1413', 87.50, 91.00, 77.00,  91.00,  96.00,  89.00),
('TG1064', 81.00, 70.00, 60.00,  71.00,  60.50,  63.00),
('TG1063', 89.00, 85.00, 76.10,  95.50,  85.60, 76.00),
('TG1067', 91.00, 50.00, 84.00,  80.00,  88.50, 64.00),
('TG1416', 81.00, 89.00, 65.50,  91.50,  85.50, 73.50),
('TG1345', 91.00, 80.50, 90.50,  70.50,  78.00, 70.00),
('TG1418', 90.10, 81.00, 85.50,  76.50,  77.50, 89.50),
('TG1419', 81.00, 88.00, 67.00,  75.10,  98.00, 99.00),
('TG1420', 93.50, 81.40, 82.00,  85.50, 89.50, 78.00),
('TG1421', 71.00, 64.00, 75.70,  85.40, 77.50, 89.00),
('TG1422', 71.60, 95.80, 81.50,  94.50, 91.20, 99.00),
('TG1423', 96.00, 84.30, 84.00,  76.00, 55.00, 68.50),
('TG1424', 70.00, 81.50, 75.50,  86.60, 68.60, 90.50),
('TG1425', 97.40, 73.00, 81.50,  95.50, 78.00, 91.00),
('TG1426', 74.00, 85.50, 73.91,  79.50, 88.50, 88.50),
('TG1427', 86.00, 99.60, 95.52, 93.50, 99.50, 95.80);

CREATE TABLE ICT1242_course_marks ( 
student_id varchar(10) NOT NULL,
  quiz_1 decimal(5,2) NOT NULL DEFAULT 0.00,
  quiz_2 decimal(5,2) NOT NULL DEFAULT 0.00,
  quiz_3 decimal(5,2) NOT NULL DEFAULT 0.00,
  inclass_test_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  final_quiz_marks decimal(5,2) GENERATED ALWAYS AS ((quiz_1 + quiz_2 + quiz_3 - least(quiz_1,quiz_2,quiz_3)) / 3 * 0.10) STORED,
  final_assignment_marks decimal(5,2) GENERATED ALWAYS AS (inclass_test_marks * 0.05) STORED,
  mid_exam_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  end_exam_marks decimal(5,2) NOT NULL DEFAULT 0.00,
  CA_total_marks decimal(5,2) GENERATED ALWAYS AS (final_quiz_marks + final_assignment_marks + mid_exam_marks * 0.25) STORED,
  final_marks decimal(5,2) GENERATED ALWAYS AS (final_quiz_marks + final_assignment_marks + mid_exam_marks * 0.25 + end_exam_marks * 0.60) STORED
) ;
INSERT INTO ICT1242_course_marks  (student_id, quiz_1, quiz_2, quiz_3,inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067',90.00, 80.00, 80.00,  85.00, 67.00, 89.00),
('TG1417',80.00, 80.00, 70.00,  65.00, 87.00, 90.00),
('TG1414',90.00, 80.00, 80.00,  85.00, 89.00, 76.00),
('TG1415',60.00, 60.50, 70.50,  85.00, 77.00, 88.00),
('TG1413',60.80, 80.70, 80.00,  85.00, 90.00, 87.00),
('TG1064',90.00, 70.00, 80.00,  85.00, 65.00, 78.00),
('TG1063',50.00, 70.00, 40.00,  85.00, 78.00, 89.00),
('TG1067',90.00, 80.00, 80.00,  95.00, 57.00, 92.00),
('TG1416',60.00, 80.00, 70.00,  67.00, 87.00, 77.00),
('TG1345',95.00, 100.00, 85.00,  100.00, 90.00, 85.00),
('TG1418',88.00, 90.00, 34.50,  90.00, 75.00, 87.00),
('TG1419',80.50, 90.50, 65.00, 59.00, 65.00, 58.00),
('TG1420',88.00, 90.00, 75.50, 80.00, 85.00, 75.00),
('TG1421',87.00, 90.70, 68.50,  90.00, 85.00, 98.00),
('TG1422',10.00, 30.00, 20.00,  20.00, 0.00, 0.00),
('TG1423',78.00, 80.00, 75.00,  90.00, 85.00, 76.00),
('TG1424',100.00, 90.00, 80.00,  90.00, 85.00, 54.00),
('TG1425',70.00, 80.00, 60.00,  80.00, 75.00, 73.00),
('TG1426',100.00, 100.00, 90.00, 90.00, 95.00, 90.00),
('TG1427', 86.00, 99.60, 95.52, 93.50, 99.50, 95.80);