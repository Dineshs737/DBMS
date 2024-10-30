
-- create  function show cource data
DELIMITER //
CREATE PROCEDURE showALLCources()
BEGIN
SELECT * FROM Cource;
END//
DELIMITER ;

-- SELECT * FROM  CourceName;


-- create view for courceID , cource Name 


CREATE VIEW CourceName AS 
SELECT Cource_id AS ID , Name AS  COURCE FROM Cource ;

-- SELECT * FROM  CourceName;

-- SHOW ALL DATA FROM  Database_management_system marks

CREATE VIEW `get_databaseManagementSystemMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT1213_course_marks;

-- SELECT * FROM `get_databaseManagementSystemMarks`;




-- get all data from computer_architecture marks

CREATE VIEW `get_Computer_architectureMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT1222_course_marks;


-- SELECT * FROM `get_Computer_architectureMarks`;

--get all data from network subject marks
CREATE VIEW `get_Computer_networkMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT1233_course_marks;

-- SELECT * FROM `get_Computer_networkMarks`;


--get all data from Server side web development marks
CREATE VIEW `get_Server_side_web_developmentMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT1242_course_marks;

-- SELECT * FROM `get_Server_side_web_developmentMarks`;

--get all data from Computer_programing marks

CREATE VIEW `get_Computer_programingMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT1253_course_marks;

-- SELECT * FROM `get_Computer_programingMarks`;



--get all data from Muiltimedia_technology marks

CREATE VIEW `get_Muiltimedia_technologyMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT1261_course_marks;

-- SELECT * FROM `get_Muiltimedia_technologyMarks`;


--get all data from Muiltimedia_technology marks

CREATE VIEW `get_Fundamendal_of_ISMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT1271_course_marks;

-- SELECT * FROM `get_Fundamendal_of_ISMarks`;

--get all data from Web_technology marks
CREATE VIEW `get_Web_technologyMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT1283_course_marks;


-- SELECT * FROM `get_Web_technologyMarks`;

--get all data from Artificial_inteligence marks
CREATE VIEW `Artificial_inteligenceMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT1293_course_marks;


-- SELECT * FROM `Artificial_inteligenceMarks`;


--get all data from Artificial_inteligence marks
CREATE VIEW `Software_engineeringMarks` AS 
SELECT student_id AS `TG NUMBER` ,
quiz_1 AS `QUIZ ONE` ,
quiz_2 AS `QUIZ TWO`, 
quiz_3 AS `QUIZ THREE`,
inclass_test_marks AS `IN CLASS TEST`,
mid_exam_marks AS `MID EXAM`, 
end_exam_marks AS `END EXAM` 
FROM ICT12101_course_marks;


-- SELECT * FROM `Software_engineeringMarks`;





