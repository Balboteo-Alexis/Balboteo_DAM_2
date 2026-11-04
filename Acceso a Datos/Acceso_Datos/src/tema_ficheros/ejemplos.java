package tema_ficheros;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;

public class ejemplos {

    public static void main(String[] args) throws Exception {

        File fichero = new File("datos.txt");

        // Ejemplo de uso
        escribirTexto(fichero, "Hola mundo", false);

        System.out.println(leerTexto(fichero));

        ArrayList<String> lista = ficheroALista(fichero);
        lista.add("Otra linea");

        listaAFichero(lista, new File("datos2.txt"));

    }

    // =====================================================
    // 1. FILE: CREAR, COMPROBAR Y CONSULTAR FICHEROS
    // =====================================================

    // Crear un fichero si no existe
    public static void crearFichero(File fichero) throws IOException {
        fichero.createNewFile();
    }

    // Comprobar si existe
    public static boolean existe(File fichero) {
        return fichero.exists();
    }

    // Comprobar si es un fichero
    public static boolean esFichero(File fichero) {
        return fichero.isFile();
    }

    // Comprobar si es una carpeta
    public static boolean esDirectorio(File fichero) {
        return fichero.isDirectory();
    }

    // Obtener el nombre
    public static String nombreFichero(File fichero) {
        return fichero.getName();
    }

    // Obtener la ruta absoluta
    public static String rutaAbsoluta(File fichero) {
        return fichero.getAbsolutePath();
    }

    // Obtener el tamaño en bytes
    public static long tamanio(File fichero) {
        return fichero.length();
    }

    // Eliminar un fichero
    public static boolean eliminar(File fichero) {
        return fichero.delete();
    }

    // Crear una carpeta
    public static boolean crearCarpeta(File carpeta) {
        return carpeta.mkdir();
    }

    // Listar el contenido de una carpeta
    public static String[] listarCarpeta(File carpeta) {
        return carpeta.list();
    }


    // =====================================================
    // 2. FILEWRITER Y BUFFEREDWRITER: ESCRIBIR TEXTO
    // =====================================================

    // Escribir texto en un fichero
    // append = false: sobrescribe
    // append = true: añade al final

    public static void escribirTexto(
            File fichero, String texto, boolean append)
            throws IOException {

        try (BufferedWriter bw = new BufferedWriter(
                new FileWriter(fichero, append))) {

            bw.write(texto);
            bw.newLine();
        }
    }

    // Escribir varias lineas
    public static void escribirLineas(
            File fichero, ArrayList<String> lista)
            throws IOException {

        try (BufferedWriter bw = new BufferedWriter(
                new FileWriter(fichero))) {

            for (String linea : lista) {
                bw.write(linea);
                bw.newLine();
            }
        }
    }

    // Añadir una linea al final
    public static void aniadirLinea(
            File fichero, String linea) throws IOException {

        try (BufferedWriter bw = new BufferedWriter(
                new FileWriter(fichero, true))) {

            bw.write(linea);
            bw.newLine();
        }
    }


    // =====================================================
    // 3. FILEREADER Y BUFFEREDREADER: LEER TEXTO
    // =====================================================

    // Leer todo el fichero y devolver un String
    public static String leerTexto(File fichero)
            throws IOException {

        String texto = "";

        try (BufferedReader br = new BufferedReader(
                new FileReader(fichero))) {

            String linea;

            while ((linea = br.readLine()) != null) {
                texto = texto + linea + "\n";
            }
        }

        return texto;
    }

    // Leer linea por linea y guardar en un ArrayList
    public static ArrayList<String> ficheroALista(
            File fichero) throws IOException {

        ArrayList<String> lista = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(
                new FileReader(fichero))) {

            String linea;

            while ((linea = br.readLine()) != null) {
                lista.add(linea);
            }
        }

