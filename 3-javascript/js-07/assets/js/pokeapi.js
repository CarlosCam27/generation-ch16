//url a consumir
const urlPokemon ="https://pokeapi.co/api/v2/pokemon/2";




//elementos del DOM
const imgPokemon= document.getElementById("img-pokemon")

const idPokemon = document.getElementById("id-pokemon")

const nombrePokemon = document.getElementById("nombre-pokemon")



//funciones

async function obtenerPokemon(url){

    const respuesta = await fetch (url)
    const datos = await respuesta.json()

   /*  console.log(datos);
    console.log(datos.forms[0].name);
    console.log(datos.abilities);
    console.log(datos.id);
    console.log(datos.types);
    console.log(datos.sprites.other["official-artwork"].front_default); */

    const pokemon={
        nombre: datos.forms[0].name,
        habilidades: datos.abilities,
        id: datos.id,
        tipos: datos.types,
        imagen: datos.sprites.other["official-artwork"].front_default
    
} 
imgPokemon.src = pokemon.imagen;
idPokemon.textContent = `ID: ${pokemon.id}`; 
nombrePokemon.textContent =pokemon.nombre;


}
obtenerPokemon(urlPokemon)