package habstracta;

public class EjemploFiguras {
    public static void main(String[] args) {
        FigurasGeometricas fg; //declarar el objeto

        triangulo t = new triangulo(5,10);//construimos el objeto a partir de una clase
       // t.setBase(5);
      //  t.setAltura(2);
        System.out.println(t);

        Circulo c = new Circulo(5);
     //   c.setRadio(15.5f);
        System.out.println(c);


        }


    }

