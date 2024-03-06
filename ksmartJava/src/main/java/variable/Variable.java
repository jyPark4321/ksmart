package main.java.variable;

public class Variable {
	boolean boolean1 = false; //boolean : 1바이트로 True나 false값만 가짐.
	boolean boolean2 = 10 < 0;//10<0이 false이므로 a2의 값은 false가 된다.
	
	char char1 = 'a';	   //char : 2바이트 한 문자,아스키코드,유니코드.
	char char2 = 97;
	char char3 = '\u0061';
	
	//byte,short,int,long는 정수타입
	byte byte1 = 127;	   //byte : 1바이트로 -128~127까지
	short short1 = 32767;   //short : 2바이트로 -32768~32767까지
	int int1 = 32768;     //int : 4바이트로 -2^31~2^31-1까지
	long long1 = 448464654;//long : 8바이트로 -2^63~2^63-1까지
		
	//float,double은 실수타입
	float float1 = 3.1235f; //4바이트 크기 부동소수점 사용시 f,F를 붙여서 사용
	double double1 = 3.1235; //8바이트 크기 부동소수점 자바에서 기본 타입 
		
	//자동 타입 변환 , 강제 타입 변환
	public static void vairableExample1() {
	byte b = 127;
	int i = 100;
	
	System.out.println(b+i);
	System.out.println(10/4);
	System.out.println(10.0/4);
	System.out.println((char)0x12340041);//강제 타입 변환
	System.out.println((byte)(b+i)); 		
	System.out.println((int)(2.9+1.8));
	System.out.println((int)2.9+(int)1.8);
			 
	System.out.println((byte)256);
}
}