const palindromo =require ('../js/palindromo.js')

describe('Pruebas de la funcion palindromo',()=>{
    test ('debe regresar"es una palindromo" si ingresamos ojo',() =>{
        let mensaje  = 'es un palindromo';
        let palabra = 'ojo';

        expect (palindromo (palabra)).toBe(mensaje);
    })
    test ('no debe regresar "es un palindromo " al ingresar generation',()=>{

        let mensaje ='es un palindromo';
        let palabra = 'generation';

        test('al ingresar un número debe regresar el mensaje', () => {
            let mensaje = 'no es una palabra';
            let valor = 1;

            expect( palindromo(palabra) ).toBe(mensaje);
      })


    }  )

    test('al ingresar un número debe regresar el mensaje', () => {
        let mensaje = 'no es una palabra';
        let valor = 1;

        expect( palindromo(valor) ).toBe(mensaje);
  })




})