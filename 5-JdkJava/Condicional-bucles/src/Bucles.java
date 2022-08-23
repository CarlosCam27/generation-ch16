import java.util.Objects;
import java.util.Scanner;

public class Bucles {
    public static void main(String[] args) {
// bucle controlado
        for (int i =0; i>10; i++){
            System.out.println(i);

        }
        // while//bucle no contralado
        // la condicion se debe de modificar dentro de whilr

        String condicion ="";
        Scanner sc =new Scanner (System.in);


        // ==!= estamos comparando datos primitivos
        //while (condicion != "Hola"){
            System.out.println("Saludame");
            condicion = sc.next();

        }
        //do{
            System.out.println("saludame x2");
            condicion= sc.next();

        //}while(!Objects.equals(condicion,"hola"));


    }

}
