//
const urlGatos=  " https://api.thecatapi.com/v1/images/search";
const imgGatito = document.getElementById ("imgGatito")
console.log(imgGatito);

const btn =document.getElementById("btngatito")
console.log(btn);

//eventos
btn.addEventListener ("click", () =>{
    console.log("boton presionado");
    obtenerGatitoAleatorio(urlGatos)


})
async function obtenerGatitoAleatorio (url){
    const respuesta =await fetch (url);
    const datos =await respuesta.json();

    console.log(datos);
    console.log(datos[0].id);
    console.log(datos[0].url);
    
    imgGatito.src= datos[0].url
 
}
obtenerGatitoAleatorio(urlGatos)