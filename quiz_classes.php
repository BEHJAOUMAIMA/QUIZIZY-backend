<?php
class Database
{

    public $hostname, $dbname, $username, $password, $conn;

    function __construct()
    {
        $this->host_name = "localhost";
        $this->dbname = "quizizy";
        $this->username = "root";
        $this->password = "";
        try {

            $this->conn = new PDO("mysql:host=$this->host_name;dbname=$this->dbname", $this->username, $this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo 'Error: ' . $e->getMessage();
        }
    }
}