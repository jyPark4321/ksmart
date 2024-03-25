package main.java.mybank;

public class MyAcount {
	private String accountNumber; //계좌번호
	private String name;	//이름
	private int balance;	//잔액
	
	//getter 계좌번호
	public String getAccountNumber() {
		return accountNumber;
	}
	//setter 계좌번호
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	//getter 회원이름
	public String getName() {
		return name;
	}
	//setter 회원이름
	public void setName(String name) {
		this.name = name;
	}
	//getter 잔액
	public int getBalance() {
		return balance;
	}
	//setter 잔액
	public void setBalance(int balance) {
		this.balance = balance;
	}
	
}
