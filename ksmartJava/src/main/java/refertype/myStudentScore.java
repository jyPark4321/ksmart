package main.java.refertype;

import java.util.Scanner;

public class myStudentScore {
	public void myStudentScore() {
	Scanner sc = new Scanner(System.in);
	int choice;
	do {
		System.out.println("1.학생수 2.점수입력 3.점수리스트 4.분석 5. 종료");
        System.out.print("메뉴를 선택하세요: ");
        choice = sc.nextInt();
		switch(choice) {
		case 1 :
			System.out.println("선택>");
			int b = sc.nextInt();
			int[] arr = new int [b];
			break;
		case 2 : break;
		//TODO 여기서부터 작성해야함
			for()
		case 3 : break;
		case 4 : break;
		case 5 : break;
		default : System.out.println("잘못된 선택입니다. 다시 선택해주세요.");
		}
	} while(choice != 5);
}
}