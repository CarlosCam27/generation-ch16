/* control de flujo */
//condicionales
//if
/* /* /* /* let condicion = "2";/ */// CUANDO UN= es una condicion
//(==) igual que, devuelce unverdadero cuando se cumple la condicion
//
/* 
if(condicion ==="A")
{
//condicion que se hace si se cumple la condicion A
console.log("entro en la condicion A");
 */
/* } 

else if (condicion ==="B") {
    console.log("entro en la condicion B");
    //codigo que se hace si se cumple B
} else if (condicion ==="C") {
    console.log("entro en la condicion C");
    //codigo que se hace si se cumple B
}  */
/* 
else{  */
    //condicion que se hace si no se cumple con ninguna de las condiciones anteriores
/*     console.log("no cumple");
}

function dividir (a,b)
{
    if (b=== 0 ){
        console.log("nose puede hacer");

    } else{
        console.log(a/b);
    }
}
dividir (10,2) */

//switch
//se utiliza para mevaluar expresiones
/* let nuevaCondicion= 156;
switch(nuevaCondicion === 156) {
    case 156:
        
        console.log("Buenos dias")
        console.log("Espero que te encuentres bien")
        break
    case "Adios":
        console.log("Nos vemos")
        break
    case true:
        console.log("Te mando un saludo");
        break
    default:
        console.log("No entendí tu mensaje");
}
 */
let edad = 30

    switch(edad >= 18){
        case true:
            console.log("mayor");
            break
        case false:
            console.log("menor");
    }

    let elegir = "sumar";
switch (elegir) {
    case "sumar":
        console.log("vamos a a sumar");
                break;
    case "restar":
        console.log("vamos a restar");
                break;
    case "mulriplicar":
        console.log("vamos a multiplicar");
                break;
    case "dividir":
        console.log("vamos a dividir");
                break;

    default: "no entemdi"

        break;
}

if(elegir === "sumar"){

    console.log("Vamos a sumar");

}else if(elegir == "restar"){

    console.log("Vamos a restar");

}else if(elegir == "dividir"){

    console.log("Vamos a dividir");

}else if(elegir == "multiplicar"){

    console.log("Vamos a multiplicar");

} else {

    console.log("No entiendo");

}
