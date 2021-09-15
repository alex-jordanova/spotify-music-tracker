const ACCOUNTS_URL = "https://accounts.spotify.com";
const CLIENT_ID = "6fd6ab963431465f9f96e438806ccad5";
const REDIRECT_URI = "http://musictrack.atwebpages.com/settings.html";
const SCOPE = "user-read-currently-playing user-read-playback-state";

const getAuthorizationLink = () => {
    return ACCOUNTS_URL + "/authorize?client_id=" + CLIENT_ID
                        + "&redirect_uri=" + encodeURIComponent(REDIRECT_URI)
                        + "&scope=" + encodeURIComponent(SCOPE)
                        + "&response_type=code";
}

const getAuthorizationCode = (url) => {
   let query = url.split("?code=");
   return query[1];
}

const sendAuthCode = ()  => {
   if (localStorage.getItem('authCode') != 'undefined') {
    let request = new XMLHttpRequest();

    request.onload = function() {
        if (request.readyState == XMLHttpRequest.DONE && request.status == 200) {
            let response = JSON.parse(request.responseText);
            if (response.message === 'success') {
                document.getElementById('spotify-connect').checked = true;
            }
        } 
    };

    request.open("POST", "../server/endpoints/authorize_spotify.php", true);
    request.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    request.send(JSON.stringify({authCode:localStorage.getItem('authCode')}));
    localStorage.setItem('isConnected', true);
    localStorage.setItem('authCode', 'undefined');
   }
}

const connectHandler = event => {
    window.open(getAuthorizationLink(), "Spotify");
}


window.addEventListener("load", function() {
    this.document.getElementById("spotify-connect").addEventListener("click", connectHandler);
});

window.addEventListener('load', function() {
    localStorage.setItem('authCode',  getAuthorizationCode(window.location.href));
    sendAuthCode();
});
