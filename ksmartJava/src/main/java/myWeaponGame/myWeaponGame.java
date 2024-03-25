package main.java.myWeaponGame;

public class myWeaponGame {
	public static void  weaponGames() {
	Character c1 = new Character();
    Attackable gun = new Gun("AK-47", 14);
    Attackable sword = new OneHandSword("한손검", 14);
    Attackable magic = new Magic("에너지볼트", 47);
    
    c1.setWeapon(gun);
    c1.attack();
	}
   
    
	
}
