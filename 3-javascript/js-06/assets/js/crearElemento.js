//crear elemnto

const imagen = document.createElement('img');
//modficiar los atributos html del elemnto
imagen.src  = 'https://placeimg.com/200/200/animals';
imagen.alt ='imagenes aleareatorias de animales';


//lo insertamos en un elemento padre
document.body.appendChild(imagen);
document.body.insertAdjacentElement("afterbegin", imagen);
document.body.insertAdjacentElement("afterend", imagen);
document.body.insertAdjacentElement("beforebegin", imagen);
document.body.insertAdjacentElement("beforeend", imagen);

// FORMA Correcta de crear un elemento
// 1- se crea elemento que contendr ala imagen
//2. seleccionar el elemento padre
const padreImg = document.getElementById('padreImg');

// crear el elemento 
const imagen2 = document.createElement('img');
imagen2.src = 'https://placeimg.com/200/200/nature';
imagen2.alt= "imagens de naturaleza";
//insertar elemnto

padreImg.appendChild(imagen2);






//utilizar forEach para pintar datos

const frutas = ["toronja","manzana","mandarina","limon","granada","melon"];

const listaFrutas = document.getElementById ('frutas');


/* Forma Clasica 
frutas.forEach((element) =>{
const li =document.createElement('li');
li.textContent = element
listaFrutas.appendChild(li);
});
 */
//forma 2
frutas.forEach ((el) => {
    listaFrutas.innerHTML += `<li>${el}</li>`;

})


