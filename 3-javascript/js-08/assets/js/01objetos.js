/* let x = 10;
console.log(x.lenght);


let Persona={
    nombre:'Carlos',
    edad: 27,
    correoelec:"correo@gmail.com"
}
console.log(Persona);
console.log(Persona.nombre);
console.log(Persona.edad);
console.log(Persona.correoelec);

let Personas = new Object ();
Personas.nombre = "David";
Personas.edad = 30;
Personas.correoelec = "ii@gmail.com";

console.log(Personas.nombre);
console.log(Personas.edad);
console.log(Personas.correoelec);
 */
let x= 10;
console.log(x.length);
let Person ={
    nombre: "Juan",
    apellido:"Fernandez",
    edad: 23,
    email: "usu@gmail.com",
    /* nombreCompleto:function() {
        return this.nombre + ' ' + this.apellido;
    } */
//metodos accesores gets y sets
    idioma: "es",
    get leng(){
        return this.idioma.toUpperCase();
    },
set lang (Lang){
    this.idioma = Lang.toLowerCase();
}

}
console.log(Person.leng);
Person.lang = "ES";
console.log(Person.leng);
console.log(Person.idioma);











Person.tel = "5555456";
Person.tel = "222222";

console.log(Person);
console.log(Person.nombre);
console.log(Person.nombreCompleto());

for (varPropiedad in Person){
    console.log(Person [varPropiedad]);
}

let personaString = JSON.stringify(Person);
console.log(personaString);

