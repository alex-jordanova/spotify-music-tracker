<?php


include_once('../model/song.php');
include_once('../model/database.php');

session_start();


if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_SESSION) && !empty($_SESSION)) {
        $database = new DatabaseConnector();
        echo json_encode($database->getMostListenedAlbums($_SESSION['username']), JSON_UNESCAPED_UNICODE);
}