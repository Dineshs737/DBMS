
## TABLE STRUCTURE ICT1213_course_marks
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

##INSERT ICT1213_course_marks DATA
INSERT INTO ICT1213_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1062', 85.00, 90.00, 75.00, 80.00, 85.00, 88.00),
('TG1063', 78.00, 80.00, 75.00, 90.00, 85.00, 76.00),
('TG1064', 10.00, 30.00, 20.00, 20.00, 0.00, 0.00),
('TG1067', 100.00, 90.00, 80.00, 90.00, 85.00, 54.00),
('TG1345', 100.00, 100.00, 90.00, 90.00, 95.00, 90.00),
('TG1413', 87.00, 90.70, 68.50, 90.00, 85.00, 98.00),
('TG1414', 80.50, 90.50, 65.00, 59.00, 65.00, 58.00),
('TG1415', 88.00, 90.00, 75.50, 80.00, 85.00, 75.00),
('TG1416', 70.00, 80.00, 60.00, 80.00, 75.00, 73.00),
('TG1417', 88.00, 90.00, 34.50, 90.00, 75.00, 87.00),
('TG1418', 90.00, 80.00, 80.00, 85.00, 67.00, 89.00),
('TG1419', 80.00, 80.00, 70.00, 65.00, 87.00, 90.00),
('TG1420', 90.00, 80.00, 80.00, 85.00, 89.00, 76.00),
('TG1421', 60.00, 60.50, 70.50, 85.00, 77.00, 88.00),
('TG1422', 60.80, 80.70, 80.00, 85.00, 90.00, 87.00),
('TG1423', 90.00, 70.00, 80.00, 85.00, 65.00, 78.00),
('TG1424', 50.00, 70.00, 40.00, 85.00, 78.00, 89.00),
('TG1425', 90.00, 80.00, 80.00, 95.00, 57.00, 92.00),
('TG1426', 60.00, 80.00, 70.00, 67.00, 87.00, 77.00),
('TG1427', 95.00, 100.00, 85.00, 100.00, 90.00, 85.00),
##repeat student
('TG901', 75.00, 80.00, 70.00, 85.00, 90.00, 88.00),
('TG997', 85.00, 90.00, 80.00, 88.00, 82.00, 91.00),
('TG998', 90.00, 85.00, 78.00, 82.00, 80.00, 86.00),
('TG999', 70.00, 75.00, 80.00, 76.00, 78.00, 80.00),
('TG1002', 80.00, 82.00, 75.00, 80.00, 85.00, 87.00);



## TABLE STRUCTURE ICT1222_course_marks


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



INSERT INTO ICT1222_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 85.00, 100.00, 75.00, 99.00, 90.00, 75.00),
('TG1417', 98.00, 80.00, 94.50, 90.00, 85.00, 97.00),
('TG1414', 80.50, 93.50, 75.00, 89.00, 55.00, 88.00),
('TG1415', 88.00, 80.00, 85.50, 88.00, 85.00, 85.00),
('TG1413', 87.50, 90.90, 78.50, 90.00, 95.00, 88.00),
('TG1064', 80.00, 50.00, 50.00, 70.00, 60.00, 60.00),
('TG1063', 79.00, 84.00, 76.00, 95.00, 85.50, 76.50),
('TG1067', 90.00, 90.00, 84.00, 90.00, 85.50, 54.00),
('TG1416', 80.00, 88.00, 65.00, 90.50, 75.50, 73.00),
('TG1345', 90.00, 90.50, 80.50, 90.50, 98.00, 80.00),
('TG1418', 90.00, 80.00, 85.00, 75.00, 67.50, 89.00),
('TG1419', 80.00, 87.00, 77.00, 65.00, 97.00, 96.00),
('TG1420', 90.50, 80.00, 80.00, 85.00, 89.50, 77.00),
('TG1421', 70.00, 64.50, 76.50, 85.50, 77.50, 79.00),
('TG1422', 70.80, 85.70, 81.50, 96.50, 90.50, 89.00),
('TG1423', 94.00, 80.00, 86.00, 65.00, 55.00, 68.50),
('TG1424', 70.00, 80.60, 77.50, 86.60, 88.60, 90.80),
('TG1425', 97.00, 70.00, 80.50, 95.60, 77.00, 90.00),
('TG1426', 70.00, 83.50, 73.90, 77.50, 87.50, 79.50),
('TG1427', 85.00, 99.50, 95.50, 92.50, 99.50, 95.50),
('TG901', 80.00, 85.00, 90.00, 80.00, 90.00, 85.00),  
('TG997', 85.50, 70.50, 60.50, 75.50, 80.50, 75.50),  
('TG998', 75.00, 85.00, 65.00, 70.00, 75.00, 80.00),  
('TG999', 80.50, 90.00, 85.00, 90.00, 85.00, 95.00),  
('TG1002', 70.00, 75.50, 80.00, 70.00, 75.00, 70.50); 


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


