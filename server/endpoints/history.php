<?php 

include_once('../model/database.php');

session_start();

if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_SESSION) && !empty($_SESSION)) {
    $database = new DatabaseConnector();
    $history = $database->getHistory($_SESSION['username']);
    echo json_encode($history, JSON_UNESCAPED_UNICODE);
}