package main.java.extend;

public class Vehicle {
	 String name;
	//메소드
	public Vehicle(String name) {
		this.name = name;
	}
	public void run() {
		System.out.println(name + "차량이 달립니다.");
	}
}
class Bus extends Vehicle{
	public Bus(String name) {
		super(name);
	}
	@Override
	public void run() {
		System.out.println(name + "가 달립니다.");
	}
}
class Taxi extends Vehicle{
	public Taxi(String name) {
		super(name);
	}
	@Override
	public void run() {
		System.out.println(name + "가 달립니다.");
	}
}