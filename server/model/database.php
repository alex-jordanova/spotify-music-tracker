<?php

    include_once("user.php");

    const MAX_COUNT = 5;

    class DatabaseConnector {
        private $dsn = "mysql:host=pdb43.zettahost.bg;dbname=3226868_musictrack;charset=utf8";
        private $user = "3226868_musictrack";
        private $connection;
        private $password = "r5v4vbhse";
		
        public function __construct() {
            try {
                $this->connection = new PDO($this->dsn, $this->user, $this->password);
                $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $this->connection->setAttribute( PDO::ATTR_EMULATE_PREPARES, false);
             } catch (PDOException $exception) {
                   echo $exception->getMessage();
             }
        }

        public function __destruct() {
            $this->connection = null;
        }

        public function addUser($user) {
            if ($this->isExistingUser($user->getUsername())) {
                return array('message' => 'Потребителското име е заето.');
            }

            $query = "INSERT INTO users(username, password) VALUES (?, ?)";
            $this->executeQuery($query, $user->getAsArray());
            return array('message' => 'success');
        }

        public function saveRefreshToken($username, $refreshToken) {
            if (!$this->isExistingUser($username)) {
                return array('message' => 'no such user');
            }
            $statement = 'UPDATE users SET spotify_refresh_token = ? WHERE username = ?';
            $this->executeQuery($statement, array($refreshToken, $username));
            return array('message' => 'success');
        }

        public function getRefreshToken($username) {
            if (!$this->isExistingUser($username)) {
                return array('message' => 'no such user');
            }
            $statement = 'SELECT spotify_refresh_token FROM users WHERE username = ?';
            $query = $this->executeQuery($statement, array($username));
            $result = $query->fetch(PDO::FETCH_ASSOC);
            return $result['spotify_refresh_token'];
        }

        public function getHistory($username) {
            if (!$this->isExistingUser($username)) {
                return array('message' => 'no such user');
            }
            $statement = 'SELECT title, artist, dateTime
                          FROM listening_history
                          WHERE username = ?
                          ORDER BY dateTime DESC
                          LIMIT 5';
            $query = $this->executeQuery($statement, array($username));
            return $query->fetchAll(PDO::FETCH_ASSOC);
        }

        public function getLastPlayedSong($username) {
            if (!$this->isExistingUser($username)) {
                return array('message' => 'Such user does not exist.');
            }

            $statement = 'SELECT * FROM listening_history WHERE username = ?';
            $query = $this->executeQuery($statement, array($username));
            $result = $query->fetchAll();
            $lastResult = count($result) - 1;
            return $result[$lastResult];
        }

        public function saveSongEntry($username, $song) {
            if (!$this->isExistingUser($username)) {
                return array('message' => 'Such user does not exist.');
            }

            $statement = 'INSERT INTO listening_history (id, username, title, artist, album, cover, duration, dateTime)
                          VALUES (?, ?, ?, ?, ?, ?, ?, ?)';
            $entry = array_merge(array(uniqid(), $username), $song->getAsArray());
            $this->executeQuery($statement, $entry);
            return array('message' => 'success');
        }

        public function isUser($username, $password) {
            $statement = 'SELECT password FROM users WHERE username = ?';
            $query = $this->executeQuery($statement, array($username));
            $result = $query->fetch(PDO::FETCH_ASSOC);
            return password_verify($password, $result['password']);
        }

        public function getMostListenedSongs($username) {
            if (!$this->isExistingUser($username)) {
                return array('message' => 'no such user');
            }

            $statement = 'SELECT title, artist, dateTime, COUNT(title) AS count
                          FROM listening_history
                          WHERE username = ? AND DATE_SUB(CURDATE(), INTERVAL 7 DAY)
                          GROUP BY title, artist
                          ORDER BY count DESC';
            $query = $this->executeQuery($statement, array($username));
            $result = [];
            for ($i = 0; $i < MAX_COUNT; $i++) {
                $result[$i] = $query->fetch(PDO::FETCH_ASSOC);
            }
            return $result;
        }

        public function getMostListenedArtists($username) {
            if (!$this->isExistingUser($username)) {
                return array('message' => 'no such user');
            }

            $statement = 'SELECT artist, COUNT(artist) AS count
                          FROM listening_history
                          WHERE username = ? AND DATE_SUB(CURDATE(), INTERVAL 7 DAY)
                          GROUP BY artist
                          ORDER BY count DESC';
            $query = $this->executeQuery($statement, array($username));
            $result = [];
            for ($i = 0; $i < MAX_COUNT; $i++) {
                $result[$i] = $query->fetch(PDO::FETCH_ASSOC);
            }
            return $result;
        }

        public function getMostListenedAlbums($username) {
            if (!$this->isExistingUser($username)) {
                return array('message' => 'no such user');
            }

            $statement = 'SELECT artist, album, COUNT(album) AS count
                          FROM listening_history
                          WHERE username = ? AND DATE_SUB(CURDATE(), INTERVAL 7 DAY)
                          GROUP BY album
                          ORDER BY count DESC';
            $query = $this->executeQuery($statement, array($username));
            $result = [];
            for ($i = 0; $i < MAX_COUNT; $i++) {
                $result[$i] = $query->fetch(PDO::FETCH_ASSOC);
            }
            return $result;
        }

        private function isExistingUser($username) {
            $statement = 'SELECT * FROM users WHERE username = ?';
            $query = $this->executeQuery($statement, array($username));
            if ($query->rowCount() == 1) {
                return true;
            }
            return false;
        }

        private function executeQuery($statement, $attributes) {
            $query = $this->connection->prepare($statement);
            $query->execute($attributes);
            return $query;
        }
    }