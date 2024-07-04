
import java.util.Scanner;

class Employee_Detail{
    int Employee_ID;
    String Name;
    String Designation;
    double Salary;

    public void setEmployeeDetails(){
        Scanner sc = new Scanner(System.in);

        Employee_ID = sc.nextInt();
        Name = sc.next();
        Designation = sc.next();
        Salary = sc.nextDouble();
    } 
    public void getEmployeeDetails(){
        System.out.println(Employee_ID);
        System.out.println(Name);
        System.out.println(Designation);
        System.out.println(Salary);
    }
}
public class Lab6b {
    public static void main(String[] args) {
        Employee_Detail a = new Employee_Detail();
        a.setEmployeeDetails();
        a.getEmployeeDetails();
    }
}
