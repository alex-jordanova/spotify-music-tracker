<?php

include_once('../model/spotify_connector.php');
include_once('../model/song.php');
include_once('../model/database.php');

session_start();

if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_SESSION) && !empty($_SESSION)) {
        $database = new DatabaseConnector();
        $spotify = new SpotifyRequest();
        $spotifyData = $spotify->requestCurrentlyPlayingTrack();
    
    
        if (!$spotifyData) {
            echo json_encode(array('message' => 'none'), JSON_UNESCAPED_UNICODE);
            exit();
        } 
    
        $currentTrack = new Song($spotifyData);
        if (!$currentTrack->isPlaying()) {
           echo json_encode(array('message' => 'paused'), JSON_UNESCAPED_UNICODE);
           exit();
        } 
        
        if (!$_SESSION['currentTrack']->isTheSameListening($currentTrack)) {
            $_SESSION['currentTrack'] = $currentTrack;
       } 
    
       if ($_SESSION['currentTrack']->isTheSameListening($currentTrack) && !$_SESSION['currentTrack']->isLogged() && $_SESSION['currentTrack']->hasBeenPlayedForMinTime(time())) {
           $database->saveSongEntry($_SESSION['username'], $_SESSION['currentTrack']);
           $_SESSION['currentTrack']->log();
       }
       
       echo json_encode($_SESSION['currentTrack']->getAsArray(), JSON_UNESCAPED_UNICODE);
}