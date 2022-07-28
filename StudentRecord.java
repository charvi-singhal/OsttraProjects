package com.example.demo;
import java.util.Arrays;
import java.util.Scanner;

 
public class StudentRecord {
	public static void main(String[] args) {
		 
		Scanner input = new Scanner(System.in);
		int beginNo = input.nextInt();
		int lastNo = input.nextInt();
		int range = lastNo-beginNo;
		range ++;
		int[] arr = new int[range];
		
		while(range-- >0) {
			char c;
			c = input.next().charAt(0);
			if(c == 'A'){
			int value = input.nextInt();
			arr[value% beginNo] = value;
		
			}
		else if(c== 'X')
		printAbsent(arr, beginNo);	
		
		else if(c=='Y') 
			printPresent(arr);
		
		else if(c=='Z') {
			input.close();
			System.out.println("No more inputs");
		}
		}
	}
		
		private static void printPresent(int[] arr) {
	        int [] sorted = new int[arr.length]; int i=0;
	        for( int a : arr) {
	            if(a != 0) sorted[i++] = a;
	        }
	        Arrays.sort(sorted);
	        for( int x : sorted) System.out.println(x);

	    }
		private static void printAbsent(int[] arr, int start) {
	        int i=0;
	        for( int b : arr) {
	            if(b == 0) System.out.println(i+start); i++;
	        }
	}
}

