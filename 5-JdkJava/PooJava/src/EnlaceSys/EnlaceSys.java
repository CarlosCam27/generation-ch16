package EnlaceSys;

import MenuP.MenuOp;
import MiEjemploJava.Persona;
import MiFecha.Fecha;
import MiSaludo.Saludo;

import java.util.Scanner;

public class  EnlaceSys {
    Scanner sc = new Scanner(System.in);

    MenuOp menuOp = new MenuOp();
        menuOp.menu();
        System.out.print("Elija una opcion -->");

    int op=  sc.nextInt();
        do{
        menuOp.menu();

        switch (op){
            case 1:
                Saludo s = new Saludo();
                s.saludar();
                System.out.println(s.saludar0());
                break;
            case 2:
                Persona p = new Persona();
                p.setNombre("Carlos");
                p.setEdad(27);
                p.setNss(1651);

                System.out.println("te va a traert la variable nombre"+ p.getNombre());
                System.out.println("te va a traert la variable nombre"+ p.getEdad());
                System.out.println("te va a traert la variable nombre"+ p.getNss());


                break;
            case 3:
                Fecha f = new Fecha();
                f.setAño(22);
                f.setMes(8);
                f.setDia(25);
                System.out.println(f.formaF());
                break;


            default:
                System.out.println("opcion no valida");
                break;
        }




    }while(op <=4);
}
}
