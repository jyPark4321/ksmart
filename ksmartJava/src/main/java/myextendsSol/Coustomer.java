package main.java.myextendsSol;

public class Coustomer {
	private BasicBank banknRatio;
	
	public Coustomer(BasicBank banknRatio) {
		this.banknRatio = banknRatio;
	}
	
	public Coustomer() {
		
	}
	
	public void yearAfter() {
		banknRatio.yearAfter();
	}

	public BasicBank getBanknRatio() {
		return banknRatio;
	}

	public void setBanknRatio(BasicBank banknRatio) {
		this.banknRatio = banknRatio;
	}
	
	
	
}
