public class Arreglos {

    public static void main(String[] args) {
        System.out.println("Arreglos");
        //arreglos
        // no se pueden mezclar tipos de datos

        int[] numeroAleatorios = {1,2,3,4,5,6};
        // los arreglos tienen un tamaño definido
        char [] caracteres = new char [4];

        caracteres [0] = 'h';
        caracteres [1] = 'o';
        caracteres [2] = 'l';
        caracteres [3] = 'a';

        System.out.println(numeroAleatorios[1]);
        System.out.println(caracteres);

        //for each
        for(int numero: numeroAleatorios) {
            System.out.println(numero);
        }





    }
}
