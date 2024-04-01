package main.java.extend;

public class Tire {
	public void roll() {
		System.out.println("회전합니다.");
	}
}

class HankookTire extends Tire{
	@Override
	public void roll() {
		System.out.println("한국타이어가 회전합니다.");
	}
}
class KumhoTire extends Tire{
	@Override
	public void roll() {
		System.out.println("금호타이어가 회전합니다.");
	}
}