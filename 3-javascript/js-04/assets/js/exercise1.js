//1er ejercicio

//paso1Hay tres personas esperando el banco. 
//Sus nombres, en orden, son Sofía, David y Juan. 
//Cree una matriz que tenga estos tres nombres en orden.
const arreglo = ["Sofia","David","Juan"];
console.log(arreglo);

//paso2
//Se agregan dos personas más al final de la fila: Sara y Augustin.
//La primera persona en la fila es llamada al cajero. ¿Cómo es la cola?

arreglo.push ("Sara", "Agustin");
arreglo.shift ();

console.log (arreglo);

//paso 3
//Resulta que David estaba reservando un lugar para su amiga Renata.
//Ella aparece y va detrás de él en la fila.
//Aparece una persona más (Elena) y va hasta el final de la fila. ¿Cómo es la cola?

arreglo.splice(1,0, "Renata");
arreglo.push ("Elena");

console.log (arreglo);

