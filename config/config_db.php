<?php

   class SetupDatabase {
        private $connection;
        private $host = 'localhost';
        private $name = 'music_statistics';
        private $user = 'root';

        public function __construct() {

            try {
                $this->connection = new PDO("mysql:host=$this->host", $this->user, "");
                $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $this->create($this->host, $this->name, $this->user, "");
                $this->connection = new PDO("mysql:host=$this->host;dbname=$this->name", $this->user, "", array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
                $this->createUsersTable();
                $this->createHistoryTable();
            } catch (PDOException $e) {
                echo $e->getMessage();
            }
        }

        public function __destruct() {
            $this->connection = null;
        }

        private function create($host, $name, $user, $password) {
            try {
                $sql = "CREATE DATABASE $name CHARACTER SET utf8 COLLATE utf8_general_ci";
                $this->connection->exec($sql);
            } catch (PDOException $e) {
                echo $e->getMessage();
            }

        }

        private function createUsersTable() {
            try {
                $sql = "CREATE TABLE users(
                    username VARCHAR(255) NOT NULL PRIMARY KEY,
                    password VARCHAR(2056) NOT NULL,
                    spotify_refresh_token VARCHAR(255) NOT NULL
                )";
                $this->connection->exec($sql);
            } catch (PDOException $e) {
               echo $e->getMessage();
            }
        }

        private function createHistoryTable() {
            try {
                $sql = "CREATE TABLE listening_history(
                    id VARCHAR(11) NOT NULL PRIMARY KEY,
                    username VARCHAR(255) NOT NULL,
                    title VARCHAR(255),
                    artist VARCHAR(255),
                    album VARCHAR(255),
                    cover VARCHAR(255),
                    duration int(11),
                    dateTime DATETIME
                )";
                $this->connection->exec($sql);
                $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $this->connection->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            } catch (PDOException $e) {
               echo $e->getMessage();
            }
        }
       
   }

   
   $setup = new SetupDatabase();