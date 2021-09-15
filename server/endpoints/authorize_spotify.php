<?php

include_once('../model/spotify_connector.php');

session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $postData = file_get_contents('php://input');
    if (!$postData) {
        echo json_encode(array('message' => 'Body of POST request is empty.'), JSON_UNESCAPED_UNICODE);
        exit;
    }
    $receivedData = json_decode($postData, true);

    $spotify = new SpotifyRequest();
    $authResult = $spotify->authorize($receivedData['authCode']);
     if ($authResult['message'] === 'success') {
        echo json_encode(array('message' => 'success'), JSON_UNESCAPED_UNICODE);
     } else {
        echo json_encode(array('message' => 'error authorizing spotify'), JSON_UNESCAPED_UNICODE);
     }
}