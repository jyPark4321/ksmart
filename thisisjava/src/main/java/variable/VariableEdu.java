package main.java.variable;
import java.util.*;

public class VariableEdu {

	public static void booleanSample1() {
		boolean Type = true;
		
		if(Type == true) {
			Type = false;
		}
			
		System.out.println(Type);
	}
	
	public static void booleanSample2() {
		boolean Type = false;
		System.out.println(Type);
		
	}
	//문자형 샘플 메서드
	public static void charSample1() {
		char inputData = 'A';
		System.out.println(inputData);
	}
	
	public static void charSample2() {
		char inputData = 65;
		System.out.println(inputData);
	}
	
	public static void charSample3() {
		char inputData = 0x0041;
		System.out.println(inputData);
	}
	//문자열 샘플 메서드
	public static void stringSample1() {
		String inputData = "\"주의\" 여긴 위험구역입니다.";
		System.out.println(inputData);
	}
	//이스케이프 예제
	public static void stringSample2() {
		String inputData = "홍길동\n"
				+ "프로그래머\n"
				+ "나는 \"자바\"를 배웁니다.\n"
				+ "번호\t이름\t직업\n"
				+ "자바를\n"
				+ "배웁니다.";
		System.out.println(inputData);
	}
	//이스케이프 예제
	public static void stringSample3() {
		String inputData = "|\\_/|\n"
				+ 		   "|q p|  /}\n"
				+ 		   "( 0 )\"\"\"\\\n"
				+          "|\"^\"`   |\n"
				+          "||_/=\\__|";
		System.out.println(inputData);
	}
	//이스케이프 예제
	public static void prac_1jo() {
		String inputData = "이번 프로젝트의 경로는\n"
				+ 	 "D:\\ksmartJava\\workspace\n"
				+    "위 경로?????? 입니다.\n"
				+    "\"주의\"\t부탁드립니다.\n"
				+    "파일명은 \'카멜케이스\'로 부탁드립니다.";
		System.out.println(inputData);
	}
	//이스케이프 예제 
	public static void prac_2jo() {
		
			String inputData = "이스케이프 문자 소개\n"
					+ "\\n: 저는 \"줄 바꿈(Enter)\"을\t나타내는\t이스케이프 문자입니다.\n"
					+ "\\t: 저는 \"탭(tab)\"을\t나타내는\t이스케이프 문자입니다.\n"
					+ "\\\": 저는 쌍따옴표(\"\")를\t출력하는\t이스케이프 문자입니다.\n"
					+ "\\\': 저는 따옴표('')를\t출력하는\t이스케이프 문자입니다.\n"
					+ "\\\\: 저는 역슬래시 \"\\\"를\t출력하는\t이스케이프 문자입니다.\n"
					+ "\\r: 저는 \"캐리지 리턴\"을\t나타내는\t이스케이프 문자입니다.";	
				
		System.out.println(inputData);
	}
	
	//숫자형 샘플 메서드
	public static void numSample1() {
		//byte,short, char, int, long
		byte num1 = 100;
		short num2 = 3000;
		char num3 = 65;
		int num4 = 10000000;
		long num5 = 1000000000;
		
		System.out.println("byte : " + num1);
		System.out.println("byte : " + num2);
		System.out.println("byte : " + num3);
		System.out.println("byte : " + num4);
		System.out.println("byte : " + num5);
	}
	//숫자형 샘플 메서드
	public static void numSample2() {
		float num1 = 3.35678f;
		double num2 = 3.3567899123;
		
		System.out.println("float : " + num1);
		System.out.println("double : " + num2);
	}
	//타입변환 샘플 메서드
	public static void castingSample1() {
		byte num1 = 0;
		int num2 = 0;
		//자동타입변환
		num2 = num1;
		System.out.println(num2);
		//강제타입변환
		num1 = (byte) num2;
		System.out.println(num1);

	}
	//문자열 타입변환 샘플 메서드
	public static void castingSample2() {
		String inputData = "1000";
		System.out.println(inputData+1000); //1000을 문자로 인식하기 때문에 10001000 출력
		int num1 = Integer.parseInt(inputData);//1000을 int형으로 강제 형변환
		System.out.println(num1+1000);        //출력 결과 2000
		
	}
	//Scanner 샘플 메서드
	public static void scannerSample1() {
		boolean run = true;
		while(run) {
		System.out.println("입력을 해주세요: ");
		Scanner sc = new Scanner(System.in);
		
		String inputData = sc.next();
		
		
		/*System.out.println(inputData);*/
		
		
		if(inputData.equals("A")) {
			System.out.println("이 학생은 A등급 입니다.");
		} 
		else if (inputData.equals("B")) {
			System.out.println("이 학생은 B등급 입니다.");
	    }
		else if (inputData.equals("C")) {
			System.out.println("이 학생은 C등급 입니다.");
		}
		else if (inputData.equals("D")) {
			System.out.println("이 학생은 D등급 입니다.");
		}
		else if(inputData.equals("F")) {
			System.out.println("이 학생은 F등급 입니다.");
		}
		else if(inputData.equals("exit")) {
			run = false;
		}
		else {
			System.out.println("잘못된 값입니다 올바른 값을 입력해주세요!");
		}
		
		
		sc.close();
		}
	}
}
