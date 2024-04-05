package main.java.myextendsSol;

import java.text.DecimalFormat;

public abstract class BasicBank {
	String bankName;
	int balance;
	double ratio;
	
    public BasicBank(String BankName, int balance,double ratio){
        this.bankName = BankName;
        this.balance = balance;
        this.ratio = ratio;
    }
    
    public void yearAfter() {
    	DecimalFormat strBalance = new DecimalFormat("###,###");
    	System.out.println(bankName + "은행입니다.");
    	System.out.println("현재 잔액은 : "+strBalance.format(balance) + " 입니다.");
    	System.out.println(bankName+"의 이자율은 " + (ratio*100) + "% 입니다.");
    	/*
    	 * TODO 입력한 잔액에서 이자율에 맞게 1년 후의 원금을 출력하는 부분 구현
    	 *
    	 * */
    	int yearAfter;
    	yearAfter = (int)(balance * Math.pow(1+ratio,12));
    	System.out.println("매월(복리) 이자를 받는다면 1년후 잔액은 :" + strBalance.format(yearAfter)+ " 입니다.");
    	
    }
}
