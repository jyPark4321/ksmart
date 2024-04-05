package main.java.myextendsSol;

public class TossBank extends BasicBank{
	public TossBank(String BankName, int balance, double ratio) {
		super(BankName,balance,ratio);
	}

	@Override
	public void yearAfter() {
		super.yearAfter();
	}
}
