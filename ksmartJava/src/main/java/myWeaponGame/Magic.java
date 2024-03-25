package main.java.myWeaponGame;

public class Magic extends Attackable {
    public Magic(String name, int damage){
        super(name, damage);
    }

    @Override
    public void attack(){
        //부모클래스의 attack 메소드를 상속
        super.attack();
        //자식클래스에서 사용할 기능 구현
        System.out.println("에너지볼트!!");
    }
}
