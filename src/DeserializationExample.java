import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

public class DeserializationExample {
    public static void main(String[] args) {
        Student student = null;

        try (FileInputStream fos = new FileInputStream("batran.txt");
             ObjectInputStream oos = new ObjectInputStream(fos); ) {

            student = (Student) oos.readObject();
        } catch (IOException i) {
            i.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        System.err.println(student.getName());
        System.err.println(student.getAge());
    }
}
