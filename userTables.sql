 
 ## user table structure
 ##SART
 
CREATE TABLE IF NOT EXISTS `user` (
    `NIC` VARCHAR(13) NOT NULL PRIMARY KEY,
    `email` VARCHAR(50) NOT NULL,
    `role` VARCHAR(100) NOT NULL,
    `contact_no` VARCHAR(15) NOT NULL,
    `password` VARCHAR(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



## end ##

 

 ## student user data insert

## SART
INSERT INTO `user` (`NIC`, `email`, `role`, `contact_no`, `password`) VALUES
    ('200127800625', 'Jamper999@gmail.com', 'Student', '761234654', 'rD5hF3kA9s3Z'),
    ('200157800625', 'otara87@gmail.com', 'Student', '761234789', 'fY7gL2mJ1qR8'),
    ('200130800025', 'manodra@gmail.com', 'Student', '761234678', 'vC6jB4hZ2pN5'),
    ('200227900425', 'rajapaksha@gmail.com', 'Student', '761234565', 'aS9fT1qL8zW3'),
    ('200240800625', 'asmaakram2@gmail.com', 'Student', '761234564', 'xM4bJ3sH5wK7'),
    ('200127700625', 'kanadipudayan@gmail.com', 'Student', '718032400', 'kH2nY9jF4bM1'),
    ('200127800626', 'shalini52@gmail.com', 'Student', '761234567', 'nG3vS2tA7hB8'),
    ('200127800565', 'pema00@gmail.com', 'Student', '718032468', 'pB1kM7tF8wR3'),
    ('200127800800', 'anpuSin@gmail.com', 'Student', '761234573', 'cD5xP1jA9kF2'),
    ('200277889955', 'dinesh@gmail.com', 'Student', '749900223', 'lT7rG3hJ2qX5'),
    ('200212345678', 'kaviya@gmail.com', 'Student', '788765432', 'jH1bM9zA4pF7'),
    ('200289765411', 'dhanu@gmail.com', 'Student', '745432188', 'eY8nJ4mB2tR3'),
    ('202289786756', 'dharshi@gmail.com', 'Student', '751234509', 'qH5mK2nF7yS8'),
    ('200299666543', 'thinesh@gmail.com', 'Student', '750987653', 'gL8fN1pB3rX5'),
    ('200278904321', 'akram@gmail.com', 'Student', '764545456', 'dC2vM6qF9tK4'),
    ('200234567890', 'thak@gmail.com', 'Student', '761234098', 'xG5nF3hM1yB9'),
    ('200287667887', 'keerthan@gmail.com', 'Student', '789876588', 'hZ1mK7jF2cN4'),
    ('200223450987', 'madhu@gmail.com', 'Student', '753456789', 'nA3pT8bF1kR6'),
    ('200212347890', 'suba@gmail.com', 'Student', '747474745', 'tR6kB1nD3fW5'),
    ('200298769876', 'praveen@gmail.com', 'Student', '757698089', 'qL2gF9pB4hK8');

    ## END


## Technical_officer user data insert

##SART
    INSERT INTO `user` (`NIC`, `email`, `role`, `contact_no`, `password`)VALUES
    ('199012345678', 'kavindi@gmail.com', 'Technical_officer', '769870000', 'rQ8wT5zL3qA9'),
    ('199109876543', 'raja@gmail.com', 'Technical_officer', '755566799', 'hG5mF2yB7tD1'),
    ('198956788765', 'kamal@gmail.com', 'Technical_officer', '760987654', 'xJ3qT8gB1mS2'),
    ('198809877890', 'vihanga@gmail.com', 'Technical_officer', '760000987', 'zF4nD7kL9jE3'),
    ('199576547654', 'mithu@gmail.com', 'Technical_officer', '756677665', 'vN1jH6aM5pR8');
##END


## admin user data insert

## SART
INSERT INTO `user` (`NIC`, `email`, `role`, `contact_no`, `password`)VALUES
    ('198366114466', 'suman@gmail.com', 'Admin', '719877898', 'yH7qR5dX3kF2'),
    ('197899556644', 'gamage@gmail.com', 'Admin', '765677655', 'jT1fA8kL0mP9'),
    ('199600987656', 'nilan@gmail.com', 'Admin', '754455660', 'tR3nE2yF5hJ8'),
    ('199500456789', 'nikmal@gmail.com', 'Admin', '779988776', 'fG4mW8tN1kS3'),
    ('198755678908', 'namal@gmail.com', 'Admin', '751237778', 'qW2zH6eF9pD1');
##END

## Lecturer user data insert

##SART
INSERT INTO `user` (`NIC`, `email`, `role`, `contact_no`, `password`) VALUES
    ('198812332111', 'aayansh@gmail.com', 'Lecturer', '0712345678', '7a9c5c12f8b4'),
    ('197798788855', 'kavindi@gmail.com', 'Lecturer', '0781234567', '8c7d1a84b2e3'),
    ('197800099988', 'nadeesha@gmail.com', 'Lecturer', '0745678123', '5e4c6a9f3d1f'),
    ('198155667788', 'tharindu@gmail.com', 'Lecturer', '0712348765', '2f3d9e8b4a6a'),
    ('198000998877', 'ishara@gmail.com', 'Lecturer', '0787654321', '0b1a3e6c8c2b'),
    ('199112340987', 'lakal@gmail.com', 'Lecturer', '0741234567', '8d7e5f0a2e4b'),
    ('198088336611', 'ruwan@gmail.com', 'Lecturer', '0712349876', '1a2d3e4f5b6c'),
    ('198900664433', 'nishan@gmail.com', 'Lecturer', '0789123456', '6c5b4e3d2a1f'),
    ('198622330099', 'shaneeka@gmail.com', 'Lecturer', '0712346589', '4b3c2d5e8f1a'),
    ('198977889911', 'kusum@gmail.com', 'Lecturer', '0745678901', '5e6f7d8c3b2a');
    ##END


## dean user data insert

##SART

INSERT INTO `user` (`NIC`, `email`, `role`, `contact_no`, `password`) VALUES
    ('198009809877', 'praveen.kanth@gmail.com', 'Dean', '0712345678', '4f3b8a1e2c3d'),
    ('197278998766', 'thinesh@gmail.com', 'Dean', '0781234567', '6e7f1d2c4b5a'),
    ('1970770012344', 'snakebabu@gmail.com', 'Dean', '0745678123', '9a2b4e1d6c3f');
##END

