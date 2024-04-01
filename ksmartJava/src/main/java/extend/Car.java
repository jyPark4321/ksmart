package main.java.extend;

public class Car {
	/*
	 * 여기서 Car클래스의 tire 속성은 Tire 타입의 객체를 참조하도록 
	 * 초기화 즉, Car클래스의 tire 속성은 Tire 클래스의 인스턴스를 
	 * 가리키고 있음.
	 */
	public Tire tire; 

	
	
	public void run() {
		tire.roll();
	}
}