INSERT INTO ICT1233_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 75.00, 99.00, 85.00, 100.00, 90.00, 85.00),
('TG1417', 98.00, 90.50, 95.50, 91.00, 95.00, 100.00),
('TG1414', 81.00, 94.50, 75.50, 89.00, 95.00, 98.00),
('TG1415', 82.00, 83.50, 86.00, 89.00, 75.00, 85.50),
('TG1413', 87.50, 91.00, 77.00, 91.00, 96.00, 89.00),
('TG1064', 81.00, 70.00, 60.00, 71.00, 60.50, 63.00),
('TG1063', 89.00, 85.00, 76.10, 95.50, 85.60, 76.00),
('TG1067', 91.00, 50.00, 84.00, 80.00, 88.50, 64.00),
('TG1416', 81.00, 89.00, 65.50, 91.50, 85.50, 73.50),
('TG1345', 91.00, 80.50, 90.50, 70.50, 78.00, 70.00),
('TG1418', 90.10, 81.00, 85.50, 76.50, 77.50, 89.50),
('TG1419', 81.00, 88.00, 67.00, 75.10, 98.00, 99.00),
('TG1420', 93.50, 81.40, 82.00, 85.50, 89.50, 78.00),
('TG1421', 71.00, 64.00, 75.70, 85.40, 77.50, 89.00),
('TG1422', 71.60, 95.80, 81.50, 94.50, 91.20, 99.00),
('TG1423', 96.00, 84.30, 84.00, 76.00, 55.00, 68.50),
('TG1424', 70.00, 81.50, 75.50, 86.60, 68.60, 90.50),
('TG1425', 97.40, 73.00, 81.50, 95.50, 78.00, 91.00),
('TG1426', 74.00, 85.50, 73.91, 79.50, 88.50, 88.50),
('TG1427', 86.00, 99.60, 95.52, 93.50, 99.50, 95.80),
('TG901', 78.00, 88.00, 80.00, 85.00, 90.00, 88.00),  
('TG997', 85.50, 70.50, 62.50, 78.00, 80.50, 75.50),  
('TG998', 75.00, 85.00, 65.00, 75.00, 85.00, 80.00),   
('TG999', 80.50, 90.00, 85.00, 85.00, 95.00, 92.00),   
('TG1002', 70.00, 75.50, 78.00, 70.00, 80.00, 70.50);   



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


INSERT INTO ICT1242_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 90.00, 80.00, 80.00, 85.00, 67.00, 89.00),
('TG1417', 80.00, 80.00, 70.00, 65.00, 87.00, 90.00),
('TG1414', 90.00, 80.00, 80.00, 85.00, 89.00, 76.00),
('TG1415', 60.00, 60.50, 70.50, 85.00, 77.00, 88.00),
('TG1413', 60.80, 80.70, 80.00, 85.00, 90.00, 87.00),
('TG1064', 90.00, 70.00, 80.00, 85.00, 65.00, 78.00),
('TG1063', 50.00, 70.00, 40.00, 85.00, 78.00, 89.00),
('TG1067', 90.00, 80.00, 80.00, 95.00, 57.00, 92.00),
('TG1416', 60.00, 80.00, 70.00, 67.00, 87.00, 77.00),
('TG1345', 95.00, 100.00, 85.00, 100.00, 90.00, 85.00),
('TG1418', 88.00, 90.00, 34.50, 90.00, 75.00, 87.00),
('TG1419', 80.50, 90.50, 65.00, 59.00, 65.00, 58.00),
('TG1420', 88.00, 90.00, 75.50, 80.00, 85.00, 75.00),
('TG1421', 87.00, 90.70, 68.50, 90.00, 85.00, 98.00),
('TG1422', 10.00, 30.00, 20.00, 20.00, 0.00, 0.00),
('TG1423', 78.00, 80.00, 75.00, 90.00, 85.00, 76.00),
('TG1424', 100.00, 90.00, 80.00, 90.00, 85.00, 54.00),
('TG1425', 70.00, 80.00, 60.00, 80.00, 75.00, 73.00),
('TG1426', 100.00, 100.00, 90.00, 90.00, 95.00, 90.00),
('TG1427', 86.00, 99.60, 95.52, 93.50, 99.50, 95.80),
('TG901', 85.00, 75.00, 65.00, 80.00, 85.00, 70.00),  
('TG997', 77.00, 65.00, 50.00, 70.00, 80.00, 60.00),    
('TG998', 60.00, 70.00, 55.00, 75.00, 68.00, 65.00),    
('TG999', 88.00, 85.00, 90.00, 92.00, 95.00, 89.00),    
('TG1002', 78.00, 80.00, 70.00, 78.00, 88.00, 79.00);    

