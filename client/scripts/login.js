const getInput = (form) => {
    let fields = {};

    fields.username = form[0].value;
    fields.password = form[1].value;

    return fields;
}

const displayErrorMessage = (response) => {
    if (response.message != 'success') {
        document.getElementById("response").style.display = "block";
    }
}

function sendToServer(url, sendMethod, data) {
    let request = new XMLHttpRequest();

    request.onload = function() {
        if (request.readyState == XMLHttpRequest.DONE && request.status == 200) {
            let response = JSON.parse(request.responseText);

            if (response.message === "error") {
                displayErrorMessage(response);
            } else {
                document.cookie = "sessionID=" + response.sessionID + "; expires=0; path=/";
                window.location = "home.html";
            }
        } 
    };
    
    request.open(sendMethod, url, true);
    request.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    request.send(JSON.stringify(data));
}

const submitHandler = event => {
    event.preventDefault();
    let input = getInput(document.getElementById("login-form"));
    sendToServer("../server/endpoints/login.php", "POST", input);
}

const getCookie = (name) => {
    let cookie = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    return cookie ? cookie[2] : null;
}

window.addEventListener("load", ()=> {
    document.getElementById("login-form").addEventListener("submit", submitHandler);
});