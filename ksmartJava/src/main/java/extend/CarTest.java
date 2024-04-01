package main.java.extend;
/*
 	1.Car클래스의 인스턴스 필드에 선언된 Tire tire는 Tire클래스의 인스턴스를 참조하게 됨
 	2.그리고 자동타입변환을 통해 Tire를 상속받는 HankokTire,KumhoTire클래스를 
 	3.Car클래스 객체의 tire속성을 참조하도록 하면 
 	4.Tire클래스를 상속받은 HankokTire,KumhoTire클래스의 
 		override된 run()메소드에 접근할 수있다.
 */
public class CarTest {
	public void myCarTest() {
		
	Car myCar = new Car(); // Car 클래스에 myCar 객체 생성

	//myCar 객체의 tire 속성을 어떤 클래스의 객체로 초기화 하냐에 따라 run()메소드를 실행했을 때
	//결과가 달라진다.
	myCar.tire = new Tire(); //myCar객체의 tire속성을 Tire객체로 초기화
	myCar.run(); // tire.roll();을 호출
	
	//자동 타입 변환
	myCar.tire = new HankookTire(); //myCar객체의 tire속성을 HankookTire클래스의 객체로 초기화
	myCar.run(); //HankookTire클래스 안의 재정의된 roll()메소드를 실행
	//자동 타입 변환
	myCar.tire = new KumhoTire(); //myCar객체의 tire속성을 KumhoTire클래스의 인스턴스로 초기화
	myCar.run();
	
	
	}
}