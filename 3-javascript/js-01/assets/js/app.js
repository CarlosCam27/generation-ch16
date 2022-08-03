"use strict";


/* Tipos de datos */
//string/tres tipos de Variables
let a;//local
const b = 0;// constante y local
var c;//global

//string
/* let cadena = "Hola mundo!";
if(true){
    var d=15;} */
//sCOPE -Contexto espacio en el que vive la variable


/* tipos de datos */
//string
let cadena = "hola Mundo¡";
//number
let numero=5;
let numero1=5.89;
let numero3= -5.89;
//boolean
let booleano = true;
let booleano2= false;

//undefined esto que no tiene valor
//es el estado que se encuentra una variable
let variable;
/* console.log(variable+5); */

//NaN no hay numero/tratar de realizar una operacion aritmetica con algun dato que no es un numero

//null
let vacio =null;

/* plantillas literales /template strings/ literal strings*/
//alt gr+{//nos permite intrepretar interpolacion/codigo de js que se puede ejecutar
//
    console.log(`esta es una cadena ${5+4}`);

    /* let nombre = `Carlos` */
    //let presentacion 
    c/* onsole.log("Mi nombre es " + nombre);
    console.log(`Yo me llamo ${nombre}`); */
//areglos/matrices/arrays
let arr = [1,"A", null, undefined,[true,false]];
console.log(arr[4][0]);

let arr2= new Array("B",2);
/* console.log(arr2); */
// obejtos
//clave y valor


//abtraccion que defiminos a traves de su caracteristicas
const persona={ nombre: `Carlos`,
            edad:27,
            hobbies: [ "Leer","Ver sherk 1 y 2","Comer"],
            auto:{
                marca: "VW",
                Modelo:"Pointer",
                year:2000

            },
            saludar: function (){
                return "Saludar";
            }
        
        };
        persona.nombre= "Panchito"
        console.log(`Mi nombre es ${persona.nombre}`);
        console.log(`Mi hobbie favorito es ${persona.hobbies[1]}`);
        console.log(`la marca de mi carro es ${persona.auto.marca}`);

//function
console.log(`la accion que realizo es: ${persona.saludar ()}`);