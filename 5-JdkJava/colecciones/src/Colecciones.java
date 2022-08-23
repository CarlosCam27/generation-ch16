import java.util.ArrayList;
import java.util.List;

public class Colecciones {
    public static void main(String[] args) {
        // list --arraylist
        // los valores se ordenan segun el orden en el que los agreguermpos
        //permiten tener valores duplicadops
        //una colleccion de objrtos

        List<String> meses = new ArrayList<String>();

        meses.add("Enero");
        meses.add("Febrero");
        meses.add("Marzo");
        meses.add(1, "Abril");

        String mes = meses.remove(3);

        System.out.println(meses);
        System.out.println(mes);
        System.out.println(meses.get(0));
        System.out.println(meses.size());

// List
int num1 = 10;
Integer num2 = 10;

        System.out.println( num1 +10);
        System.out.println( num2 -5);
        System.out.println(num2.getClass().getSimpleName());
List<Integer> numeros= new ArrayList<Integer>();


numeros.add(2);
        numeros.add(80);
        numeros.add(900);
        numeros.add(55);



    }
}
