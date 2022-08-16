/* const palindromo =(palabra) =>{
    let palabraInvertida = palabra.split ("").reverse().join("");
if(palabra === palabraInvertida){
    return 'es un palindromo'
    
}else{
 return 'no es un palindromo'
}




}

console.log(palindromo('ojo')); */

const palindromo =(palabra) =>{
 if (typeof palabra === 'number'){
    return 'no es una palabra';
 }
    

    let palabraInvertida = palabra.split ("").reverse().join("");

return palabra === palabraInvertida ? 'es un palindromo':'no es un palindromo';
}

//condicion ? verdadera:false
//condicion ? :else

//console.log(palindromo(91));
console.log(palindromo('ojo'));
module.exports = palindromo;