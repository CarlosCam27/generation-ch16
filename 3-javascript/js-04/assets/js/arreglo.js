//areglos/matrices/arrays
/* let arr = [1,"A", null, undefined,[true,false]];
console.log(arr[4][0]);
 */


/* let arr2= new Array[("B",2),1,1,2];
console.log(1,1);
 */
//arreglos
//coleccion de elementos
//cada elemento ocupa cada pocisicion
//esta pocision se conoce como indice y comikenza a partir de 0
//propiedaddes/describen
//metodos - acciones que pueden realizar

let arr = [1,2,3,4];
console.log(arr);
console.log(arr[2]);
arr[4]=190;

arr[4]="Hola";
console.log(arr);

// metodo de arreglos
const arreglo = ["adios"];
//push//DESPLZA HACIA ATRAS O IZQ
arreglo.push (2);
arreglo.push (true);
let num= 500;
arreglo.push (num)
console.log(arreglo);

//unshift//agrega elementos al inicio HACIA LA DERECHA 

arreglo.unshift("A");
arreglo.unshift("B");
console.log(arreglo);

//no va a decir que es
console.log(typeof (arreglo [4]));

/////metodos para quitgar elementos un elemntios al final del arreglo
//pop()
 let dato1 =arreglo.pop();
console.log(dato1);
console.log(arreglo);
//shift()
//quitar un elemento del incio del arreglo
let dato2 =arreglo.shift();
console.log(dato2);
console.log(arreglo);

//splice()
//quitar una parte de cualquier pocision de nuestro arreglo
//permite reemplzar un elemento
//permite insertar un elemnto en una pocision en especifico
arreglo.splice(1,0, "ghghghg")
//splice(pocision de incio) 1
//cantidad de elementos afectar 0 //
//trecer elementos que vamos a insertar// ghghghg"

//modifican el arreflo original
//metodos que no mofiican el arreglo original
//hacen una copia, mofican esa copia

//slice()
//cortar partes de un arreglo
let dato3 = arreglo.slice(0,2);
console.log(dato3);

//genera una copia un clon y no el arreglo original
//slice ( posicion a partir de la cual va empezar a cortar)
//


