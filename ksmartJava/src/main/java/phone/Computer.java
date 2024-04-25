package main.java.phone;

public class Computer extends Calculator {
	
	//메소드오버라이딩
	@Override
	public double areaCircle(double r) {
		// TODO Auto-generated method stub
		System.out.println("Computer 객체의 areaCircle() 실행");
		return Math.PI * r * r;
	}
	
}
