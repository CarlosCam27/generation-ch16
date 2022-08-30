package habstracta;

public class EjemploFiguras {
    public static void main(String[] args) {
        FigurasGeometricas fg; //declarar el objeto

        triangulo t = new triangulo(0,0);//construimos el objeto a partir de una clase
        t.setBase(5);
        t.setAltura(2);
        System.out.println("t es el objeto del triangulo ="+ t.area());

        Circulo c = new Circulo();
        c.setRadio(15.5f);
        System.out.println("c.area()calcula el area del circulo ="+c.area());


        }


    }

