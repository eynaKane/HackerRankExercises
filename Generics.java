// https://www.hackerrank.com/challenges/30-generics/problem
import java.util.*;

class Printer <T> {
  public static <E> void printArray(E[] array) {
    System.out.print("[");

    for (int i = 0; i < array.length; i++) {
      System.out.print(array[i]);
      if (i < array.length - 1) {
        System.out.print(", ");
      }
    }

    System.out.println("]");
  }
}

public class Generics {
  public static void main(String args[]){
    Scanner scanner = new Scanner(System.in);
    int n = scanner.nextInt();
    Integer[] intArray = new Integer[n];

    for (int i = 0; i < n; i++) {
      intArray[i] = scanner.nextInt();
    }

    n = scanner.nextInt();
    String[] stringArray = new String[n];

    for (int i = 0; i < n; i++) {
      stringArray[i] = scanner.next();
    }
    
    Printer<Integer> intPrinter = new Printer<Integer>();
    Printer<String> stringPrinter = new Printer<String>();
    intPrinter.printArray(intArray);
    stringPrinter.printArray(stringArray);

    if(Printer.class.getDeclaredMethods().length > 1) {
      System.out.println("The Printer class should only have 1 method named printArray.");
    }
  } 
}

// javac Generics.java
// java Generics
// 3
// 1
// 2
// 3
// 2
// Hello
// World

// [1, 2, 3]
// [Hello, World]
