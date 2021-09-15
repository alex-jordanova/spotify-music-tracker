<?php

    class User {
        private $username;
        private $password;
        private $unhashedPassword;

        public function __construct($username, $password) {
            $this->username = $username;
            $this->password = password_hash($password, PASSWORD_DEFAULT);
            $this->unhashedPassword = $password;
        }

        public function setUsername($newUsername): void {
            $this->username = $newUsername;
        }

        public function getUsername() {
            return $this->username;
        }

        public function getPassword() {
            return $this->password;
        }

        public function isPassword($passwordHash) {
            return password_verify($this->unhashedPassword, $passwordHash);
        }

        public function getAsArray() {
            return array($this->username, $this->password);
        }
    }