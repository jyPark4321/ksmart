package main.java.extend;

public class DriverTest {
	public void myDriverTest(){
		Driver d = new Driver();
		
		Vehicle bus = new Bus("시외버스");
		Vehicle taxi = new Taxi("카카오택시");
		
		d.setVehicle(bus);
		d.drive();
		
		d.setVehicle(taxi);
		d.drive();
	}
	public static void main(String[] args) {
		DriverTest test = new DriverTest();
		test.myDriverTest();
		
	}
}
