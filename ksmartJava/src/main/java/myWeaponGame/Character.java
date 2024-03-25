package main.java.myWeaponGame;

public class Character {
    Attackable weapon; 

    public Character(Attackable weapon) {
        this.weapon = weapon;
    }
    public Character() {
    	
    }
    public void attack(){
        weapon.attack();
    }

    public Attackable getWeapon() {
        return weapon;
    }

    public void setWeapon(Attackable weapon) {
        this.weapon = weapon;
    }

}
