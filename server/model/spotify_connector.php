<?php

    include_once("database.php");
    include_once("token.php");

    const CLIENT_ID = "6fd6ab963431465f9f96e438806ccad5";
    const CLIENT_SECRET = "f4b493385c4d4c3fb0a7e9e0c38e28ff";

    class SpotifyRequest {
        private $handle;
        private $database;
        private $tokens;

        public function __construct() {
            $this->database = new DatabaseConnector();
            $refreshToken = $this->database->getRefreshToken($_SESSION['username']);
            $this->tokens = new Token("", "", $refreshToken);
        }

        public function __destruct() {
        }

        public function authorize($authCode) {
            $this->handle = curl_init();
            $requestBody = "grant_type=authorization_code&code=".$authCode."&redirect_uri=http://musictrack.atwebpages.com/settings.html";
            curl_setopt_array($this->handle, $this->getRequestCurlOptions("https://accounts.spotify.com/api/token", $requestBody));
            $response = json_decode(curl_exec($this->handle), true);
            $this->saveTokens($response);
            $_SESSION['currentTrack'] = $this->$tokens->getAccessToken();
            curl_close($this->handle);
            return array("message" => "success");
        }

        public function requestCurrentlyPlayingTrack() {
            if ($this->tokens->isExpiredAccessToken(time())) {
                $accessToken =  $this->requestAccessToken();
                $this->tokens->updateAccessToken($accessToken["access_token"], time() + $accessToken["expires_in"]);
            }
            $this->handle = curl_init();
            $options = array(
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_HTTPHEADER => array("Authorization: Bearer ". $this->tokens->getAccessToken()),
                CURLOPT_URL => "https://api.spotify.com/v1/me/player/currently-playing",
                CURLOPT_CUSTOMREQUEST => "GET"
            );

            curl_setopt_array($this->handle, $options);
            $currentTrack = curl_exec($this->handle);
            curl_close($this->handle);
            return $currentTrack;
        }

        private function requestAccessToken() {
            $this->handle = curl_init();
            $requestBody = "grant_type=refresh_token&refresh_token=".$this->tokens->getRefreshToken();
            curl_setopt_array($this->handle, $this->getRequestCurlOptions("https://accounts.spotify.com/api/token", $requestBody));
            $response = json_decode(curl_exec($this->handle), true);
            curl_close($this->handle);
            return $response;
        }


        private function getRequestCurlOptions($requestURL, $requestBody) {
           return array(
                CURLOPT_POST => true, 
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_HTTPHEADER => array("Authorization: Basic ". base64_encode(CLIENT_ID.":".CLIENT_SECRET)),
                CURLOPT_URL => $requestURL,
                CURLOPT_POSTFIELDS => $requestBody
            );
        }

        private function saveTokens($response) {
            $this->database->saveRefreshToken($_SESSION["username"], $response["refresh_token"]);
            $this->tokens = new Token($response["access_token"], $response["expires_in"] + time(), $response["refresh_token"]);
        }

    }