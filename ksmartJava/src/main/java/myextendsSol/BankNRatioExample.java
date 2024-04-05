package main.java.myextendsSol;

public class BankNRatioExample {
	public static void BankNRatio() {
	Coustomer c = new Coustomer();
	BasicBank kb = new KakaoBank("카카오",1000000,0.03);
	BasicBank nb = new NhBank("농협은행", 2000000, 0.05);
	BasicBank tb = new TossBank("토스은행", 2000000, 0.10);
	c.setBanknRatio(kb);
	c.yearAfter();
	System.out.println();
	c.setBanknRatio(nb);
	
	c.yearAfter();
	System.out.println();
	c.setBanknRatio(tb);
	c.yearAfter();
	}
	
	public static void main(String[] args) {
		BankNRatio();
	
		
		
		

	}

}
