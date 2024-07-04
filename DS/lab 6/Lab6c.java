import java.util.Scanner;
class Student_Delails{
    int enrollment_No; 
    String Name;
    int sem;
    float CPI;

    public void setStudent_Details(){
        Scanner sc = new Scanner(System.in);
        enrollment_No = sc.nextInt();
        Name = sc.next();
        sem = sc.nextInt();
        CPI = sc.nextFloat(); 
    }
    public void getStudentDetails(){
        System.out.println(enrollment_No);
        System.out.println(Name);
        System.out.println(sem);
        System.out.println(CPI);
    }
}

public class Lab6c {
    public static void main(String[] args) {
        Student_Delails [] a = new Student_Delails[5];

        for(int i = 0 ; i<a.length ; i++){
            a[i] = new Student_Delails();
            a[i].setStudent_Details();
        }
        for(int i = 0 ; i<a.length ; i++){
            a[i].getStudentDetails();
        }
    }
}
