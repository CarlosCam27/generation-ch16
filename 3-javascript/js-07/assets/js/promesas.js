//variable que simula los datos pedidos
const saludo = "hola mundo"
const datos =[
    {
        nombre:"Carlos",
        apellido:"Rosario"
    },
  
    {
        nombre:"Carlos",
        apellido:"Rosario"
    },
  
    {
        nombre:"Carlos",
        apellido:"Rosario"
    }
  
]
console.log(saludo);
console.log(datos);
//funcion para simular una peticion

function obtenerDatos (){
    return new Promise ((resolve, reject) => {
        setTimeout(() => {

            if(true){

                resolve(datos);

            } else{

                reject ("No se pudo obtener datos");

            }

        }, 2000)
    })
}
//forma1
obtenerDatos().then((datos)=>{
    console.log(datos);
}).catch ((error)=>{
    console.log("existe un error en la peticion 1");
    console.log(error);
})

//forma 2/funciones asincronas -await async
async function funcionAsincrona(){
   try{
    const datos= await obtenerDatos()
    console.log(datos);

   }catch(error){console.log(error);


   }

    
}
funcionAsincrona()
