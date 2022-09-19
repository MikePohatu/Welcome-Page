$(document).foundation();

function onCloseClicked() {
    try {
        //https://stackoverflow.com/questions/12314729/close-windows-that-were-not-opened-by-script-using-javascript
        open(location, '_self').close();
    }
    catch (e) {
        confirm("Please close browser window");
    }
    
}

document.addEventListener("keyup", function(event) {
    event.preventDefault();
    if (event.keyCode === 39) {
        document.getElementById("nextbtn").click();
    } 
    else if (event.keyCode === 37) {
        document.getElementById("prevbtn").click();
    } 
});