package main.java.extend;

public class Animal {	//부모클래스 
	
	
	public void Mysound() {
		System.out.println("소리를 내는 함수를 호출하였습니다.");
	}
}

class Dog extends Animal{ //Animal을 상속받는 자식클래스
	@Override
	public void Mysound() {
		System.out.println("멍멍!");
	}
}

class Cat extends Animal{
	@Override
	public void Mysound() {
		System.out.println("야옹!");
	}
}

class Cow extends Animal{
	@Override
	public void Mysound() {
		System.out.println("음메!");
	}
}