CREATE TABLE ICT1253_course_marks ( 
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




INSERT INTO ICT1253_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 80.00, 80.00, 70.00, 65.00, 87.00, 90.00),
('TG1417', 90.00, 80.00, 80.00, 85.00, 89.00, 76.00),
('TG1414', 60.00, 60.50, 70.50, 85.00, 77.00, 88.00),
('TG1415', 60.80, 80.70, 80.00, 85.00, 90.00, 87.00),
('TG1413', 90.00, 70.00, 80.00, 85.00, 65.00, 78.00),
('TG1064', 50.00, 70.00, 40.00, 85.00, 78.00, 89.00),
('TG1063', 90.00, 80.00, 80.00, 95.00, 57.00, 92.00),
('TG1067', 60.00, 80.00, 70.00, 67.00, 87.00, 77.00),
('TG1416', 95.00, 100.00, 85.00, 100.00, 90.00, 85.00),
('TG1345', 88.00, 90.00, 34.50, 90.00, 75.00, 87.00),
('TG1418', 80.50, 90.50, 65.00, 59.00, 65.00, 58.00),
('TG1419', 88.00, 90.00, 75.50, 80.00, 85.00, 75.00),
('TG1420', 87.00, 90.70, 68.50, 90.00, 85.00, 98.00),
('TG1421', 40.00, 30.00, 20.00, 50.00, 0.00, 10.00),
('TG1422', 79.00, 80.00, 76.00, 90.00, 85.00, 77.00),
('TG1423', 100.00, 90.00, 81.00, 90.00, 85.00, 54.00),
('TG1424', 70.00, 81.00, 60.00, 80.00, 85.00, 83.00),
('TG1425', 100.00, 100.00, 91.00, 90.00, 95.00, 90.50),
('TG1426', 90.00, 87.00, 97.00, 90.06, 95.50, 80.00),
('TG1427', 80.00, 80.00, 70.00, 65.00, 87.00, 90.00),
('TG901', 78.00, 67.00, 50.00, 70.00, 80.00, 65.00),        
('TG997', 72.00, 65.00, 55.00, 68.00, 75.00, 60.00),        
('TG998', 63.00, 70.00, 50.00, 73.00, 70.00, 68.00),       
('TG999', 89.00, 85.00, 90.00, 90.00, 95.00, 88.00),        
('TG1002', 77.00, 75.00, 65.00, 80.00, 85.00, 72.00);    



CREATE TABLE ICT1261_course_marks ( 
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


INSERT INTO ICT1261_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 95.00, 100.00, 89.00, 90.00, 85.00, 90.60),
('TG1417', 89.00, 90.00, 94.50, 75.00, 87.00, 76.80),
('TG1414', 80.50, 90.50, 65.00, 65.00, 58.00, 67.78),
('TG1415', 88.00, 70.00, 75.50, 85.00, 75.00, 78.78),
('TG1413', 67.00, 90.70, 68.50, 85.00, 78.00, 87.98),
('TG1064', 50.00, 50.00, 20.00, 20.00, 50.00, 87.00),
('TG1063', 58.00, 80.00, 65.00, 60.00, 76.00, 78.00),
('TG1067', 90.00, 90.00, 80.00, 85.00, 94.00, 98.00),
('TG1416', 60.00, 70.00, 90.00, 90.00, 80.00, 87.00),
('TG1345', 90.00, 80.00, 80.00, 67.00, 89.00, 87.70),
('TG1418', 80.50, 90.50, 65.00, 59.00, 65.00, 87.90),
('TG1419', 80.00, 80.00, 91.00, 87.50, 90.00, 89.50),
('TG1420', 70.00, 50.50, 90.00, 68.00, 76.00, 67.00),
('TG1421', 50.50, 65.50, 40.70, 67.00, 63.00, 90.00),
('TG1422', 60.80, 80.70, 80.00, 85.00, 87.00, 78.00),
('TG1423', 90.00, 70.00, 80.00, 85.00, 65.00, 89.00),
('TG1424', 70.00, 81.00, 60.00, 85.00, 83.00, 79.00),
('TG1425', 90.00, 80.00, 80.00, 95.00, 72.00, 76.00),
('TG1426', 60.00, 80.00, 70.00, 87.00, 65.00, 86.00),
('TG1427', 95.00, 100.00, 89.00, 90.00, 85.00, 99.00),
('TG901', 88.00, 90.00, 85.00, 80.00, 75.00, 70.00),        -- Example marks for TG901
('TG902', 77.00, 80.00, 65.00, 70.00, 68.00, 82.00),        -- Example marks for TG902
('TG903', 69.00, 75.00, 70.00, 80.00, 60.00, 80.00),        -- Example marks for TG903
('TG904', 95.00, 90.00, 85.00, 90.00, 89.00, 88.00),        -- Example marks for TG904
('TG905', 76.00, 85.00, 80.00, 70.00, 78.00, 82.00);        -- Example marks for TG905


