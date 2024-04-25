package main.java.phone;

public class SmartPhoneTest {
	public void MySmartPhoneTest() {
		SmartPhone myPhone = new SmartPhone("아이폰","블랙");
		System.out.println("모델 : "+myPhone.getModel());
		System.out.println("색상 : "+myPhone.getColor());
		
		System.out.println("와이파이 상태: "+myPhone.getWifi());
		
		myPhone.bell();
		myPhone.sendVoice("여보세요");
		myPhone.receiveVoice("안녕하세요! 저는 홍길동인데요.");
		myPhone.sendVoice("아~네,반갑습니다.");
		myPhone.hangUp();
		
		myPhone.setWifi(true);
		myPhone.internet();
	}
	
	
}
