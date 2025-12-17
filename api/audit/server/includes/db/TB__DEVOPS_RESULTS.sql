CREATE TABLE `results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(4) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `APP` varchar(50) NOT NULL,
  `SUITE` varchar(14) NOT NULL,
  `GOAL` varchar(150) NOT NULL,
  `USERNAME` varchar(15) NOT NULL,
  `LANGUAGE` varchar(5) NOT NULL,
  `SERVER` varchar(15) NOT NULL,
  `TESTER` varchar(15) NOT NULL,
  `BROWSER` varchar(10) NOT NULL,
  `MODE` char(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
