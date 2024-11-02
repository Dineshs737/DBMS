### @table relationships ###

## add `lecturer` table FOREIGN KEY as NIC from  `USER`
## add FOREIGN KEY  to `lecturer` as `NIC` from `user` table
#SHOW FULL COLUMNS FROM `user`;
#SHOW FULL COLUMNS FROM `lecturer`;

##SART
ALTER TABLE `user`
MODIFY COLUMN `NIC` CHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;

ALTER TABLE `lecturer`
MODIFY COLUMN `NIC` CHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;


ALTER TABLE `lecturer`
ADD CONSTRAINT `fk_lecturer_user`
FOREIGN KEY (`NIC`) REFERENCES `user`(`NIC`)
ON DELETE CASCADE
ON UPDATE CASCADE;

##END
##

## add `student` table FOREIGN KEY as NIC from  `USER`

## SART
/*ALTER TABLE `student`
MODIFY COLUMN `NIC` CHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

ALTER TABLE `student`
ADD CONSTRAINT `fk_student_user`
FOREIGN KEY (`NIC`) REFERENCES `user`(`NIC`)
ON DELETE CASCADE
ON UPDATE CASCADE;
*/
##END

## add `admin` table FOREIGN KEY as NIC from  `USER`
##SART
ALTER TABLE `admin`
MODIFY COLUMN `NIC` CHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

ALTER TABLE `admin`
ADD CONSTRAINT `fk_admin_user`
FOREIGN KEY (`NIC`) REFERENCES `user`(`NIC`)
ON DELETE CASCADE
ON UPDATE CASCADE;
##END


## add `dean` table FOREIGN KEY as NIC from  `USER`

##SART

ALTER TABLE `dean`
MODIFY COLUMN `NIC` CHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

ALTER TABLE `dean`
ADD CONSTRAINT `fk_dean_user`
FOREIGN KEY (`NIC`) REFERENCES `user`(`NIC`)
ON DELETE CASCADE
ON UPDATE CASCADE;

##END

## add `dean` table FOREIGN KEY as NIC from  `USER`
##SART
ALTER TABLE `technical_Officer`
MODIFY COLUMN `NIC` CHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

ALTER TABLE `technical_Officer`
ADD CONSTRAINT `fk_technical_Officer_user`
FOREIGN KEY (`NIC`) REFERENCES `user`(`NIC`)
ON DELETE CASCADE
ON UPDATE CASCADE;
##END

## add `student` table FOREIGN KEY as NIC from  `USER`

##SART
ALTER TABLE `student`
MODIFY COLUMN `NIC` CHAR(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

ALTER TABLE `student`
ADD CONSTRAINT `fk_technical_student_user`
FOREIGN KEY (`NIC`) REFERENCES `user`(`NIC`)
ON DELETE CASCADE
ON UPDATE CASCADE;
##END







