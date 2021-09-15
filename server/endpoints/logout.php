<?php

if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {

    $postData = file_get_contents('php://input');
    if (!$postData) {
        echo json_encode(array('message' => 'Body of POST request is empty.'), JSON_UNESCAPED_UNICODE);
    }

    $receivedData = json_decode($postData, true);

    session_start();

    if (isset($_SESSION) && !empty($_SESSION) && $_SESSION['sessionID'] == $receivedData['sessionID']) {
        session_destroy();
        echo json_encode(array('message' => 'success'), JSON_UNESCAPED_UNICODE);
    } else {
        echo json_encode(array('message' => 'error'), JSON_UNESCAPED_UNICODE);
    }

}