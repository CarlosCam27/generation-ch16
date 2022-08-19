import java.util.Scanner;

public class OperdaoresAritmeticos {
    public static void main(String[] args) {
        int i = 5,j = 4, suma = i +j;
        System.out.println("suma =" +suma);
        System.out.println("i+j ="+ (i + j));
        System.out.println("i + j =" +i + j);

        int resta = i - j;
        System.out.println("resta =" + resta);
        System.out.println("i-j = " +(i - j));

        int multi = i * j;
        System.out.println("multi=" + multi);
        System.out.println("i * j ="+ (i * j));

        //int div = i / j;
      //  System.out.println("div ="+ div);
        //System.out.println("i / j"+ (i / j));

        int div = i /j;
        //casteo o conversion de tipós
        System.out.println("div ="+ div);
        float div1 = (float) i /(float) j;
        System.out.println("div1="+div1);

        int resto = i % j;
        System.out.println("resto =" + resto);
        resto =8 % 5;
        System.out.println("resto ="+ resto);

        /*Scanner scanner = new Scanner (System.in);
        System.out.println("cual es tu nombre");
        String dato = scanner.next();

        System.out.println("Mi nombre es :"+ dato);*/

        Scanner scanner = new Scanner (System.in);
        System.out.println("cual es tu edad");
        String dato = scanner.next ();
        int edad =Integer.parseInt(dato);
        System.out.println("Mi edad es :" + edad);

        System.out.println("cual es tu nombre");
        String nombre = scanner.next();

        System.out.println("Mi nombre es :"+ nombre);

        /*Scanner scanner = new Scanner(System.in); //in hace referencia que ahora se espera una entrada
        System.out.println("¿cual es tu nombre?");
        String nombre = scanner.next(); //aqui se pide que ingrese el dato de nombre
        System.out.println("Hola " + nombre);
        System.out.println("¿Cual es tu edad?");
        String edadString = scanner.next(); //aqui se pide que ingrese el dato de edad
        int edad = Integer.parseInt(edadString); //cambiamos edad de string a entero
        System.out.println("tienes " + edad);*/




    }
}
