import java.util.Scanner;

public class Semana {

    public static void main(String[] args) {
        System.out.println("Semana");

        Scanner sc = new Scanner (System.in);
        System.out.println("escribe un numero");
        //int diaSemana= sc.nextInt();

        byte diaSemana =sc.nextByte();

       // byte diaSemana= 1;

        switch (diaSemana){
            case 1:
                System.out.println("se escribio un uno");
                break;
            case 2:
                System.out.println("se escribio un dos");
                break;
            case 3:
                System.out.println("seescribio un tres");

            default:
                System.out.println("no entendi");


        }





    }
}
