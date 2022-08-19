import java.util.Scanner;
public class Edad {

    public static void main(String[] args) {
        //System.out.println("est clase Edad");

        //determinar si es una mayor de edad
        //condicional para saber si es menor de 18
        //let nombre=prompt ("escribe tu edad")


       // System.out.println();
       Scanner escaner = new Scanner(System.in);//instanciar un objeto a apartir de una clase
        System.out.println("escribe tu edad");
        int edad = escaner.nextInt();
        escaner.close();//cuando ya no se necesiten leer mas datos
        //if else
if (edad >= 18){
    System.out.println("eres mayor de edad");

}else {
    System.out.println("eres menor de edad");
}
// operador ternario// operador elvis
        String resultado =(edad >= 18) ? "ers mayor de edad": "eres menor de edad";
        System.out.println(resultado);








    }

}
