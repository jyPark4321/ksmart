package main.java.operator;

import java.util.Scanner;

public class OperatorEdu {
	//부호연산자 +샘플 메서드 입니다.
	public static void operSample1() {
		int num1 = -100;
		System.out.println(num1);
		
		int num2 = +num1;
		System.out.println(num2);
	}
	//부호연산자 -샘플 메서드 입니다.
	public static void operSample2() {
		int num1 = -100;
		System.out.println(num1);
		
		int num2 = -num1;
		System.out.println(num2);
	}
	//증감연산자 ++피연산자
	public static void operSample3() {
		int num1 = 5;
		System.out.println(num1);
		int num2 = ++num1;
		int num3 = num1++;
		System.out.println("전위 연산자:"+num2);
		System.out.println("후위 연산자:"+num2);
	}
	//산술연산자 +,-,*,/,%
	public static void operSample4() {
		System.out.println("==========입력 시작========");
		Scanner sc = new Scanner(System.in); //Scanner 객체 생성
		double num1 = sc.nextDouble();		//첫번째로 입력받은 값을 num1에 저장
		double num2 = sc.nextDouble();		//두번째로 입력받은 값을 num2에 저장
		System.out.println("==========입력 종료========");
		double sum = num1 + num2;			//num1 + num2 연산의 결과를 sum에 저장
		double minus = num1 - num2;			//num1 - num2 연산의 결과를 minus에 저장
		double mult = num1 * num2;			//num1 * num2 연산의 결과를 mult에 저장
		double division = num1 / num2;		//num1 / num2 연산의 결과를 division에 저장
		double mod = num1 % num2;			//num1 % num2 연산의 결과를 mod에 저장
		System.out.println("더하기 : "+ sum);			//sum의 값을 출력
		System.out.println("빼기 : "+ minus);			//minus의 값을 출력
		System.out.println("곱하기 : "+ mult);		//mult의 값을 출력
		System.out.println("나누기 : "+ division);	//division의 값을 출력
		System.out.println("나머지 : "+ mod);			//mod의 값을 출력	
	}
	public static void operSample5() {
		System.out.println("정수를 입력: ");
		Scanner sc = new Scanner(System.in);
		int time = sc.nextInt();
		int second = time % 60;
		int minute = (time / 60)%60;
		int hour = (time/60)/60;
		System.out.println(time+"초는   "+hour+"시간 "+minute+"분 "+second+"초 입니다.");
		
	}
	//오버플로우,언더플로우, 실습예제 메서드입니다.
	public static void operSample6() {
		byte num1 = 127;
		System.out.println(num1);
		byte result = ++num1;
		System.out.println(result);
		
		byte num2 = -128;
		System.out.println(num2);
		byte result2 = --num1;
		System.out.println(result2);
	}
	//나눗셈 연산 후 Nan과 Infinity 처리
	public static void operSample7() {
		double x = 5.0;
		double y = 0.0;
		double z = x / y;
		double w = x % y;
		
		//double 타입은 오류가 발생하지 않음
		System.out.println(z);
		System.out.println(w);
		
		//따라서 연산 결과를 boolean 타입의 변수를 이용하여 처리
		boolean result = Double.isInfinite(z);
		System.out.println(result);
		boolean result2 = Double.isNaN(w);
		System.out.println(result2);
		
		if(result || result2) {
			System.out.println("값 산출 불가");
		} else {
			System.out.println(z + 2);
			System.out.println(w + 2);
		}
		
		
	}
	public static void operSample8() {
		String str1 ="테스트";
		String str2 = "테스트";
		boolean result = (str1 == str2);
		System.out.println(result);
		
		String str3 = new String("테스트");
		String str4 = new String("테스트");
		boolean result2 = (str3 == str4);
		System.out.println(result2);
		boolean result3 = (str3.equals(str4));
		System.out.println(result3);				
	}
	//정수 비교 연산자 샘플코드
	public static void operSample9() {
		int num1 = 10;
		int num2 = 10;
		boolean result1 = (num1 == num2);
		boolean result2 = (num1 != num2);
		boolean result3 = (num1 <= num2);
		System.out.println("result : "+ result1);
		System.out.println("result : "+ result2);
		System.out.println("result : "+ result3);
		
	}
	public static void operSample10() {
		Scanner sc = new Scanner(System.in);
		int inputNum = sc.nextInt();
		
		if(inputNum >= 90) {
			System.out.println("이 학생은 A등급 입니다.");
		}
		else if(inputNum >= 80) {
			System.out.println("이 학생은 B등급니다.");
		}
		else if(inputNum >= 70) {
			System.out.println("이 학생은 C등급니다.");
		}
		else if(inputNum >= 60) {
			System.out.println("이 학생은 D등급니다.");
		}
		else {
			System.out.println("이 학생은 F등급니다.");
		}			
	}
	public static void operSample11() {
		char char1 ='A';
		char char2 ='B';
		boolean result = (char1 < char2);
		System.out.println(result);
		
		int num1 = char1;
		int num2 = char2;
		System.out.println("num1: "+num1);
		System.out.println("num2: "+num2);
		
	}
	// && logical And 연산자
	public static void operSample12() {
		int score = 92;
		if(100>=score && 95 <= score) {
			System.out.println("A+");
		} else if(90 <= score && 94 >= score) {
			System.out.println("A");
		} else if(80 <= score && 89 >= score) {
			System.out.println("C");
		}else if(70 <= score && 79 >= score) {
			System.out.println("D");
		}else {
			System.out.println("F");
		}

	}
	// ||logical And + OR 논리 연산자
	public static void operSample13() {
		boolean data1 = true;
		boolean data2 = false;
		
		if(data1 && data2) {
			System.out.println("둘중 하나가 true");
		} else {
			System.out.println("둘 중 하나가 false");
		}
		if(data1 || data2) {
			System.out.println("둘 중 하나가 true");
		}
		if(data1 ^ data2) {
			System.out.println("둘 중 하나가 true");
		}
		if(!data2) {
			System.out.println("true일 때만 이 문구가 출력됩니다.");
		}
		
	}
	// ! not 연산자 샘플 메서드입니다.
	public static void operSample14() {
		int num = 6;
		boolean result = ((num%2 == 0));
		System.out.println(result);
		if(!result) {
			System.out.println("6은 2의 배수가 아닙니다.");
		} else if(result) {
			System.out.println("6은 2의 배수가 맞습니다.");
		}
		String str1 = "테스트";
		if(!str1.equals("테스트")) {
			System.out.println("str1은 테스트가 아닙니다.");
		}
		
	}
	//복합대입 연산자 샘플 메서드 입니다.
	public static void operSample15() {
		int sum = 0;
		for(int i=0; i<10; i++) {
			sum += i + 1;
			System.out.println(sum);
		}
	}
	//반복문을 활용한 간단한 구구단
	public static void operSample16() {
		int mul = 0;
		for(int i=1; i<10; i++) {
			for(int j = 2; j<10;j++) {
				mul = i * j;
				System.out.print(j+"*"+i+"="+mul+"\t");
			}
				System.out.println();
		}
	}
	//원하는 구구단 단수를 입력하면 출력하는 형태의 구구단 
	public static void operSample17() {
		System.out.println("구구단 알려줌  : ");
		Scanner sc = new Scanner(System.in);
		int dan = sc.nextInt();		
		int mul = 0;
		for (int i = 1 ; i < 10; i++) {
			mul = dan * i;
			System.out.println(dan +"*"+ i + "=" + mul);
		}
		
	}
	//삼항 연산자
	public static void operSample18() {
		String text ="참참참";
		String result = (text == "참참참") ? "데이터가 일치합니다." : "데이터가 일치하지 않습니다.";
		System.out.println(result);
	}
	public static void operSample19() {
		Scanner sc = new Scanner(System.in);
		String str1 = sc.next();
		System.out.println("첫번째 데이터: " + str1);
		String str2 = sc.next();
		System.out.println("두번째 데이터: " + str2);
		int num1 = Integer.parseInt(str1);
		int num2 = Integer.parseInt(str2);
		int result = (num1 < num2)? 1 : 0;
		System.out.println(result);
	}
	
	
}
