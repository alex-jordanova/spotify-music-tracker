<?php

const MIN_PLAYTIME = 15;

class Song {
    private $title;
    private $artist;
    private $album;
    private $cover;
    private $duration;
    private $dateTime;
    private $time;
    private $isPlaying;
    private $sisLogged;

    public function __construct($data) {
        if ($this->isLoadedFromDatabase($data)) {
            $this->loadDatabaseInfo($data);
        } else {
            $this->loadSpotifyInfo($data);
        }
    }

    public function hasBeenPlayedForMinTime($time) {
        return ($time - $this->time) >= MIN_PLAYTIME;
    }

    public function isPlaying() {
        return $this->isPlaying;
    }

    public function isTheSameListening($song) {
        return $song->title == $this->title && $song->artist == $this->artist && $song->time <= ($this->time + $this->duration);
    }

    public function isLogged() {
        return $this->isLogged;
    }

    public function log(): void {
        $this->isLogged = true;
    }

    public function getAsArray() {
        return array(
             $this->title,
             $this->artist,
             $this->album,
             $this->cover,
             $this->duration,
             $this->dateTime
        );
    }

    private function extractAllArtists($artists): void {
        $artistsCount = count($artists);
        for ($i = 0; $i < $artistsCount; $i++) {
            $this->artist = $this->artist . $artists[$i]['name'];

            if ($artistsCount > 1 && $i != $artistsCount - 1) {
                $this->artist = $this->artist . ", ";
            }
        }
    }

    private function setDateTime(): void {
        $dateFormat = 'Y/m/d H:i:s';
        $this->dateTime = date($dateFormat, time());
        date_default_timezone_set('Europe/Sofia');
        $this->time = time();
    }

    private function isLoadedFromDatabase($data) {
        return !is_string($data);
    }

    private function loadDatabaseInfo($data) {
        $this->title = $data['title'];
        $this->artist = $data['artist'];
        $this->album = $data['album'];
        $this->cover = $data['cover'];
        $this->duration = $data['duration'];
        $this->dateTime = $data['dateTime'];
        $this->time = strtotime($this->dateTime);
        $this->isPlaying = false;
        $this->isLogged = true;
    }

    private function loadSpotifyInfo($data) {
        $decodedData = json_decode($data, true);
        $this->title = $decodedData['item']['name'];
        $this->extractAllArtists($decodedData['item']['artists']);
        $this->album = $decodedData['item']['album']['name'];
        $this->cover = $decodedData['item']['album']['images'][0]['url'];
        $this->duration = $decodedData['item']['duration_ms'];
        $this->setDateTime();
        $this->isPlaying = $decodedData['is_playing'];
        $this->isLogged = false;
    }
}