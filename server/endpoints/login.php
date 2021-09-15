<?php
    include('../model/database.php');
    include('../model/song.php');
    
    $database = new DatabaseConnector();

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $postData = file_get_contents('php://input');
        if (!$postData) {
            echo json_encode(array('message' => 'Body of POST request is empty.'), JSON_UNESCAPED_UNICODE);
        }

        $receivedData = json_decode($postData, true);

        if ($database->isUser($receivedData['username'], $receivedData['password'])) {
           session_start();
           $_SESSION['username'] = $receivedData['username'];
           $_SESSION['sessionID'] = session_id();
           $_SESSION['currentTrack'] = new Song($database->getLastPlayedSong($_SESSION['username']));
           echo json_encode(array('sessionID' => session_id()), JSON_UNESCAPED_UNICODE);
        } else {
            echo json_encode(array('message' => 'error'), JSON_UNESCAPED_UNICODE);
        }

    }
