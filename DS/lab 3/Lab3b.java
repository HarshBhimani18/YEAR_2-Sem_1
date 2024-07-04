import java.util.*;
public class Lab3b {
    public static void main(String[] args) {
       Scanner sc = new Scanner(System.in);

        System.out.println("Enter a n");
        int n = sc.nextInt();

        System.out.println("Enter a m");
        int m = sc.nextInt();
        int ans = 0;
        for(int i=n ; i<=m ; i++){
            ans = ans + i;
        }

        System.out.println(ans);
       sc.close();
    }
}
