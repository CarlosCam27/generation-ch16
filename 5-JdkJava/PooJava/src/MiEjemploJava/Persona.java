package MiEjemploJava;

public class Persona {

   private String nombre= "Carlos";
    private int edad = 28;
    private int nss= 316515;


    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public void setNss(int nss) {
        this.nss = nss;
    }

    //public PersonaJava(String nombre, int edad, int nss) {// es el contructor que lo mandas a llmar
       // this.nombre = nombre;
       // this.edad = edad;
     //   this.nss = nss;
   // }

    public String getNombre() {
        return nombre;
    }

    public int getEdad() {
        return edad;
    }

    public int getNss() {
        return nss;
    }

    void caminar(){
        System.out.println("Camino lento");

        }
    void dormir(){
        System.out.println("Durmiendo");

    }
}
