import java.util.*;
public class Lab4c {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[] oldArray = {1,2,3,5,6};
        int[] newArray = new int[oldArray.length+1];

        System.out.println("Enter a number ");
        int number = sc.nextInt();

        int index = 0;

        for(int i = 0; i<oldArray.length ; i++){
            if(oldArray[i]<number && oldArray[i+1]>number){
                index = i+1;
            }
        }
        
        for(int i = 0 ; i < index ; i++){
            newArray[i] = oldArray[i];
        }

        newArray[index] = number;

        for(int i=index; i<oldArray.length; i++){
            newArray[i] = oldArray[i];
        }
        System.out.println("new number");
        for(int i = 0 ; i < newArray.length ; i++){
            System.out.println(newArray[i]);
        }
        sc.close();
    }
}
