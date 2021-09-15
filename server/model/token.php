<?php


class Token {
    private $accessToken;
    private $expirationTime;
    private $refreshToken;

    public function __construct($accessToken, $expirationTime, $refreshToken) {
        $this->updateAccessToken($accessToken, $expirationTime);
        $this->refreshToken = $refreshToken;
    }

    public function getAccessToken() {
        return $this->accessToken;
    }

    public function getRefreshToken() {
        return $this->refreshToken;
    }

    public function updateAccessToken($accessToken, $expirationTime): void {
        $this->accessToken = $accessToken;
        $this->expirationTime = $expirationTime;
    }

    public function updateRefreshToken($refreshToken): void {
        $this->refreshToken = $refreshToken;
    }

    public function isExpiredAccessToken($currentTime) {
        if ($this->expirationTime < $currentTime) {
            return true;
        }

        return false;
    }
}