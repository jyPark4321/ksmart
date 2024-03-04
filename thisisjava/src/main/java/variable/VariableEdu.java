package main.java.variable;

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
	
	public static void stringSample2() {
		String inputData = "홍길동\n프로그래머\n나는 \"자바\"를 배웁니다.\n번호\t이름\t직업\n자바를\n배웁니다.";
		System.out.println(inputData);
	}
	
	
	

}
