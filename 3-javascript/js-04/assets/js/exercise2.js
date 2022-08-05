//Ejercicio 2
//Escriba un programa de JavaScript para construir el siguiente patrón,
// usando un bucle for anidado.

//*  
//* *  
//* * *  
//* * * *  
//* * * * *
//declaro un ciclo for para iterar 5 veces
for (let i=1;i <=5; ++i){ /// el primer for indica la altura y el segundo el ancho
    let resultado = "";
    for (let j =1; j <=i; ++j){ //la j es una variable de iteracion para recorrer el contenido de una lista
        resultado += "* "; //+= suma progresivamente
    }

    console.log(resultado);
}

for (let i=0; i <5; i++){
    console.log("for principal" + i);
    for (let j = 0; j <i; j++){
        console.log("For interno" + j);
    }
}

        
