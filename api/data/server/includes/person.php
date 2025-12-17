<?php
	include_once 'connection.php';

	class Person extends Connection{
			
		public function get_person($type){

			$conne = $this->connect();
			
			$min = rand(1, 5033164);
			$max = $min + 100;
			
			if ($type == 'ALL'){
				$query = "SELECT TOP 1 * FROM DEVOPS_PERSON WHERE (ID BETWEEN " . $min . " AND " . $max . ") ORDER BY NEWID()";
			}
			else{
				$query = "SELECT TOP 1 * FROM DEVOPS_PERSON WHERE (ID BETWEEN " . $min . " AND " . $max . ") AND UPPER(TYPE_PERSON) = '" . strtoupper($type) . "' ORDER BY NEWID()";
			}
			
			$result = sqlsrv_query($conne, $query);

			if($result){
				while( $obj = sqlsrv_fetch_object( $result )) {

					$array = array(
						"ID" => $obj->ID,
						"TYPE_PERSON" => $obj->TYPE_PERSON,
						"GENDER" => $obj->GENDER,
						"FULLNAME" => $obj->FULLNAME,
						"FIRSTNAME" => $obj->FIRSTNAME,
						"MIDDLENAME" => $obj->MIDDLENAME,
						"LASTNAME" => $obj->LASTNAME,
						"FATHERNAME" => $obj->FATHERNAME,
						"MOTHERNAME" => $obj->MOTHERNAME,
						"OCCUPATION" => $obj->OCCUPATION,
						"BIRTH_DATE" => $obj->BIRTH_DATE->format('Y-m-d'),
						"MAJOR_DATE" => $obj->MAJOR_DATE->format('Y-m-d'),
						"CONTRACT_DATE" => $obj->CONTRACT_DATE->format('Y-m-d'),
						"BLOOD" => $obj->BLOOD,
						"WEIGHT" => $obj->WEIGHT,
						"HEIGHT" => $obj->HEIGHT,
						"CEP" => $obj->CEP,
						"STATE" => $obj->STATE,
						"CITY" => $obj->CITY,
						"NEIGHBORHOOD" => $obj->NEIGHBORHOOD,
						"ADDRESS" => $obj->ADDRESS,
						"NUMBER" => $obj->NUMBER,
						"COMPLEMENT" => $obj->COMPLEMENT,
						"EMAIL_COMMERCIAL_LONG" => $obj->EMAIL_COMMERCIAL_LONG,
						"EMAIL_COMMERCIAL_SHORT" => $obj->EMAIL_COMMERCIAL_SHORT,
						"EMAIL_PARTICULAR_LONG" => $obj->EMAIL_PARTICULAR_LONG,
						"EMAIL_PARTICULAR_SHORT" => $obj->EMAIL_PARTICULAR_SHORT,
						"PASSWORD" => $obj->PASSWORD,
						"CELLPHONE" => $obj->CELLPHONE,
						"TELEPHONE" => $obj->TELEPHONE,
						"CPF" => $obj->CPF,
						"PIS" => $obj->PIS,
						"RG" => $obj->RG,
						"CNH" => $obj->CNH,
						"RCN" => $obj->RCN,
						"VOTER_TITLE" => $obj->VOTER_TITLE,
					);
				}
				sqlsrv_close($conne);
				unset($conne);
				unset($query);

				$json = json_encode($array, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT  | JSON_UNESCAPED_SLASHES);
				return $json;
			}
		}	
	}
?>