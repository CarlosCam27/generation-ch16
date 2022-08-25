package MiEjemploJava;

public class EjemploPersona {
    public static void main(String[] args) {
        Persona p = new Persona();
        p.setNombre("Carlos");
        p.setEdad(27);
        p.setNss(1651);

        System.out.println("te va a traert la variable nombre"+ p.getNombre());
        System.out.println("te va a traert la variable nombre"+ p.getEdad());
        System.out.println("te va a traert la variable nombre"+ p.getNss());
    }
}
