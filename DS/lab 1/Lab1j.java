import java.util.*;
public class Lab1j {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a total day");
        int totalDay = sc.nextInt();

        int year = totalDay/365;
        int remainingDay = totalDay%365;

        int week = remainingDay/7;
        int day = remainingDay%7;
        System.out.println(year+":"+week+":"+day);
        sc.close();
        
    }
}
