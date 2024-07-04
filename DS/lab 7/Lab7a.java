import java.util.Scanner;

class stackDemo{
    int[] arr;
    int top;

    public stackDemo(int n){
        arr = new int[n];
        top = -1;
    }

    public void push(int x){
        if(top > arr.length){
            System.out.println("Stack overflow");
        }
        else{
            top++;
            arr[top] = x;
        }
    }
    public int pop(){
        if (top<0) {
            System.out.println("Stack overflow");  
            return -1;
        }
        else{
            top--;
            return arr[top+1];
        }
    }
    public void display(){
        for(int i=top ; i>=0 ; i--){
            System.out.println(arr[i]);
        }
    }
    public int peep(int i){
        if(top-i+1 <=0){
            System.out.println("stack overflow");
            return -1;
        }
        else{
            return (arr[top-i+1]);
        }
    }
    public int change(int i , int x){
        if (top-i+1 <=0 ) {
            System.out.println("stack underflow");
            return -1;
        }
        else{
            arr[top-i+1] = x;
            return arr[top-i+1];
        }
    }
}
public class Lab7a {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a stack size");
        int n = sc.nextInt(); 
        
        stackDemo s = new stackDemo(int n);
        int x = 1; 
        sc.close();
    }
}
