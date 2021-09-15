<?php
   if ($_SERVER['REQUEST_METHOD'] == 'POST') {
       session_start();

       $postData = file_get_contents('php://input');
        if (!$postData) {
            echo json_encode(array('message' => 'Body of POST request is empty.'), JSON_UNESCAPED_UNICODE);
        }

        
        $receivedData = json_decode($postData, true);
       
       if (isset($_SESSION) && !empty($_SESSION) && $receivedData['sessionID'] === $_SESSION['sessionID']) {
               echo json_encode(array('message' => 'yes'), JSON_UNESCAPED_UNICODE);
        
       } else {
        echo json_encode(array('message' => 'no'), JSON_UNESCAPED_UNICODE);
    }

   }