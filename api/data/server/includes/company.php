<?php
	include_once 'connection.php';

	class Company extends Connection{
			
		public function get_company($type){

			$conne = $this->connect();
			
			$min = rand(0, 2000);
			$max = $min + 100;
			
			if ($type == 'ALL'){
				$query = "SELECT TOP 1 * FROM DEVOPS_COMPANY WHERE (ID BETWEEN " . $min . " AND " . $max . ") ORDER BY NEWID()";
			}
			else{
				$query = "SELECT TOP 1 * FROM DEVOPS_COMPANY WHERE (ID BETWEEN " . $min . " AND " . $max . ") AND UPPER(TYPER) = '" . strtoupper($type) . "' ORDER BY NEWID()";
			}
			
			$result = sqlsrv_query($conne, $query);

			if($result){
				while( $obj = sqlsrv_fetch_object( $result )) {

					$array = array(
						"ID" => $obj->ID,
						"TYPER" => $obj->TYPER,
						"COUNTRY" => $obj->COUNTRY,
						"NAME" => $obj->NAME,
						"BRAND" => $obj->BRAND, 
						"FOUNDATION" => $obj->FOUNDATION->format('Y-m-d'),
						"SIZE" => $obj->SIZE,
						"WORKERS" => $obj->WORKERS,
						"CNPJ" => $obj->CNPJ,
						"CEI" => $obj->CEI,
						"INSCRIPTION" => $obj->INSCRIPTION,
						"RESPONSIBLE" => $obj->RESPONSIBLE,
						"RESPONSIBLE_CPF" => $obj->RESPONSIBLE_CPF,
						"EMAIL" => $obj->EMAIL,
						"WEBSITE" => $obj->WEBSITE,
						"CELLPHONE" => $obj->CELLPHONE,
						"TELEPHONE" => $obj->TELEPHONE,
						"CEP" => $obj->CEP,
						"STATE" => $obj->STATE,
						"CITY" => $obj->CITY,
						"NEIGHBORHOOD" => $obj->NEIGHBORHOOD,
						"ADDRESS" => $obj->ADDRESS,
						"NUMBER" => $obj->NUMBER,
						"COMPLEMENT" => $obj->COMPLEMENT,
					);
				}
				sqlsrv_close($conne);
				unset($conne);
				unset($query);

				$json = json_encode($array, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);
				return $json;
			}
		}	
	}
?>