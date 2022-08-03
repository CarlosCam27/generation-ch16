/* funciones como objetos */

function miFunction(a = 6,b = 7){ return
    let res =0; //propiedad
    res = (a * b); //accion o proceso
return res;
}

console.log(typeof miFunction);
var miFuncionTexto = miFunction.toString();
console.log(miFuncionTexto);


