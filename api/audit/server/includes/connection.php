<?php

class Connection{

    private $hostname;
    private $username;
    private $password;
    private $database;
    private $charset;

    public function connect(){
        
        $this->hostname = "";
        $this->username = "";
        $this->password = "";
        $this->database = "";
        $this->charset = "UTF8";
		
        try{
            $dsn = "mysql:host=".$this->hostname.";dbname=".$this->database.";charset=".$this->charset;
            $pdo = new PDO($dsn, $this->username, $this->password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			echo "Conectado";
            return $pdo;
        }

        catch(PDOException $e){
            echo "Erro na conexão com o banco de dados: ".$e->getMessage();
        }
    }

}

?>