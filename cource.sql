
##  `cource` table structure
##SART
CREATE TABLE IF NOT EXISTS  `course` (`course_id` CHAR(8) PRIMARY KEY ,
`name` VARCHAR(100),
`credit` INT ,
`week` VARCHAR(20)
);
##END

## `cource` user data insert
INSERT INTO `course`(`course_id`,`name`,`credit`,`week`) VALUES
('ICT1213', 'Database_management_system', 3, '15'),
('ICT1222', 'computer_rchitecture', 2, '15'), 
('ICT1233', 'Computer_network', 3, '15'),  
('ICT1242', 'Server_side_web_development', 2, '15'),  
('ICT1253', 'Computer_programing', 3, '15'),  
('ICT1261', 'Muiltimedia_technology', 1, '15'),  
('ICT1271', 'Fundamendal_of_IS', 1, '15'),  
('ICT1283', 'Web_technology', 3, '15'),  
('ICT1293', 'Artificial_inteligence', 3, '15'),  
('ICT12101', 'Software_engineering', 2, '15');








##  `course_registration` table structure

CREATE TABLE IF NOT EXISTS `course_registration` (
  `student_id` CHAR(6),
  `course_code` CHAR(8),
  `status` VARCHAR(10),
  PRIMARY KEY (`student_id`, `course_code`)
);

## `course_registration` user data insert
##SART
INSERT INTO `course_registration` (`student_id`, `course_code`, `status`) VALUES
-- TG1062 Registrations
('TG1062', 'ICT1213', 'Conform'),
('TG1062', 'ICT1222', 'Conform'),
('TG1062', 'ICT1233', 'Conform'),
('TG1062', 'ICT1242', 'Conform'),
('TG1062', 'ICT1253', 'Conform'),
('TG1062', 'ICT1261', 'Conform'),
('TG1062', 'ICT1271', 'Conform'),
('TG1062', 'ICT1283', 'Conform'),
('TG1062', 'ICT1293', 'Conform'),
('TG1062', 'ICT12101', 'Conform'),

-- TG1063 Registrations
('TG1063', 'ICT1213', 'Conform'),
('TG1063', 'ICT1222', 'Conform'),
('TG1063', 'ICT1233', 'Conform'),
('TG1063', 'ICT1242', 'Conform'),
('TG1063', 'ICT1253', 'Conform'),
('TG1063', 'ICT1261', 'Conform'),
('TG1063', 'ICT1271', 'Conform'),
('TG1063', 'ICT1283', 'Conform'),
('TG1063', 'ICT1293', 'Conform'),
('TG1063', 'ICT12101', 'Conform'),

-- TG1064 Registrations
('TG1064', 'ICT1213', 'Conform'),
('TG1064', 'ICT1222', 'Conform'),
('TG1064', 'ICT1233', 'Conform'),
('TG1064', 'ICT1242', 'Conform'),
('TG1064', 'ICT1253', 'Conform'),
('TG1064', 'ICT1261', 'Conform'),
('TG1064', 'ICT1271', 'Conform'),
('TG1064', 'ICT1283', 'Conform'),
('TG1064', 'ICT1293', 'Conform'),
('TG1064', 'ICT12101', 'Conform'),

-- TG1414 Registrations
('TG1414', 'ICT1213', 'Conform'),
('TG1414', 'ICT1222', 'Conform'),
('TG1414', 'ICT1233', 'Conform'),
('TG1414', 'ICT1242', 'Conform'),
('TG1414', 'ICT1253', 'Conform'),
('TG1414', 'ICT1261', 'Conform'),
('TG1414', 'ICT1271', 'Conform'),
('TG1414', 'ICT1283', 'Conform'),
('TG1414', 'ICT1293', 'Conform'),
('TG1414', 'ICT12101', 'Conform'),

-- TG1413 Registrations
('TG1413', 'ICT1213', 'Conform'),
('TG1413', 'ICT1222', 'Conform'),
('TG1413', 'ICT1233', 'Conform'),
('TG1413', 'ICT1242', 'Conform'),
('TG1413', 'ICT1253', 'Conform'),
('TG1413', 'ICT1261', 'Conform'),
('TG1413', 'ICT1271', 'Conform'),
('TG1413', 'ICT1283', 'Conform'),
('TG1413', 'ICT1293', 'Conform'),
('TG1413', 'ICT12101', 'Conform'),

