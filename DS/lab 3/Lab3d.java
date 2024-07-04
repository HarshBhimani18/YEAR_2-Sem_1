import java.util.*;
public class Lab3d {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        int n = sc.nextInt();

        System.out.println("Enter a number ");
        int number[] = new int[n];

        for(int i = 0 ; i<n ; i++){
            number[i] = sc.nextInt();
        }
        
        int small = 0;
        int large = 0;

        for(int i = 1 ; i<n ; i++){
            if(number[i] < number[small]){
                small = i;
            }
            if(number[i] > number[large]){
                large = i;
            }
        }
        System.out.println("small number position " + small);
        System.out.println("large number position " + large);
        sc.close();

    }
}
