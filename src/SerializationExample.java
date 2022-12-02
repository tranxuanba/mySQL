import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

public class SerializationExample {
    public static void main(String[] args) {
        List<Integer> a = new ArrayList<>();
        a.add(12);
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
