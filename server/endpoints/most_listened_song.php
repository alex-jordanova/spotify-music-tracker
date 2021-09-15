<?php

include_once('../model/song.php');
include_once('../model/database.php');

session_start();

if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_SESSION) && !empty($_SESSION)) {
        $database = new DatabaseConnector();
        $mostListenedSongs = $database->getMostListenedSongs($_SESSION['username']);
        echo json_encode($mostListenedSongs, JSON_UNESCAPED_UNICODE);
}