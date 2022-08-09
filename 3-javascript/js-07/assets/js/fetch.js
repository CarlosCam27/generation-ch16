const url = "https://dog.ceo/api/breeds/image/random"

//respuesta de la peticion
fetch(url).then((respuesta)=>{
    console.log(respuesta);
})

//obtener la info de la peticion
//forma1
fetch(url)
.then((respuesta) => respuesta.json())
.then ((datos)=>{

    console.log(datos);
}).catch ((error)=>{
    console.log(error);
})
//forma 2

async function obtenerPerrritosAleatorio(){
   try{
    const respuesta = await fetch(url);
    const datos =await respuesta.json()
    console.log(datos);

   }catch(error){
    console.log(error);
   }
     
}
obtenerPerrritosAleatorio()