
//urls para consumir
const urlAleatorios = "https://dog.ceo/api/breeds/image/random"
//elemntos del DOM
const imagenPerrito = document.getElementById ("img-perrito")
console.log(imagenPerrito);

const btn =document.getElementById("btn-perrito")
console.log(btn);

//eventos
btn.addEventListener ("click", () =>{
    console.log("boton presionado");
//agregar funcionalidad
obtenerPerrritosAleatorio(urlAleatorios)



})








//funciones
async function obtenerPerrritosAleatorio (url){
    const respuesta = await fetch(url)
    const datos = await respuesta.json()

    console.log(datos);
    console.log(datos.message);
    console.log(datos.status);
    imagenPerrito.src = datos.message
}
//obtenerPerrritosAleatorio(urlAleatorios)