        return lista;
    }

    // Contar las lineas de un fichero
    public static int contarLineas(File fichero)
            throws IOException {

        int contador = 0;

        try (BufferedReader br = new BufferedReader(
                new FileReader(fichero))) {

            while (br.readLine() != null) {
                contador++;
            }
        }

        return contador;
    }


    // =====================================================
    // 4. ARRAYLIST A FICHERO Y FICHERO A ARRAYLIST
    // =====================================================

    // Guardar un ArrayList en un fichero de texto
    public static void listaAFichero(
            ArrayList<String> lista, File fichero)
            throws IOException {

        try (BufferedWriter bw = new BufferedWriter(
                new FileWriter(fichero))) {

            for (String elemento : lista) {
                bw.write(elemento);
                bw.newLine();
            }
        }
    }

    // Leer un fichero y devolver un ArrayList
    public static ArrayList<String> leerLista(File fichero)
            throws IOException {

        ArrayList<String> lista = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(
                new FileReader(fichero))) {

            String linea;

            while ((linea = br.readLine()) != null) {
                lista.add(linea);
            }
        }

        return lista;
    }


    // =====================================================
    // 5. COPIAR UN FICHERO A OTRO
    // =====================================================

    // Copiar todo el contenido de un fichero
    public static void copiarFichero(
            File origen, File destino) throws IOException {

        Files.copy(origen.toPath(), destino.toPath(),
                StandardCopyOption.REPLACE_EXISTING);
    }


    // =====================================================
    // 6. FILEINPUTSTREAM Y FILEOUTPUTSTREAM: BYTES
    // =====================================================

    // Copiar un fichero usando streams de bytes
    // Sirve tambien para imagenes, PDF, etc.

    public static void copiarBytes(
            File origen, File destino) throws IOException {

        try (FileInputStream entrada =
                     new FileInputStream(origen);
             FileOutputStream salida =
                     new FileOutputStream(destino)) {

            byte[] buffer = new byte[1024];
            int bytesLeidos;

            while ((bytesLeidos = entrada.read(buffer)) != -1) {
                salida.write(buffer, 0, bytesLeidos);
            }
        }
    }

    // Copiar usando streams con buffer
    public static void copiarConBuffer(
            File origen, File destino) throws IOException {

        try (BufferedInputStream entrada =
                     new BufferedInputStream(
                             new FileInputStream(origen));
             BufferedOutputStream salida =
                     new BufferedOutputStream(
                             new FileOutputStream(destino))) {

            byte[] buffer = new byte[1024];
            int bytesLeidos;

            while ((bytesLeidos = entrada.read(buffer)) != -1) {
                salida.write(buffer, 0, bytesLeidos);
            }
        }
    }


    // =====================================================
    // 7. SERIALIZACION DE OBJETOS
    // =====================================================

    // Guardar un objeto en un fichero binario
    // El objeto debe implementar Serializable

    public static void guardarObjeto(
            File fichero, Object objeto) throws IOException {

        try (ObjectOutputStream salida =
                     new ObjectOutputStream(
                             new FileOutputStream(fichero))) {

            salida.writeObject(objeto);
        }
    }

    // Leer un objeto de un fichero binario
    public static Object leerObjeto(File fichero)
            throws IOException, ClassNotFoundException {

        Object objeto;

        try (ObjectInputStream entrada =
                     new ObjectInputStream(
                             new FileInputStream(fichero))) {

            objeto = entrada.readObject();
        }

        return objeto;
    }

    // Guardar un ArrayList completo mediante serializacion
    public static void guardarListaObjetos(
            File fichero, ArrayList<?> lista)
            throws IOException {

        try (ObjectOutputStream salida =
                     new ObjectOutputStream(
                             new FileOutputStream(fichero))) {

            salida.writeObject(lista);
        }
    }

    // Leer un ArrayList serializado
    public static ArrayList<?> leerListaObjetos(File fichero)
            throws IOException, ClassNotFoundException {

        ArrayList<?> lista;

        try (ObjectInputStream entrada =
                     new ObjectInputStream(
                             new FileInputStream(fichero))) {

            lista = (ArrayList<?>) entrada.readObject();
        }

        return lista;
    }


    // =====================================================
    // 8. REDIRIGIR LOS ERRORES A UN FICHERO
    // =====================================================

    // A partir de esta llamada, System.err se escribe
    // en el fichero indicado.

    public static void redirigirErrores(File fichero)
            throws IOException {

        PrintStream errores = new PrintStream(
                new FileOutputStream(fichero, true));

        System.setErr(errores);
    }


    // =====================================================
    // 9. RANDOMACCESSFILE: LEER Y ESCRIBIR EN POSICIONES
    // =====================================================

    // Escribir un texto en un fichero con acceso aleatorio
    public static void escribirRandom(
            File fichero, String texto) throws IOException {

        try (RandomAccessFile raf =
                     new RandomAccessFile(fichero, "rw")) {

            raf.seek(raf.length());
            raf.writeUTF(texto);
        }
    }

    // Leer el primer texto guardado con writeUTF
    public static String leerRandom(File fichero)
            throws IOException {

        String texto;

        try (RandomAccessFile raf =
                     new RandomAccessFile(fichero, "r")) {

            texto = raf.readUTF();
        }

        return texto;
    }


    // =====================================================
    // 10. DATAINPUTSTREAM Y DATAOUTPUTSTREAM
    // =====================================================

    // Escribir datos primitivos en un fichero binario
    public static void escribirDatos(
            File fichero, int numero, double decimal,
            boolean activo) throws IOException {

        try (DataOutputStream salida =
                     new DataOutputStream(
                             new FileOutputStream(fichero))) {

            salida.writeInt(numero);
            salida.writeDouble(decimal);
            salida.writeBoolean(activo);
        }
    }

    // Leer los datos en el mismo orden en que se escribieron
    public static void leerDatos(File fichero)
            throws IOException {

        try (DataInputStream entrada =
                     new DataInputStream(
                             new FileInputStream(fichero))) {

            int numero = entrada.readInt();
            double decimal = entrada.readDouble();
            boolean activo = entrada.readBoolean();

            System.out.println(numero);
            System.out.println(decimal);
            System.out.println(activo);
        }
    }

}