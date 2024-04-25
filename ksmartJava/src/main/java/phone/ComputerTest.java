package main.java.phone;

public class ComputerTest {
	public void myComputerTest() {
		int r = 10;
		
		Calculator calc = new Calculator();
		System.out.println("원 면적 : " + calc.areaCircle(r));
		System.out.println();
		
		Computer com = new Computer();
		System.out.println("원 면적 : " + com.areaCircle(r));
	}
}
