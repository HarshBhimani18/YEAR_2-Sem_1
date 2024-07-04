import java.util.*;
public class Lab4a {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[] array1 = {1,2,3,4,5,6};
        int[] newArray = new int[array1.length];

        System.out.println("Enter a number");
        int num = sc.nextInt();

        System.out.println("Enter a location");
        int location = sc.nextInt();

        for(int i = 0 ; i < location ; i++){
            newArray[i] = array1[i];
        }
        newArray[location]=num;

        for(int i=(location+1); i<array1.length; i++){
            newArray[i] = array1[i];

        }
        System.out.println("new number");
        for(int i = 0 ; i < array1.length ; i++){
            System.out.println(newArray[i]);
        }
        sc.close(); 
    }
}
