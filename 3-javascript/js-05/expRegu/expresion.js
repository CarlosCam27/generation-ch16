//let texto = "hoy parece que va a salir el sol";
let texto01 = "la espero en el aereopuerto LA"
//let buscar = / LA /;  // tambien se puede buscar por letra /[eo]/ pra indicar una rango en numero busca " /[1-5]/"
let buscar = /[\w]+@{1}[\w]+\.[a-z]{2,3}/;


onsole.log(buscar.test(texto01)); ///test te dice si la encontro:verdadero/falso es boolenao

