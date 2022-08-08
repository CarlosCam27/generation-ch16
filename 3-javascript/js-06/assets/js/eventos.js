//manejador de eventos
function saludar(){
    alert('hola');
}
//addeventlistener()
const boton = document.getElementById('boton');
console.log(boton);

boton.addEventListener('click',(event)=>{
    //alert('hola')
    console.log(evento.target);
});

const formulario = document.getElementById('form');
formulario.addEventListener('submit',(e)=>{
e.preventDefault();
console.log(formulario [0].value);
})