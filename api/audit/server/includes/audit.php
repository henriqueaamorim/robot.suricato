<?php
    
    class Audit extends Connection{
        
        public function insert_or_update_audit($status, $date, $app, $suite, $goal, $username, $language, $server, $tester, $browser, $mode){

            $stmt = $this->connect()->prepare("SELECT * FROM `RESULTS` WHERE `APP` = ? AND `SUITE` = ? AND `SERVER` = ? AND `BROWSER` = ? AND `LANGUAGE` = ?");
            $stmt->execute([$app, $suite, $server, $browser, $language]);

            if(!$stmt->rowCount()){
                $stmt = $this->connect()->prepare("INSERT INTO `RESULTS` (`ID`, `STATUS`, `DATE`, `APP`, `SUITE`, `GOAL`, `USERNAME`, `LANGUAGE`, `SERVER`, `TESTER`, `BROWSER`, `MODE`) VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                $stmt->execute(array(strtoupper($status), $date, $app, strtoupper($suite), $goal, strtoupper($username), strtoupper($language), $server, $tester, strtoupper($browser), strtoupper($mode)));
            }
			
			else{
				$stmt = $this->connect()->prepare("UPDATE `RESULTS` SET `GOAL` = ?, `DATE` = ?, `STATUS` = ?, `USERNAME` = ?, `TESTER` = ?, `MODE` = ? WHERE `APP` = ? AND `SUITE` = ? AND `SERVER` = ? AND `BROWSER` = ? AND `LANGUAGE` = ? ");
				$stmt->execute([$goal, $date, $status, strtoupper($username), $tester, strtoupper($mode), $app, strtoupper($suite), $server, strtoupper($browser), strtoupper($language)]);
			}
        }
    }
?>
