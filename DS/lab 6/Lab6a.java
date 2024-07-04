import java.util.Scanner;
public class Lab6a {
    static  void numberswap(int num1,int num2){
        int temp = num1;
        num1 = num2;
        num2 = temp;
        System.out.println("new first number"+num1);
        System.out.println("new sec number"+num2);
    }  
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a first number");
        int num1 = sc.nextInt();
        System.out.println("Enter a sec number");
        int num2 = sc.nextInt();
        numberswap(num1, num2);

        
        
        }
    }

