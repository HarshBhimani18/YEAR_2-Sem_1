
import java.util.Scanner;

class BankAccount{
    int accountNumber;
    double  balance;
    String holder;
    String name;

    public void setBankAccount(){
        Scanner sc = new Scanner(System.in);
        accountNumber = sc.nextInt();
        balance = sc.nextDouble();
        holder = sc.next();
        name = sc.next();
    }

    public void getBankAccount(){
        System.out.println(accountNumber);
        System.out.println(balance);
        System.out.println(holder);
        System.out.println(name);
    }
}
public class Lab6e {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a person number");
        int n = sc.nextInt();
        
        person1.setBankAccount();
        person1.getBankAccount();
    }
}
