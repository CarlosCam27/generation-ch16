package principal;

import ccrc.herencia.BasePadre;
import ccrc.herencia.Hija;
import ccrc.herencia.Hijo;

public class EjemploHerencia {
    public static void main (String[] args) {
Hija h = new Hija();
h.setA(16515);


Hijo ho = new Hijo();
ho.setA(1056);
ho.visualizarABC();


BasePadre objB= new BasePadre();
objB.setA(2357);

Object miObj = new BasePadre();
        System.out.println("atrinuto de clase base padre"+objB.getA());
        System.out.println("atributo clase hijo"+ho.getA());




}}