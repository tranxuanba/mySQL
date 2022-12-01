import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public class SerializationExample {
    public static void main(String[] args) {
        // Create Student object
        Student student = new Student();
        student.setName("Khanh");
        student.setAge(30);

        try ( // Use FileOutputStream to save Student object into a file
              FileOutputStream fos = new FileOutputStream("batran.txt");
              ObjectOutputStream oos = new ObjectOutputStream(fos); ) {

            oos.writeObject(student);
        } catch (IOException i) {
            i.printStackTrace();
        }
    }

}
