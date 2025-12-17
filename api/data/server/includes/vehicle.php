<?php
	include_once 'connection.php';

	class Vehicle extends Connection{
			
		public function get_vehicle($type){

			$conne = $this->connect();
		
			if ($type == 'ALL'){
				$min = rand(1, 2890);
				$max = $min + 100;
				$query = "SELECT TOP 1 * FROM DEVOPS_VEHICLE WHERE (ID BETWEEN " . $min . " AND " . $max . ") ORDER BY NEWID()";
			}
			else if (strpos("CARRO", $type) !== false){
				$min = rand(327, 1452);
				$max = $min + 100;
				$query = "SELECT TOP 1 * FROM DEVOPS_VEHICLE WHERE (ID BETWEEN " . $min . " AND " . $max . ") AND (UPPER(TYPE_VEHICLE) LIKE '" . $type . "%' OR UPPER(TYPE_VEHICLE) LIKE 'TAXI') ORDER BY NEWID()";
			}
			else if (strpos("MOTO", $type) !== false){
				$min = rand(1553, 2282);
				$max = $min + 100;
				$query = "SELECT TOP 1 * FROM DEVOPS_VEHICLE WHERE (ID BETWEEN " . $min . " AND " . $max . ") AND (UPPER(TYPE_VEHICLE) LIKE '" . $type . "%')ORDER BY NEWID()";
			}
			else if (strpos("PESADO", $type) !== false){
				$min = rand(1, 316);
				$max = $min + 100;
				$query = "SELECT TOP 1 * FROM DEVOPS_VEHICLE WHERE (ID BETWEEN " . $min . " AND " . $max . ") ORDER BY NEWID()";
			}
			else{
				$min = rand(2383, 2890);
				$max = $min + 100;
				$query = "SELECT TOP 1 * FROM DEVOPS_VEHICLE WHERE (ID BETWEEN " . $min . " AND " . $max . ") ORDER BY NEWID()";
			}
			
			$result = sqlsrv_query($conne, $query);

			if($result){
				while( $obj = sqlsrv_fetch_object( $result )) {

					$array = array(
						"ID" => $obj->ID,
						"BRAND" => $obj->BRAND,
						"MODEL" => $obj->MODEL,
						"TYPE_VEHICLE" => $obj->TYPE_VEHICLE,
						"MODEL_YEAR" => $obj->MODEL_YEAR,
						"RENAVAM" => $obj->RENAVAM,
						"VEHICLE_PLATE" => $obj->VEHICLE_PLATE,
						"COLOR" => $obj->COLOR,
						"UF_PLATE" => $obj->UF_PLATE,
						"MANUFACTURING_YEAR" => $obj->MANUFACTURING_YEAR,
						"WEIGHT" => $obj->WEIGHT,
						"INSURANCE_MATURITY" => $obj->INSURANCE_MATURITY,
						"FUEL" => $obj->FUEL,
						"LOAD_CAPACITY" => $obj->LOAD_CAPACITY,
						"LICENSE_EXPIRATION" => $obj->LICENSE_EXPIRATION,
						"INSURANCE_EXPIRATION_MONTH" => $obj->INSURANCE_EXPIRATION_MONTH,
						"CHASSIS_NUMBER" => $obj->CHASSIS_NUMBER,
						"ENGINE_NUMBER" => $obj->ENGINE_NUMBER,
						"EXCHANGE_FORECAST" => $obj->EXCHANGE_FORECAST,
						"TANK_CAPACITY" => $obj->TANK_CAPACITY,
						"PEOPLE_CAPACITY" => $obj->PEOPLE_CAPACITY,
						"POTENCY" => $obj->POTENCY,
						"KM_DRIVEN" => $obj->KM_DRIVEN,
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