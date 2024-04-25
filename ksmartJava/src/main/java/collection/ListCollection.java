package main.java.collection;
import java.util.ArrayList;
import java.util.List;



	 
public class ListCollection {
	public void SampleAddArrayList() {
		List<String> list = new ArrayList<String>();
		
		list.add("문자1");
		list.add("문자2");
		list.add("문자3");
		list.add("문자4");
		list.add("문자5");
		System.out.println(list);
		
		for(String s : list) {
			System.out.println(s);
		}
		System.out.println();
	}
	public void SampleAddArrayList2() {
		List<String> list = new ArrayList<String>();
		list.add("문자1");
		list.add("문자2");
		list.add("문자3");
		list.add("문자4");
		list.add("문자5");
		System.out.println("------String타입 ArrayList 선언과 데이터추가,삭제 출력");
		System.out.println(list);
		System.out.println("remove() 실행");
		list.remove(0);
		System.out.println(list);
		list.remove(3);
		list.remove(2);
		System.out.println(list);
		
		for(String s : list) {
			System.out.println(s);
		}
		System.out.println();
	}
	public void SampleAddArrayList3() {
		System.out.println("------Integer타입 ArrayList 선언과 데이터추가,삭제 출력");
		List<Integer> list = new ArrayList<Integer>();
		list.add(1);
		list.add(2);
		list.add(3);
		list.add(4);
		list.add(5);
		System.out.println(list);
		System.out.println("remove() 실행");
		list.remove(0);
		System.out.println(list);
		list.remove(3);
		list.remove(2);
		System.out.println(list);
		
		for(Integer s : list) {
			System.out.println(s);
		}
		System.out.println();
	}
	
	public void SampleTypeArrayList() {
		System.out.println("SampleTypeArrayList");
		List<CarVO> list = new ArrayList<CarVO>();
		list.add(new CarVO("현대","그랜저","흰색",300));
		list.add(new CarVO("기아","k5","검정색",200));
		System.out.println(list);
		for(int i = 0; i<list.size(); i++) {
			System.out.println(list.get(i).getBrand());
			System.out.println(list.get(i).getModel());
			System.out.println(list.get(i).getColor());
			System.out.println(list.get(i).getSpeed());
		}
		list.clear();
	
		
	}
	
	public static void main(String[] args) {
		ListCollection listC = new ListCollection();
		listC.SampleAddArrayList();
		listC.SampleAddArrayList2();
		listC.SampleAddArrayList3();
		listC.SampleTypeArrayList();
		CarVO c = new CarVO();
		c.setBrand("람보르기니"); 
		System.out.println(c.getBrand());
		
}
}