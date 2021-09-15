
const send = (requestType, destination, toSend, responseHandler) => {
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

const getCookie = (name) => {
    let cookie = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    return cookie ? cookie[2] : null;
}


const logOut = (response) => {
    if (response.message === "success") {
        window.location = "index.html";
    } 
}

const logoutHandler = event => {
    let sessionCookie = getCookie("PHPSESSID");
    send('DELETE', '../server/endpoints/logout.php', JSON.stringify({sessionID:sessionCookie}), logOut);
}


window.addEventListener('load', function() {
    document.getElementById('logout').addEventListener('click', logoutHandler);
});