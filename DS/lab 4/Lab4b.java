import java.util.*;
public class Lab4b {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[] Array1 = {1,2,3,4,5,6};
        int[] newArray = new int[Array1.length];

        System.out.println("Enter a location for delete Number");
        int locationNumber = sc.nextInt();

        for(int i = 0 ; i<locationNumber ; i++){
            newArray[i] = Array1[i];
        }

        for(int i = (locationNumber+1); i<Array1.length; i++){
            newArray[i-1] = Array1[i];
        }
        System.out.println("new number");
        for(int i = 0 ; i < newArray.length-1 ; i++){
            System.out.println(newArray[i]);
        }
        sc.close();
    }
}
