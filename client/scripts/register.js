const BLUE = "#033F63";
const GREEN = "#419D78";

const getInput = (form) => {
    let fields = {};

    fields.username = form[0].value;
    fields.password = form[1].value;
    fields.repeatedpwd = form[2].value;

    return fields;
}

const displayServerResponse = (response) => {
    document.getElementById("response").style.display = "block";

    if (response.message === "success") {
        document.getElementById("response").style.backgroundColor = GREEN;
        document.getElementById("response").textContent = "Успешна регистрация!";
    } else {
        document.getElementById("response").style.backgroundColor = BLUE;
        document.getElementById("response").textContent = response.message;
    }
}

function sendToServer(url, sendMethod, data) {
    let request = new XMLHttpRequest();

    request.onload = function() {
        if (request.readyState == XMLHttpRequest.DONE && request.status == 200) {
            let response = JSON.parse(request.responseText);
            displayServerResponse(response);
            
        } 
    };
    
    request.open(sendMethod, url, true);
    request.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
    request.send(JSON.stringify(data));
}

const submitHandler = event => {
    event.preventDefault();

    let input = getInput(document.getElementById("registration-form"));
    sendToServer("../server/endpoints/register.php", "POST", input);
}


window.addEventListener("load", ()=> {
    document.getElementById("registration-form").addEventListener("submit", submitHandler);
});