-- TG1345 Registrations
('TG1345', 'ICT1213', 'Conform'),
('TG1345', 'ICT1222', 'Conform'),
('TG1345', 'ICT1233', 'Conform'),
('TG1345', 'ICT1242', 'Conform'),
('TG1345', 'ICT1253', 'Conform'),
('TG1345', 'ICT1261', 'Conform'),
('TG1345', 'ICT1271', 'Conform'),
('TG1345', 'ICT1283', 'Conform'),
('TG1345', 'ICT1293', 'Conform'),
('TG1345', 'ICT12101', 'Conform'),

-- TG1067 Registrations
('TG1067', 'ICT1213', 'Conform'),
('TG1067', 'ICT1222', 'Conform'),
('TG1067', 'ICT1233', 'Conform'),
('TG1067', 'ICT1242', 'Conform'),
('TG1067', 'ICT1253', 'Conform'),
('TG1067', 'ICT1261', 'Conform'),
('TG1067', 'ICT1271', 'Conform'),
('TG1067', 'ICT1283', 'Conform'),
('TG1067', 'ICT1293', 'Conform'),
('TG1067', 'ICT12101', 'Conform'),

-- TG1415 Registrations
('TG1415', 'ICT1213', 'Conform'),
('TG1415', 'ICT1222', 'Conform'),
('TG1415', 'ICT1233', 'Conform'),
('TG1415', 'ICT1242', 'Conform'),
('TG1415', 'ICT1253', 'Conform'),
('TG1415', 'ICT1261', 'Conform'),
('TG1415', 'ICT1271', 'Conform'),
('TG1415', 'ICT1283', 'Conform'),
('TG1415', 'ICT1293', 'Conform'),
('TG1415', 'ICT12101', 'Conform'),

-- TG1417 Registrations
('TG1417', 'ICT1213', 'Conform'),
('TG1417', 'ICT1222', 'Conform'),
('TG1417', 'ICT1233', 'Conform'),
('TG1417', 'ICT1242', 'Conform'),
('TG1417', 'ICT1253', 'Conform'),
('TG1417', 'ICT1261', 'Conform'),
('TG1417', 'ICT1271', 'Conform'),
('TG1417', 'ICT1283', 'Conform'),
('TG1417', 'ICT1293', 'Conform'),
('TG1417', 'ICT12101', 'Conform'),

-- TG1416 Registrations
('TG1416', 'ICT1213', 'Conform'),
('TG1416', 'ICT1222', 'Conform'),
('TG1416', 'ICT1233', 'Conform'),
('TG1416', 'ICT1242', 'Conform'),
('TG1416', 'ICT1253', 'Conform'),
('TG1416', 'ICT1261', 'Conform'),
('TG1416', 'ICT1271', 'Conform'),
('TG1416', 'ICT1283', 'Conform'),
('TG1416', 'ICT1293', 'Conform'),
('TG1416', 'ICT12101', 'Conform'),

-- TG1418 Registrations
('TG1418', 'ICT1213', 'Conform'),
('TG1418', 'ICT1222', 'Conform'),
('TG1418', 'ICT1233', 'Conform'),
('TG1418', 'ICT1242', 'Conform'),
('TG1418', 'ICT1253', 'Conform'),
('TG1418', 'ICT1261', 'Conform'),
('TG1418', 'ICT1271', 'Conform'),
('TG1418', 'ICT1283', 'Conform'),
('TG1418', 'ICT1293', 'Conform'),
('TG1418', 'ICT12101', 'Conform'),

-- TG1419 Registrations
('TG1419', 'ICT1213', 'Conform'),
('TG1419', 'ICT1222', 'Conform'),
('TG1419', 'ICT1233', 'Conform'),
('TG1419', 'ICT1242', 'Conform'),
('TG1419', 'ICT1253', 'Conform'),
('TG1419', 'ICT1261', 'Conform'),
('TG1419', 'ICT1271', 'Conform'),
('TG1419', 'ICT1283', 'Conform'),
('TG1419', 'ICT1293', 'Conform'),
('TG1419', 'ICT12101', 'Conform'),

-- TG1420 Registrations
('TG1420', 'ICT1213', 'Conform'),
('TG1420', 'ICT1222', 'Conform'),
('TG1420', 'ICT1233', 'Conform'),
('TG1420', 'ICT1242', 'Conform'),
('TG1420', 'ICT1253', 'Conform'),
('TG1420', 'ICT1261', 'Conform'),
('TG1420', 'ICT1271', 'Conform'),
('TG1420', 'ICT1283', 'Conform'),
('TG1420', 'ICT1293', 'Conform'),
('TG1420', 'ICT12101', 'Conform'),