CREATE TABLE ICT1271_course_marks ( 
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


INSERT INTO ICT1271_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 95.50, 90.00, 89.00, 90.00, 95.00, 89.90),
('TG1417', 89.50, 90.00, 94.50, 75.00, 87.00, 87.50),
('TG1414', 80.50, 80.50, 65.00, 75.00, 58.50, 76.70),
('TG1415', 88.50, 70.60, 79.50, 95.00, 85.00, 87.90),
('TG1413', 67.60, 90.70, 68.50, 85.00, 78.00, 56.50),
('TG1064', 40.00, 50.50, 70.00, 40.00, 50.00, 67.50),
('TG1063', 58.80, 90.00, 65.50, 65.00, 76.50, 76.50),
('TG1067', 70.00, 90.50, 70.60, 65.00, 94.50, 78.50),
('TG1416', 60.00, 60.00, 90.00, 70.50, 90.00, 78.50),
('TG1345', 90.00, 80.00, 90.00, 67.00, 89.00, 60.50),
('TG1418', 80.60, 70.50, 65.00, 89.00, 65.00, 50.50),
('TG1419', 89.00, 90.00, 44.50, 76.00, 75.00, 76.50),
('TG1420', 80.50, 90.50, 65.00, 59.00, 65.00, 76.50),
('TG1421', 89.00, 80.00, 75.50, 76.50, 95.00, 67.50),
('TG1422', 67.00, 90.70, 68.50, 76.00, 85.00, 70.00),
('TG1423', 58.00, 80.00, 65.00, 80.00, 76.00, 78.90),
('TG1424', 90.00, 90.00, 80.00, 85.00, 94.00, 76.50),
('TG1425', 70.00, 88.00, 60.00, 71.00, 73.00, 78.50),
('TG1426', 90.00, 80.00, 80.00, 90.00, 89.00, 78.80),
('TG1427', 95.50, 90.60, 88.00, 80.50, 89.00, 67.50),
('TG901', 88.00, 90.00, 85.00, 80.00, 75.00, 70.00),      -- Example entry for TG901
('TG902', 77.00, 80.00, 65.00, 70.00, 68.00, 82.00),      -- Example entry for TG902
('TG903', 69.00, 75.00, 70.00, 80.00, 60.00, 80.00),      -- Example entry for TG903
('TG904', 95.00, 90.00, 85.00, 90.00, 89.00, 88.00),      -- Example entry for TG904
('TG905', 76.00, 85.00, 80.00, 70.00, 78.00, 82.00);      -- Example entry for TG905


