package main.java.myWeaponGame;

public class OneHandSword extends Attackable{
	public OneHandSword(String name, int damage){
       super(name, damage);
   }
   @Override
   public void attack() {
       super.attack();
       System.out.println("서걱서걱서걱서걱!!");
   }
}
