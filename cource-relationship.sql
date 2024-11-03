
## MODIFY  `cource` TABLE `cource_id` 
 
ALTER TABLE `course`
MODIFY COLUMN `course_id` CHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;

ALTER TABLE `student`
MODIFY COLUMN `student_id` CHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;




## add `course_registration` table FOREIGN KEY as `cource_id` from  `cource`
##SART
## add `course_registration` table FOREIGN KEY as `cource_id` from  `cource`
##SART
ALTER TABLE `course_registration`
MODIFY COLUMN `course_code` CHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `course_registration`
ADD CONSTRAINT `fk_course_registration_course`
FOREIGN KEY (`student_id`) REFERENCES `course`(`course_id`);

## add `course_registration` table FOREIGN KEY as `student_id` from  `student`
ALTER TABLE `course_registration`
MODIFY COLUMN `student_id` CHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `course_registration`
ADD CONSTRAINT `fk_course_registration_student`
FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`);



##END

## add `exam_registration` table FOREIGN KEY as `cource_id` from  `cource`
##SART
ALTER TABLE `exam_registration`
MODIFY COLUMN `course_code` CHAR(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
##
##add `exam_registration` table FOREIGN KEY as NIC from  `cource`
ALTER TABLE `exam_registration`
ADD CONSTRAINT `fk_course_registration_course`
FOREIGN KEY (`course_code`) REFERENCES `course`(`course_id`);

## add `exam_registration` table FOREIGN KEY as `student_id` from  `student`
ALTER TABLE `exam_registration`
MODIFY COLUMN `student_id` CHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `exam_registration`
ADD CONSTRAINT `fk_course_registration_student`
FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`);
##END

