package main.java.myWeaponGame;

public class Gun extends Attackable{
	public Gun(String name, int dagame){
        super(name, dagame);
    }

    @Override
    public void attack() {
        super.attack();
        System.out.println("빵! 크르르 칵칵!");
    }
}
