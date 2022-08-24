public class EjemploSaludo {
    public static void main(String[] args) {
        //tres pasos de la instancia
        Saludo objSaludo;// tres pasos. declararando el objeto de tipo clase
                objSaludo = new Saludo();// crear el objeto con new

                objSaludo.saludar();//invocando o llamando al metodo

        Saludo objSaludo0 = new Saludo();
        System.out.println(objSaludo.saludar0());
        System.out.println("este es otr objeto: ->"+ objSaludo0.saludar0());


    }
}
