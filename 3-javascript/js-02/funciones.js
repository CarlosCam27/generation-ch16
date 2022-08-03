/* function miSuma(a,b){
    let resultado = (a + b);
    console.log("la suma es:"+ resultado);
}

miSuma(2,3);

function miSuma(a,b){
    
    console.log("la suma es:"+ (a + b));
}
miSuma(4,6);
function miResta (a,b){
    return (a - b);
}
console.log("el producto es" + miProducto(4,5));
res = miResta (10,4)
 */
function miFuncion(a,b){
    return (a + b);
}
let resultado = miFuncion (3,6);
console.log("el resultado es:" + resultado);

/* **********funcion expresion o anonima******** */
let suma =function (a,b) {return (a+b)}; 
let res = suma (2,3);
console.log("la suma es: " + res);


//otra forma de hacer funcion
/* let suma = function (a,b) {return (a+b)};
resultado =suma (2,3);

let caracteres ="la suma es:"
console.log(caracteres + resultado); */

//ejercicio
let resta =function (a,b) {return (a - b)};
let menos = resta (9,3);
console.log("la resta es:" + menos);

let multi =function (a,b) {return (a * b)};
let mult = multi (7,3);
console.log("la multiplicacion es:" + mult);

let divi =function (a,b) {return (a / b)};
let div = divi (49,3);
console.log("la division es:" + div/* .toFixed(2) */);//toFixd/()establecer numero de decimales

let raiz =function (a,b){return (a )}

/* self invoking */
(function(a,b){ 
    console.log("el resultado de Self Invoking: " +(a+b) );

}
)(3,4)
