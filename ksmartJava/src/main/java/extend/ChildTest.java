package main.java.extend;

public class ChildTest {
	public void myChildTest() {
	Child child = new Child();
	Parent p = child;
	
	
	p.method1();
	p.method2();
	
	
	//강제 형변환 
	Child child2 = (Child)p;
	child2.method1();
	child2.method2();
	child2.method3();
	}

	
	
	
	
}
