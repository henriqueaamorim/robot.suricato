<?php

	class Connection{

		private $conn;
		private $hostname;
		private $username;
		private $password;
		private $database;
		
		public function connect(){
			
			$this->hostname = "";
			$this->username = "";
			$this->password = "";
			$this->database = "";

			$connArr = array(
				"Database"     => $this->database,
				"UID"          => $this->username,
				"PWD"          => $this->password,
				"CharacterSet" => "UTF-8"
			);
			
			$this->conn = sqlsrv_connect($this->hostname, $connArr);
			
			if ($this->conn){
				return $this->conn;
			}
			else{
				die(print_r(sqlsrv_errors(), true));
				echo "Erro de conexão com o banco de dados";
			}
		}
	}
?>
