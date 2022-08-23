import java.util.HashSet;
import java.util.Set;

public class Colecciones2 {
    public static void main(String[] args) {

        //set
        //hashset
        Set<String> miSet = new HashSet<>();
        //no guardan los valores en el orden que se va agregando


        miSet.add("Juan");
        miSet.add("Pedro");
        miSet.add("Luis");
        miSet.add("Felipe");

        miSet.remove("Felipe");


        System.out.println(miSet);
        System.out.println(miSet.size());
        System.out.println(miSet.contains("Juan"));

        for (String nombre:miSet
        ){

        }



    }


}
