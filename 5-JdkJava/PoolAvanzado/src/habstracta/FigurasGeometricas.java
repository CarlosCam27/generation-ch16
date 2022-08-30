package habstracta;

public abstract class FigurasGeometricas {
    private String nombre;


public abstract float area();


    @Override
    public String toString() {
        return nombre+"area >"+ area();
    }

    public FigurasGeometricas(String nombre) {
        this.nombre = nombre;
    }
}
