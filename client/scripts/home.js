class Song {
    constructor(title, artist, album, cover, dateTime, count) {
        this.title = title;
        this.artist = artist;
        this.album = album;
        this.cover = cover;
        this.dateTime = dateTime;
        this.count = count;
    }
}

const MAX_SONGS = 5;
const DEFAULT_COUNT = 1;
let noResults = false;


const sendRequest = (requestType, destination, toSend, responseHandler) => {
    let request = new XMLHttpRequest();

    request.onload = function() {
        if (request.readyState == XMLHttpRequest.DONE && request.status == 200) {
            let response = JSON.parse(request.responseText);
            responseHandler(response);
         }   
    };

    request.open(requestType, destination, true);
    request.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    request.send(toSend);
}


/*------------- Currently Playing ------------ */


const isPlaying = (response) => {
    return !('message' in response);
}

const displaySong = (response) => {
    if (isPlaying(response)) {
        let song = new Song(response[0], response[1], response[2], response[3]);
        document.getElementById('current-cover').setAttribute('src', song.cover);
        document.getElementById('current-title').innerText = song.title;
        document.getElementById('current-artist').innerText = song.artist;
    } else {
        document.getElementById('current-cover').setAttribute('src', 'img/cover.png');
        document.getElementById('current-title').innerText = 'Title';
        document.getElementById('current-artist').innerText = 'Artist';
    }
}

const currentlyPlayingHandler = event => {
    sendRequest('GET', '../server/endpoints/currently_playing.php', '', displaySong);
}

/*---------- Display Results as A List ---------------*/

const setElement = (item, element, text) => {
    let elem = document.createElement('div');
    elem.className = element;
    elem.innerText = text;
    item.appendChild(elem);
    return elem;
}

const extractSongs = (response) => {
    let songs = [];
    console.log(response);
    var i = 0;
    while (response[i]) {
        songs[i] = new Song(response[i].title, response[i].artist, response[i].album, 
            response[i].cover, response[i].dateTime, response[i].count);
            ++i;
    }
    return songs;
}

/*------------ History -------------------*/

const setHistoryTable = (songs) => {
    let table = document.getElementById('history');
    for (var i = 0; i < MAX_SONGS; ++i) {
        let item = document.createElement('li');
        let info = setElement(item, 'info', '');
        setElement(info, 'main', songs[i].title);
        setElement(info, 'additional-info', songs[i].artist);
        setElement(item, 'stats', songs[i].dateTime);
        table.appendChild(item);
    }
}

const displayHistory = (response) => {
    if (response[0]) {
        setHistoryTable(extractSongs(response));
    } else {
        document.getElementById('no-history').style.display = 'block';
        noResults = true;
    }
}

const historyHandler = event => {
    sendRequest('GET', '../server/endpoints/history.php', '', displayHistory);
}


/*---------- Most Listened Songs ------------ */

const setSongsTable = (songs) => {
    let table = document.getElementById('most-listened-songs');
    for (var i = 0; i < MAX_SONGS; ++i) {
        let item = document.createElement('li');
        let info = setElement(item, 'info', '');
        setElement(info, 'main', songs[i].title);
        setElement(info, 'additional-info', songs[i].artist);
        setElement(item, 'stats', songs[i].count + ' слушания');
        table.appendChild(item);
    }
}

const displayMostListenedSongs = (response) => {
    if (!noResults) {
        setSongsTable(extractSongs(response));
    } else {
        document.getElementById('no-songs').style.display = 'block';
    }
}

const mostListenedSongsHandler = event => {
    sendRequest('GET', '../server/endpoints/most_listened_song.php', '', displayMostListenedSongs);
}

/*---------- Most Listened Artists -----------*/

const setArtistsTable = (songs) => {
    let table = document.getElementById('most-listened-artists');
    for (var i = 0; i < MAX_SONGS; ++i) {
        let item = document.createElement('li');
        let info = setElement(item, 'info', '');
        setElement(info, 'main', songs[i].artist);
        setElement(item, 'stats', songs[i].count + ' слушания');
        table.appendChild(item);
    }
}

const displayMostListenedArtists = (response) => {
    if (!noResults) {
        setArtistsTable(extractSongs(response));
    } else {
        document.getElementById('no-artists').style.display = 'block';
    }
    
}

const mostListenedArtistsHandler = event => {
    sendRequest('GET', '../server/endpoints/most_listened_artists.php', '', displayMostListenedArtists);
}


/*-------------- Most Listened Albums ------------- */

const setAlbumsTable = (songs) => {
    let table = document.getElementById('most-listened-albums');
    for (var i = 0; i < MAX_SONGS; ++i) {
        let item = document.createElement('li');
        let info = setElement(item, 'info', '');
        setElement(info, 'main', songs[i].album);
        setElement(info, 'additional-info', songs[i].artist);
        setElement(item, 'stats', songs[i].count + ' слушания');
        table.appendChild(item);
    }
}

const displayMostListenedAlbums = (response) => {
    if (!noResults) {
        setAlbumsTable(extractSongs(response));
    } else {
        document.getElementById('no-albums').style.display = 'block';
    }
}

const mostListenedAlbumsHandler = event => {
    sendRequest('GET', '../server/endpoints/most_listened_albums.php', '', displayMostListenedAlbums);
}


/*-----------------Add Events ----------------*/

window.addEventListener('load', currentlyPlayingHandler);
window.addEventListener('load', historyHandler);
window.addEventListener('load', mostListenedSongsHandler);
window.addEventListener('load', mostListenedArtistsHandler);
window.addEventListener('load', mostListenedAlbumsHandler);
window.setInterval(currentlyPlayingHandler, 5000);