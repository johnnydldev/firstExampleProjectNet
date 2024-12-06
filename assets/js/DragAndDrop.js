//Los evento de JS son acciones o suscesos que ocurren en un docuemnto web y que pueden ser detectados y manejados por le código JS. Estos eventos puedes ser desencadenados por el usuario o generados automáticamente por le navegador

/*En t+erminos más especificos, un evento es algo que sucede en 
el sistema que estámos programando. 
El sistema produce un señal de cierto tipo cuando en evento ocurre 
y proporciona un mecanismo para que una
acción se lleve a cabo automáticamente como respuesta a dicho evento*/

var counter = 0;
var draggableItem = "";
var counterA = 0;


function start(e) {
    console.log("start");
    e.dataTransfer.effectAllowed = "move";
    e.dataTransfer.setData("Data", e.target.id);

    $("#" + e.target.id).css("opacity", "0.4");
    console.log(e.target.id);
    draggableItem = e.target.id;
}

function end(e) {
    console.log("end");
    e.target.style.opacity = "";
    e.dataTransfer.clearData("Data");
    draggableItem = "";
    console.log(e.target.id);
}

function enter(e) {
    console.log("enter");
    e.target.style.border = "12px dotted #555"
}

function leave(e) {
    console.log("leave");
    $("#" + e.target.id).css("border", "");
}

function over(e) {
    console.log("Over");
    var id = e.target.id;
    if ((id == "cuadro1") || (id == "cuadro3") || (id == "papelera")) {
        return false;
    } else {
        return true;
    }
}

function drop(e) {
    console.log("drop");
    var draggabledItem = e.dataTransfer.getData("Data");

    e.target.appendChild(document.getElementById(draggabledItem));

    e.target.style.border = "";
}

function remove(e) {
    console.log("remove");
    var draggabledItem = document.getElementById(e.dataTransfer.getData("Data"));
    draggabledItem.parentNode.removeChild(draggabledItem);

    e.target.style.border = "";
    counterA--;
}

function clone(e) {

    console.log("clone");
    var draggabledItem = document.getElementById(e.dataTransfer.getData("Data"));
    draggabledItem.style.opacity = "";

    if (counterA < 3) {
        var clonedItem = draggabledItem.cloneNode(true);

        clonedItem.id = "CloneNode" + counter;
        counter++;
        counterA++;
        console.log("Counter is: "+counter)
        clonedItem.style.position = "static";
        e.target.appendChild(clonedItem);
    }

    e.target.style.border = "";

}