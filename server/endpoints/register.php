<?php
    include_once('../model/validate.php');
    include_once('../model/database.php');

    $database = new DatabaseConnector();

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $postData = file_get_contents('php://input');
        if (!$postData) {
            echo json_encode(array('message' => 'Body of POST request is empty.'), JSON_UNESCAPED_UNICODE);
        }
        $receivedData = json_decode($postData, true);

        $validData = validateRegistration($receivedData);
        if($validData == OK) {
            $user = new User($receivedData['username'], $receivedData['password']);
            $response = $database->addUser($user);
            echo json_encode($response, JSON_UNESCAPED_UNICODE);
        } else {
            echo json_encode($validData, JSON_UNESCAPED_UNICODE);
        }
    }

    