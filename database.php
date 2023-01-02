<?php
class Database {
    public $hostName, $dbName, $userName, $password, $conn;
    function __construct(){
        $this->hostName = "localhost";
        $this->dbName = "quizizy";
        $this->userName = "root";
        $this->password = "";
        try {

            $this->conn = new PDO("mysql:host=$this->hostName;dbname=$this->dbName", $this->userName, $this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo 'Error: ' . $e->getMessage();
        }
    }
}