CREATE TABLE ICT1283_course_marks ( 
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



INSERT INTO ICT1283_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 95.50, 90.00, 89.00, 100.00, 90.00, 85.00),
('TG1417', 89.50, 90.00, 94.50, 86.00, 99.60, 95.52),
('TG1414', 80.50, 80.50, 65.00, 90.00, 85.00, 98.00),
('TG1415', 88.50, 70.60, 79.50, 100.00, 90.00, 85.00),
('TG1413', 67.60, 90.70, 68.50, 20.00, 0.00, 0.00),
('TG1064', 40.00, 50.50, 70.00, 65.00, 87.00, 90.00),
('TG1063', 58.80, 90.00, 65.50, 60.00, 73.00, 60.00),
('TG1067', 70.00, 90.50, 70.60, 90.00, 80.00, 90.00),
('TG1416', 60.00, 60.00, 90.00, 67.00, 89.00, 67.00),
('TG1345', 90.00, 80.00, 90.00, 87.00, 90.00, 87.00),
('TG1418', 80.60, 70.50, 65.00, 69.00, 76.00, 69.00),
('TG1419', 89.00, 90.00, 44.50, 67.00, 63.00, 67.00),
('TG1420', 80.50, 90.50, 65.00, 85.00, 87.00, 85.00),
('TG1421', 89.00, 80.00, 75.50, 70.00, 80.00, 60.80),
('TG1422', 67.00, 60.00, 70.00, 90.00, 76.00, 85.00),
('TG1423', 65.00, 87.00, 90.00, 65.00, 80.00, 76.00),
('TG1424', 90.00, 90.00, 90.00, 44.50, 76.00, 94.00),
('TG1425', 70.00, 88.00, 60.00, 85.00, 75.00, 85.00),
('TG1426', 90.00, 80.00, 80.00, 90.70, 68.50, 76.00),
('TG1427', 95.50, 90.60, 88.00, 94.00, 85.00, 94.00),
('TG901', 88.00, 90.00, 85.00, 80.00, 75.00, 70.00),       -- Example entry for TG901
('TG902', 77.00, 80.00, 65.00, 70.00, 68.00, 82.00),       -- Example entry for TG902
('TG903', 69.00, 75.00, 70.00, 80.00, 60.00, 80.00),       -- Example entry for TG903
('TG904', 95.00, 90.00, 85.00, 90.00, 89.00, 88.00),       -- Example entry for TG904
('TG905', 76.00, 85.00, 80.00, 70.00, 78.00, 82.00);       -- Example entry for TG905



