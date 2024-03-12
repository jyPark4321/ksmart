package main.java.animal;

public class Animal {	//부모클래스 
	
	
	public void Mysound() {
		System.out.println("소리를 내는 함수를 호출하였습니다.");
	}

public class Dog extends Animal{ //Animal을 상속받는 자식클래스
	
	
	@Override
	public void Mysound() {
		System.out.println("멍멍!");
	}
}

public class Cat extends Animal{
	@Override
	public void Mysound() {
		System.out.println("야옹!");
	}
}






public class Cow extends Animal{
	@Override
	public void Mysound() {
		System.out.println("음메!");
	}
}

}