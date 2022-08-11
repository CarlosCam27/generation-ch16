
//tipo predefinido
let tiempo =  new Date();
console.log(tiempo);
console.log(Math);

let objliteral ={
    nombre:'Carlos',
    edad: 27
}

let objConstructor = new Object();
objConstructor.nombre = 'Dora'; 
objConstructor.nombre = 25; 
console.log(objliteral);
console.log(objConstructor);

objliteral["nombr"];
let llave = "nombr";
console.log("esto es una llave " + objliteral [llave]);




//tipo cadena
let cadena = "esto es una cedena";
let cadenaObjeto = new String("esto es otra cadena");  //new define a un objeto, de que clase viene  
// una clase incia con una Mayuscula

console.log(cadena);
console.log(cadenaObjeto);
//tipo numerico
let numero =13;
let numerObj = new Number (13.13)
console.log(numero); 
console.log(numerObj); 

//tipo compuesto o unico
let lista = ['2','3','5','7'];
let lista_objeto = new Array ('1','4',"6","8","9");

console.log(lista);
console.log(lista_objeto);