CREATE TABLE ICT1293_course_marks ( 
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


INSERT INTO ICT1293_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1067', 95.50, 90.00, 85.00, 90.00, 90.00, 85.00),
('TG1417', 89.50, 95.00, 100.00, 89.00, 99.60, 95.52),
('TG1414', 80.50, 90.00, 44.50, 76.00, 85.00, 98.00),
('TG1415', 88.50, 70.60, 90.50, 65.00, 59.00, 85.00),
('TG1413', 67.60, 50.00, 50.00, 20.00, 0.00, 0.00),
('TG1064', 40.00, 50.50, 70.00, 50.00, 50.00, 20.00),
('TG1063', 58.80, 90.00, 65.00, 80.00, 60.00, 60.00),
('TG1416', 60.00, 60.00, 80.00, 60.00, 70.00, 67.00),
('TG1345', 90.00, 80.00, 60.00, 70.00, 90.00, 87.00),
('TG1418', 80.60, 65.50, 40.70, 55.00, 76.00, 69.00),
('TG1419', 89.00, 90.00, 44.50, 65.50, 40.70, 55.00),
('TG1420', 80.50, 90.50, 65.00, 85.00, 87.00, 85.00),
('TG1421', 65.50, 40.70, 55.00, 70.00, 80.00, 60.80),
('TG1422', 67.00, 44.50, 76.00, 75.00, 76.00, 85.00),
('TG1423', 65.00, 87.00, 65.00, 59.00, 65.00, 76.00),
('TG1424', 90.00, 75.50, 86.50, 85.00, 76.00, 94.00),
('TG1425', 70.00, 88.00, 20.00, 26.00, 20.00, 85.00),
('TG1426', 90.00, 80.00, 65.00, 80.00, 68.50, 76.00),
('TG1427', 95.50, 90.60, 90.00, 80.00, 80.00, 94.00),
('TG901', 88.00, 90.00, 85.50, 75.00, 80.00, 82.50),
('TG997', 92.50, 89.00, 91.00, 80.00, 85.00, 88.00),
('TG998', 78.00, 85.50, 80.00, 70.00, 72.50, 74.00),
('TG999', 85.00, 95.00, 88.00, 90.00, 93.00, 91.00),
('TG1002', 80.00, 82.00, 85.00, 77.00, 79.00, 81.00);


CREATE TABLE ICT12101_course_marks ( 
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

INSERT INTO ICT12101_course_marks (student_id, quiz_1, quiz_2, quiz_3, inclass_test_marks, mid_exam_marks, end_exam_marks) VALUES
('TG1062', 88.00, 90.00, 85.00, 80.00, 75.00, 88.00),
('TG1063', 92.50, 85.00, 90.00, 89.00, 95.00, 91.00),
('TG1064', 75.00, 80.00, 78.00, 70.00, 72.00, 74.00),
('TG1414', 90.00, 86.00, 80.00, 80.00, 75.00, 85.00),
('TG1413', 60.00, 70.00, 65.00, 55.00, 60.00, 68.00),
('TG1345', 82.00, 88.00, 90.00, 85.00, 80.00, 83.00),
('TG1067', 100.00, 89.00, 80.00, 90.00, 85.00, 90.00),
('TG1415', 88.00, 78.00, 75.50, 88.50, 85.00, 95.00),
('TG1417', 99.50,  98.00, 100.00, 89.50, 98.60, 99.52),
('TG1416', 60.50, 81.00, 80.00, 60.70, 70.00, 77.00),
('TG1418', 70.00, 50.50, 90.00, 85.00, 69.00, 76.00),
('TG1419', 89.00, 90.00, 44.50, 65.50, 40.70, 55.00),
('TG1420', 60.80, 80.70, 80.00, 90.00, 85.00, 87.00),
('TG1421', 90.00, 70.00, 80.00, 60.80, 85.00, 65.00),
('TG1422',  50.00, 70.00, 40.00, 80.00, 85.00, 78.00),
('TG1423', 60.00, 80.00, 70.00, 50.00, 87.00, 65.00),
('TG1424',  95.00, 100.00, 89.00, 80.00, 90.00, 85.00),
('TG1425', 67.00, 90.70, 68.50, 76.00, 85.00, 78.00),
('TG1426', 90.00, 90.00, 80.00, 80.00, 75.00, 94.00),
('TG1427', 70.00, 80.00, 60.00, 70.00, 60.00, 73.00),
('TG901', 85.00, 88.00, 90.00, 78.00, 80.00, 85.00),
('TG997', 92.00, 90.00, 95.00, 88.00, 89.00, 90.00),
('TG998', 75.00, 80.00, 70.00, 65.00, 70.00, 75.00),
('TG999', 88.50, 87.00, 85.00, 90.00, 92.00, 88.00),
('TG1002', 90.00, 92.50, 89.00, 95.00, 91.00, 90.00);




CREATE TABLE IF NOT EXISTS `student_grade` (
  `student_id` char(6) NOT NULL,
  `course_id` char(8) NOT NULL,
  `final_marks` decimal(5,2) NOT NULL,
  `grade` varchar(5) GENERATED ALWAYS AS (
    (CASE 
      WHEN (`final_marks` < 0) THEN 'MC' 
      WHEN (`final_marks` >= 90) THEN 'A+' 
      WHEN (`final_marks` >= 85) THEN 'A' 
      WHEN (`final_marks` >= 80) THEN 'A-' 
      WHEN (`final_marks` >= 75) THEN 'B+' 
      WHEN (`final_marks` >= 70) THEN 'B' 
      WHEN (`final_marks` >= 65) THEN 'B-' 
      WHEN (`final_marks` >= 60) THEN 'C+' 
      WHEN (`final_marks` >= 55) THEN 'C' 
      WHEN (`final_marks` >= 50) THEN 'C-' 
      WHEN (`final_marks` >= 45) THEN 'D' 
      ELSE 'E' 
    END)
  ) VIRTUAL,
  `SGPA` decimal(3,2) GENERATED ALWAYS AS (
    (CASE 
      WHEN (`grade` = 'A+' OR `grade` = 'A') THEN 4.00 
      WHEN (`grade` = 'A-') THEN 3.70 
      WHEN (`grade` = 'B+') THEN 3.30 
      WHEN (`grade` = 'B') THEN 3.00 
      WHEN (`grade` = 'B-') THEN 2.70 
      WHEN (`grade` = 'C+') THEN 2.30 
      WHEN (`grade` = 'C') THEN 2.00 
      WHEN (`grade` = 'C-') THEN 1.70 
      WHEN (`grade` = 'D') THEN 1.00 
      WHEN (`grade` = 'E') THEN 0.00 
    END)
  ) 
##KEY `student_id` (`student_id`),
 ## KEY `course_id` (`course_id`),
 ## CONSTRAINT `student_grade_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
 ## CONSTRAINT `student_grade_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)  -- Changed couId to course_id
) ##ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP PROCEDURE InsertStudentGrades_ICT1213
DELIMITER //


## GET VALUE FROM  ICT1213_course_marks table
##SART

CREATE PROCEDURE InsertStudentGrades_ICT1213()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT1213_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT1213', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //

##END

## GET VALUE FROM  ICT1222_course_marks table
DELIMITER //
CREATE PROCEDURE InsertStudentGrades_ICT1222()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT1222_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT1222', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //


##   GET VALUE FROM  ICT1233_course_marks table

DELIMITER //
CREATE PROCEDURE InsertStudentGrades_ICT1233()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT1233_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT1233', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //




##   GET VALUE FROM  ICT1242_course_marks table

DELIMITER //
CREATE PROCEDURE InsertStudentGrades_ICT1242()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT1242_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT1242', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //





##   GET VALUE FROM  ICT1253_course_marks table

DELIMITER //
CREATE PROCEDURE InsertStudentGrades_ICT1253()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT1253_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT1253', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //



##   GET VALUE FROM  ICT1261_course_marks table

DELIMITER //
CREATE PROCEDURE InsertStudentGrades_ICT1261()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT1261_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT1261', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //




##   GET VALUE FROM  ICT1293_course_marks table

DELIMITER //
CREATE PROCEDURE InsertStudentGrades_ICT1293()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT1293_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT1293', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //



##   GET VALUE FROM  ICT1283_course_marks  table

DELIMITER //
CREATE PROCEDURE InsertStudentGrades_ICT1283()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT1283_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT1283', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //



##   GET VALUE FROM  ICT1271_course_marks  table

DELIMITER //
CREATE PROCEDURE InsertStudentGrades_ICT1271()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT1271_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT1271', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //




##   GET VALUE FROM  ICT12101_course_marks  table

DELIMITER //
CREATE PROCEDURE InsertStudentGrades_ICT12101()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE student_id_char CHAR(6);
    DECLARE final_marks_value DECIMAL(5,2);

    DECLARE student_cursor CURSOR FOR 
        SELECT student_id, final_marks FROM ICT12101_course_marks;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO student_id_char, final_marks_value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        INSERT INTO student_grade (student_id, course_id, final_marks)
        VALUES (student_id_char, 'ICT12101', final_marks_value);
    END LOOP;

    CLOSE student_cursor;
END //






CALL InsertStudentGrades_ICT1213();
CALL InsertStudentGrades_ICT1222();
CALL InsertStudentGrades_ICT1233();
CALL IInsertStudentGrades_ICT1242();
CALL InsertStudentGrades_ICT1253()
CALL InsertStudentGrades_ICT1261()
CALL InsertStudentGrades_ICT1293()
CALL InsertStudentGrades_ICT1283()
CALL InsertStudentGrades_ICT1271()
CALL InsertStudentGrades_ICT12101();






ALTER TABLE `student_grade`
MODIFY COLUMN `student_id` CHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;

ALTER TABLE `student_grade`
MODIFY COLUMN `course_id` CHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `student_grade`
ADD CONSTRAINT `fk_course_gread_student`
FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`);








CREATE TABLE Student_Performance (
    student_id VARCHAR(12) NOT NULL,
    semester_no INT,
    SGPA DECIMAL(3,2),
    CGPA DECIMAL(3,2),
    GPA DECIMAL(3,2),
    PRIMARY KEY (student_id, semester_no)
);


##SET SGPA for Student_Performance table ##
INSERT INTO Student_Performance (student_id, semester_no,SGPA, CGPA, GPA)
SELECT
    sg.student_id,
    1 AS semester_no,
    (SUM(c.`credit` * CASE
        WHEN sg.Final_marks >= 90 THEN 4.00
        WHEN sg.Final_marks >= 85 THEN 3.70
        WHEN sg.Final_marks >= 80 THEN 3.30
        WHEN sg.Final_marks >= 75 THEN 3.00
        WHEN sg.Final_marks >= 70 THEN 2.70
        WHEN sg.Final_marks >= 65 THEN 2.30
        WHEN sg.Final_marks >= 60 THEN 2.00
        WHEN sg.Final_marks >= 55 THEN 1.70
        WHEN sg.Final_marks >= 50 THEN 1.30
        WHEN sg.Final_marks >= 45 THEN 1.00
        ELSE 0.00
    END) / NULLIF(SUM(c.`credit`), 0)) AS SGPA,
    NULL AS CGPA,
    NULL AS GPA
FROM
    `student_grade` AS sg
JOIN
    `course` AS c ON sg.`course_id` = c.`course_id`
GROUP BY
    sg.`student_id`;



## upadte CGPA of  Student_Performance table 
UPDATE Student_Performance AS sp
JOIN (
    SELECT
        student_id,
        AVG(SGPA) AS Avg_CGPA
    FROM
        Student_Performance
    GROUP BY
        student_id
) AS avg_cgpa ON sp.student_id = avg_cgpa.student_id
SET sp.CGPA = avg_cgpa.Avg_CGPA;

## END

## 
## upadte GPA of  Student_Performance table 
##SART
UPDATE Student_Performance sp
JOIN (
    SELECT 
        student_id,
        AVG(SGPA) AS avg_full_sgpa
    FROM 
        Student_Performance
    GROUP BY 
        student_id
) AS avg_sp ON sp.student_id = avg_sp.student_id
SET sp.GPA = avg_sp.avg_full_sgpa;

##END



 DELIMITER //
CREATE PROCEDURE VIEW_STUDENT_GRADES_AS_BATCH(IN batch CHAR(4))
BEGIN
    SELECT sg.*
    FROM `student_grade` sg
    JOIN `student` s ON sg.`student_id` = s.`student_id`
    WHERE s.`batch` = batch;
END //
DELIMITER ;

## get proper student grads
CALL VIEW_STUDENT_GRADES_AS_BATCH('2022');


## get repeat student grads
CALL VIEW_STUDENT_GRADES_AS_BATCH('2022');


#### get GetStudentDetailsByBatch  student grads AND detalis

CREATE PROCEDURE GetStudentDetailsByBatch(
    IN batch CHAR(4)
)
BEGIN
    SELECT 
        S.student_id,
        S.name AS StudentName,
        COALESCE(
            CASE 
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ENG1222' AND student_id = S.student_id) IS NULL THEN 'No Repeat'
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ENG1222' AND student_id = S.student_id) IN ('C', 'C+') THEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ENG1222' AND student_id = S.student_id)
                ELSE 'C+'
            END, 'No Repeat'
        ) AS ENG1222,
        COALESCE(
            CASE 
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1212' AND student_id = S.student_id) IS NULL THEN 'No Repeat'
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1212' AND student_id = S.student_id) IN ('C', 'C+') THEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1212' AND student_id = S.student_id)
                ELSE 'C+'
            END, 'No Repeat'
        ) AS ICT1212,
        COALESCE(
            CASE 
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1222' AND student_id = S.student_id) IS NULL THEN 'No Repeat'
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1222' AND student_id = S.student_id) IN ('C', 'C+') THEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1222' AND student_id = S.student_id)
                ELSE 'C+'
            END, 'No Repeat'
        ) AS ICT1222,
        COALESCE(
            CASE 
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1233' AND student_id = S.student_id) IS NULL THEN 'No Repeat'
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1233' AND student_id = S.student_id) IN ('C', 'C+') THEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1233' AND student_id = S.student_id)
                ELSE 'C+'
            END, 'No Repeat'
        ) AS ICT1233,
        COALESCE(
            CASE 
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1242' AND student_id = S.student_id) IS NULL THEN 'No Repeat'
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1242' AND student_id = S.student_id) IN ('C', 'C+') THEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1242' AND student_id = S.student_id)
                ELSE 'C+'
            END, 'No Repeat'
        ) AS ICT1242,
        COALESCE(
            CASE 
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1253' AND student_id = S.student_id) IS NULL THEN 'No Repeat'
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1253' AND student_id = S.student_id) IN ('C', 'C+') THEN (SELECT grade FROM `student_grade` WHERE Course_id = 'ICT1253' AND student_id = S.student_id)
                ELSE 'C+'
            END, 'No Repeat'
        ) AS ICT1253,
        COALESCE(
            CASE 
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'TCS1212' AND student_id = S.student_id) IS NULL THEN 'No Repeat'
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'TCS1212' AND student_id = S.student_id) IN ('C', 'C+') THEN (SELECT grade FROM `student_grade` WHERE Course_id = 'TCS1212' AND student_id = S.student_id)
                ELSE 'C+'
            END, 'No Repeat'
        ) AS TCS1212,
        COALESCE(
            CASE 
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'TMS1233' AND student_id = S.student_id) IS NULL THEN 'No Repeat'
                WHEN (SELECT grade FROM `student_grade` WHERE Course_id = 'TMS1233' AND student_id = S.student_id) IN ('C', 'C+') THEN (SELECT grade FROM `student_grade` WHERE Course_id = 'TMS1233' AND student_id = S.student_id)
                ELSE 'C+'
            END, 'No Repeat'
        ) AS TMS1233,
        SP.SGPA,
        SP.CGPA
    FROM 
        `student` AS S
    JOIN 
        Student_Performance AS SP ON S.student_id = SP.student_id
    WHERE 
        S.batch = batch;
END //

DELIMITER ;

CALL GetStudentDetailsByBatch('2021'); 
# repeat student
CALL GetStudentDetailsByBatch('2022');
## proper student;