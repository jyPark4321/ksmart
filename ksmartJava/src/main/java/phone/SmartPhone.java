package main.java.phone;

public class SmartPhone extends Phone {
	private boolean wifi;
	
	public SmartPhone(String model,String color) {
		super(model, color);
	}
	
	public void setWifi(boolean wifi) {
		this.wifi = wifi;
		System.out.println("와이파이 상태를 변경했습니다.");
	}
	public boolean getWifi() {
		return wifi;
	}
	public void internet() {
		System.out.println("인터넷에 연결합니다.");
	}
}
