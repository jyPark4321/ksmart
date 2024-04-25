package main.java.abs;

public interface PhoneExample extends a,b{

	public static void main(String[] args) {
		SmartPhone smartPhone = new SmartPhone("홍길동");
		
		smartPhone.turnOn();
		smartPhone.turnOff();
		smartPhone.inernetSearch();

	}

}
