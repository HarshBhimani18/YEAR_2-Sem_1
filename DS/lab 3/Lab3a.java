import java.util.*;
public class Lab3a {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the number of elements ");
        int n = sc.nextInt();

        int number[] = new int[n];

        System.out.println("Enter a number ");
        for(int i = 0 ; i<n ; i++){
            number[i] = sc.nextInt();
        }
        System.out.println("Elements enter are you");
        for(int i = 0 ; i<n ; i++){
            System.out.println(number[i]);
        }
        sc.close();
    }
}