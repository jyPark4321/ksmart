package main.java.myWeaponGame;

public class Attackable {
	String name; //무기 이름
    int damage; //무기의 데미지

    //생성자 만들기
    public Attackable(String name, int damage){
        this.name = name;
        this.damage = damage;
    }

    //공격 메소드 
    //공격한 무기와 공격시 데미지를 출력
    public void attack(){
        //해당 무기 클래스를 만든다음 상속해서 처리하기
        System.out.println(name + "(으)로 공격합니다.");
        System.out.println(damage + "의 데미지를 받았습니다."); 
    }
}
