import java.util.*;
public class Lab1i {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a total sec");
        int totalSeconds = sc.nextInt();

        int hours = totalSeconds/3600;
        int remainingSeconds  = totalSeconds % 3600;
        int minute = remainingSeconds/60;
        int seconds = remainingSeconds%60;

        System.out.println(hours+":"+minute+":"+seconds);

        sc.close();
    }
}