-- TG1421 Registrations
('TG1421', 'ICT1213', 'Conform'),
('TG1421', 'ICT1222', 'Conform'),
('TG1421', 'ICT1233', 'Conform'),
('TG1421', 'ICT1242', 'Conform'),
('TG1421', 'ICT1253', 'Conform'),
('TG1421', 'ICT1261', 'Conform'),
('TG1421', 'ICT1271', 'Conform'),
('TG1421', 'ICT1283', 'Conform'),
('TG1421', 'ICT1293', 'Conform'),
('TG1421', 'ICT12101', 'Conform'),

-- TG1422 Registrations
('TG1422', 'ICT1213', 'Conform'),
('TG1422', 'ICT1222', 'Conform'),
('TG1422', 'ICT1233', 'Conform'),
('TG1422', 'ICT1242', 'Conform'),
('TG1422', 'ICT1253', 'Conform'),
('TG1422', 'ICT1261', 'Conform'),
('TG1422', 'ICT1271', 'Conform'),
('TG1422', 'ICT1283', 'Conform'),
('TG1422', 'ICT1293', 'Conform'),
('TG1422', 'ICT12101', 'Conform'),

-- TG1423 Registrations
('TG1423', 'ICT1213', 'Conform'),
('TG1423', 'ICT1222', 'Conform'),
('TG1423', 'ICT1233', 'Conform'),
('TG1423', 'ICT1242', 'Conform'),
('TG1423', 'ICT1253', 'Conform'),
('TG1423', 'ICT1261', 'Conform'),
('TG1423', 'ICT1271', 'Conform'),
('TG1423', 'ICT1283', 'Conform'),
('TG1423', 'ICT1293', 'Conform'),
('TG1423', 'ICT12101', 'Conform'),

-- TG1424 Registrations
('TG1424', 'ICT1213', 'Conform'),
('TG1424', 'ICT1222', 'Conform'),
('TG1424', 'ICT1233', 'Conform'),
('TG1424', 'ICT1242', 'Conform'),
('TG1424', 'ICT1253', 'Conform'),
('TG1424', 'ICT1261', 'Conform'),
('TG1424', 'ICT1271', 'Conform'),
('TG1424', 'ICT1283', 'Conform'),
('TG1424', 'ICT1293', 'Conform'),
('TG1424', 'ICT12101', 'Conform'),

-- TG1425 Registrations
('TG1425', 'ICT1213', 'Conform'),
('TG1425', 'ICT1222', 'Conform'),
('TG1425', 'ICT1233', 'Conform'),
('TG1425', 'ICT1242', 'Conform'),
('TG1425', 'ICT1253', 'Conform'),
('TG1425', 'ICT1261', 'Conform'),
('TG1425', 'ICT1271', 'Conform'),
('TG1425', 'ICT1283', 'Conform'),
('TG1425', 'ICT1293', 'Conform'),
('TG1425', 'ICT12101', 'Conform'),

-- TG1426 Registrations
('TG1426', 'ICT1213', 'Conform'),
('TG1426', 'ICT1222', 'Conform'),
('TG1426', 'ICT1233', 'Conform'),
('TG1426', 'ICT1242', 'Conform'),
('TG1426', 'ICT1253', 'Conform'),
('TG1426', 'ICT1261', 'Conform'),
('TG1426', 'ICT1271', 'Conform'),
('TG1426', 'ICT1283', 'Conform'),
('TG1426', 'ICT1293', 'Conform'),
('TG1426', 'ICT12101', 'Conform'),

-- TG1427 Registrations
('TG1427', 'ICT1213', 'Conform'),
('TG1427', 'ICT1222', 'Conform'),
('TG1427', 'ICT1233', 'Conform'),
('TG1427', 'ICT1242', 'Conform'),
('TG1427', 'ICT1253', 'Conform'),
('TG1427', 'ICT1261', 'Conform'),
('TG1427', 'ICT1271', 'Conform'),
('TG1427', 'ICT1283', 'Conform'),
('TG1427', 'ICT1293', 'Conform'),
('TG1427', 'ICT12101', 'Conform');

##END


