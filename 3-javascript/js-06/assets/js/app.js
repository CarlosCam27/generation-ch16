console.log(document.URL);

//getElementById()
console.log(document.getElementById("parrafo 1").textContent);
const parrafo1 = document.getElementById("parrafo 1");
console.log(parrafo1.textContent);



console.log(parrafo1.style);
parrafo1.style.color="red";
parrafo1.style.backgroundColor="yellow";

//queryselector()
//etiqueta = p
//clase = .parrafo
//id =#parrafo1
const parrafo2=document.querySelector(".parrafo");
console.log(parrafo2.textContent);

parrafo2.textContent += "\n modificando el contenido del parrafo";

//\n --inserta un salto de line como br

//querySelectorAll()
const parrafos = document.querySelectorAll("p");
console.log(parrafos [2]);

parrafos[2].style.fontSize ="2rem";
//css font-size
//js fontSize--lower CamelCase


//moldificar los atributos de html
const enlace = document.getElementById("enlace");
console.log(enlace);

enlace.href = "https://www.youtube.com/";
enlace.target = "_blank";
enlace.textContent ="enlace de youtube";

//reemplzar contenido
const parrafo4 =document.getElementById ("parrafo4")
console.log(parrafo4.nodeName);
console.log(parrafo4.textContent);
console.log(document.body.innerHTML);//muestra el html que haya en el interioir del elemento
console.log(parrafo4.outerHTML);//muestra el html que haya en el interioir del elemento
//parrafo4.outerHTML = '<a href="http://google.com>Enlace</a>'"';//remplaza el elemento completo
//parrafo4.innerHTML = '<a href="http://google.com">Enlace</a>'; //remplza el contenido del elemnto

//parrafo4.outerHTML ='<div class="elemento">este es un texto</div>';


//js nos permite modificar las clases css
//utilzando style

console.log(parrafo4.classList.contains("elemento"));
const cambiaColor =() =>{
    parrafo4.classList.toggle('elemento') 
}
cambiaColor();// se agrega clase
cambiaColor();// se quita la clase

