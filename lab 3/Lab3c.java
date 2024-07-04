import java.util.*;
public class Lab3c {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a number ");
        int n = sc.nextInt();

        int ans = 0;
        for(int i=1 ; i<=n ; i++){
            ans = ans + i;
        }
        ans = ans/n;
        System.out.println(ans);
        sc.close();
    }
}
