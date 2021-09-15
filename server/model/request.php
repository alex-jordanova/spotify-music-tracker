<?php 
    const REDIRECT_URI = "http://localhost:80/project/view/callback";
    const RESPONSE_TYPE = "code";
    const SCOPE = "user-read-currently-playing";

    const AUTHORIZE = "auth";
    const ACCESS = "access";
    const CURRENTLY_PLAYING = "curr";

    const API_URL = "https://api.spotify.com";
    const ACCOUNTS_URL = "https://accounts.spotify.com";

    class Request {

        public static function generateRequest($type) {
            if ($type === AUTHORIZE) {
                return ACCOUNTS_URL . "/authorize?" . self::getParameters();
            } else if ($type === ACCESS) {
                return ACCESS;
            } else {
                return CURRENTLY_PLAYING;
            }
        }
       
        private function getParameters() {
            $parameters = array(
                "client_id" => CLIENT_ID,
                "redirect_uri" => REDIRECT_URI,
                "response_type" => RESPONSE_TYPE,
                "scope" => SCOPE
            );

            return http_build_query($parameters);
        }

    }
