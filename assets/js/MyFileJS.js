//console.log("Hola desde MyFileJS");

//Validar la Fecha y Hora

var date = new Date(Date.now());
var currentDate = date.toISOString().split('T')[0];

console.log("The current date is: "+currentDate);

var hour = date.getHours();
var minutes = date.getMinutes();

function time() {
    hour = (hour < 10) ? "0"+hour: hour;
    minutes = (minutes < 10) ? "0" + minutes : minutes;
    return hour+":"+minutes;
}

var currentTime = time();
console.log("The current time is: "+currentTime);



 const dateItem = document.querySelector('#contact_date');
 console.log("The item date is: " + dateItem);




//$('#contact_date').attr('value', currentDate);
//$('#contact_date').attr('min', currentDate);

//const dateItem = document.getElementsByClassName('contact_date');

//console.log("The item length is: "+dateItem.length);




//Una reservación no puede hacerce con menos de 2 horas de antelación
//P/E
//si es medio día (12 pm) la reservación tiene que hacerse como mínimo a las 2 pm
//esto aplica solo si es para el dái de hoy, ya que si es para mañana o un día posterior, la reservación se puede realizar en el horario del restaurante (8am - 7pm)


//Validar el total de personas
//una reservación debe tener como mínimo 1 persona, como máximo 12 personas repartidas de la siguiente manera
// Personas por reservación (contact_people) min 1, max 8
// Personas adicionales (contact_add) min 0, max 4

//Sumar en tiempo real, la cantidad de personas
//al momento de escribir o modificar las personas de la reservación, deberá actualizarce el total en la pantalla (se mostrará en el output)

//NOTA ADICIONAL
//se deberá usar Sweet Alert, para mostrar mensajes de alerta en caso de que una validación falle