package MiFecha;

public class Formato {

    public static void main(String[] args) {
        Fecha f = new Fecha();
        f.setAño(22);
        f.setMes(8);
        f.setDia(25);

        //System.out.println(""+ f.getAño());
        //System.out.println(""+ f.getMes());
        //System.out.println(""+ f.getDia());

        System.out.println(f.formaF());



    }
}
