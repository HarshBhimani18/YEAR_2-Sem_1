import java.util.*;
public class Lab3e {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();

        int number[] = new int[n];

        System.out.println("Enter a number ");
        for(int i = 0 ; i<n ; i++){
            number[i] = sc.nextInt();
        }

        int equle = 0;

        for(int i = 0 ; i<n ; i++){
            if (number[i]==number[equle]) {
                equle++;
                break;
            }
        }
        if (equle==1) {
            System.out.println("duplicate number here");
        }
        else{
            System.out.println("duplicate number not here");
        }
        sc.close();
    }
}
