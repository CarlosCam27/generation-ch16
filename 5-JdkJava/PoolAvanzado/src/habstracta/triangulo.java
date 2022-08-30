package habstracta;

public class triangulo extends FigurasGeometricas{
private float base;
private float altura;


    public triangulo() {
    }

    public triangulo(float base, float altura) {
        this.base = base;
        this.altura = altura;
    }

    @Override
    public float area(){
        return (getBase()*getAltura())/2;
    }

    public float getBase() {
        return base;
    }

    public float getAltura() {
        return altura;
    }

    public void setBase(float base) {
        this.base = base;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }
}
