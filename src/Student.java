import java.io.Serializable;

public class Student implements Serializable {

        private static final long serialVersionUID = 1L;
        private String name;
        private transient int age;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getAge() {
            return age;
        }

        public void setAge(int age) {
            this.age = age;
        }
    //Chèn link tại vị trí đầu tiên
//    void insertFirst(int key, int data) {
//        //tạo một link
//        struct node *link = (struct node*) malloc(sizeof(struct node));
//        link->key = key;
//        link->data = data;
//
//        if(isEmpty()) {
//            //Biến nó thành last link
//            last = link;
//        }else {
//            //Cập nhật prev link đầu tiên
//            head->prev = link;
//        }   //Trỏ nó tới first link cũ
//        link->next = head;
//
//        //Trỏ first tới first link mới
//        head = link;
//    }
    }
