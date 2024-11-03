
## `payables` table  structure 

CREATE TABLE IF NOT EXISTS `payables` (
    `payable_id` CHAR(6) PRIMARY KEY,
    `type` VARCHAR(100),
    `amount` DECIMAL(7,2),
);


## insert data into  `payables` table
##SART
INSERT INTO `payables` VALUES
    ('p00001', 'Chair damage', 5000.00),
    ('p00002', 'Table damage', 3000.00),
    ('p00003', 'Door damage', 3500.00),
    ('p00004', 'Chair damage', 2000.00);
##END

CREATE TABLE IF NOT EXISTS `pay`(
    `student_id` CHAR(6),
    `payable_id` CHAR(6),
    `pay_date` DATE,
    `status` VARCHAR(3),
    -- PRIMARY KEY (`student_id`, `payable_id`)
);

INSERT INTO `pay` VALUES
('tg1416','p00001','2024-10-05','yes'),
('tg1415','p00002','2024-07-09','yes'),
('tg1420','p00003','2024-04-22','no'),
('tg1427','p00004','2024-09-13','no');



## payables table 
ALTER TABLE `payables`
MODIFY COLUMN `payable_id` CHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;

ALTER TABLE `student`
MODIFY COLUMN `student_id` CHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;



## add `pay` table FOREIGN KEY as `payable_id` from  `payables`
##SART
ALTER TABLE `pay`
MODIFY COLUMN `payable_id` CHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;
ALTER TABLE `pay`
ADD CONSTRAINT `fk_pay_payables`
FOREIGN KEY (`payable_id`) REFERENCES `payables`(`payable_id`);
##END