package main.java.cs;

import java.util.Scanner;

public class Control {
	public static void controlSample1() {
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		switch (num) {
		case 1: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 2: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 3: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 4: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 5: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 6: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		
		default:
			System.out.println("주사위 값이 아닙니다.");
			break;
		}
	}
	
	public static void controlSample2() {
		double rNum = (Math.random()*6) + 1;
		int num = (int)rNum;
		
		switch (num) {
		case 1: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 2: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 3: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 4: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 5: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;
		case 6: 
			System.out.println("주사위 값은 : " + num + "입니다.");
			break;	
		}
	}
	
	public static void controlSample3() {
		for(int num=1;num<=10;num++) {
			System.out.println(num);
		}
	}
	
		
		
	
	public static void controlSample4() {
		Scanner scanner = new Scanner(System.in);
        System.out.print("숫자를 입력하세요: ");
        int num = scanner.nextInt();

        if (num == 1) {
            for (int i = 2; i < 10; i += 2) {
                for (int j = 1; j < 10; j++) {
                    System.out.println(i + " x " + j + " = " + (i * j));
                }
                System.out.println();
            }
        } else if (num == 2) {
            for (int i = 1; i < 10; i += 2) {
                for (int j = 1; j < 10; j++) {
                    System.out.println(i + " x " + j + " = " + (i * j));
                }
                System.out.println();
            }
        } 
        
    }
	
	
	public static void text_example1() {
		/*String arr[][] = new arr[10][2];*/
		boolean run = true;
		while(run) {
			System.out.println("------------------------------\n"
				+"1.예금 | 2.출금 | 3.잔고 | 4.종료\n"
				+"------------------------------\n"
				+"선택>: ");
			Scanner sc = new Scanner(System.in);
			int choice = sc.nextInt();
			switch (choice) {
			case 1: {
				System.out.println("예금1");
			}
			case 2: {
				System.out.println("예금2");
			}
			case 3: {
				System.out.println("예금3");
			}
			case 4: {
				System.out.println("예금4");
			}
			case 5: {
				run = false;
			}
			
			}
		}
	}
	
	
	
	
		
		
		
		
		
		
		
		
		
		
	
}
