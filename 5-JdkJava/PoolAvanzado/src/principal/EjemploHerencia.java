package principal;

public class EjemploHerencia {
    public static void main (String[] args) {
Hija h = new Hija();
h.visualizarA();


    public class BasePadre {
        private int a;
        private double b;
        private String c;

        public  BasePadre(){


        }

        public void visualizarA(){

        }

        public void visualizarABC(){

        }

        public int getA() {
            return a;
        }

        public void setA(int a) {
            this.a = a;
        }

        public double getB() {
            return b;
        }

        public void setB(double b) {
            this.b = b;
        }

        public String getC() {
            return c;
        }

        public void setC(String c) {
            this.c = c;
        }
    }



}