package main.java.Korean;

public class Korean {
	String nation = "대한민국";
	String name;
	String ssn;
	
	
	public void getKoreanUser(String n, String s) {
		this.name = n;
		this.ssn = s;
		
		System.out.println(nation);
		System.out.println(name);
		System.out.println(ssn);
	}
	public String reKoreanUser(String n, String s) {
		boolean data = chkSsn(s);
		if(data) {
			this.ssn = s;
		} else {
			this.ssn = "데이터 부정확";
		}
		
		
		return this.ssn;
	}
	//주민번호 길이 확인 메서드
	public boolean chkSsn(String s) {
		boolean reText;
		if(s.length() == 14) {
			reText = true;
		} else {
			reText = false;
		}
		return reText;
	}
	
	public void setName(String n) {
		this.name = n;
	}
	public void setSsn(String s) {
		this.ssn = s;
	}
	public void setNameSsn(String n[]) {
		this.name = n[0];
		this.ssn = n[1];
	}
	public Korean getNameSsn() {
		String[] n = new String[2];
		n[0] = this.name;
		n[1] = this.ssn;
		return this;
	}
	public String getName() {
		return name;
	}
	public String getSsn() {
		return ssn;
	}
	
}
