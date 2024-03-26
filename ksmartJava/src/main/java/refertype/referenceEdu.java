package main.java.refertype;

import java.util.Calendar;

import main.java.refertype.enumWeek.Week;

public class referenceEdu {
	public void refer4() {
		int[] intArray = null;
		//1번째 방법
		intArray = new int[5];
		intArray[0] = 10;
		intArray[1] = 20;
		intArray[2] = 30;
		System.out.println(intArray[0]);
		System.out.println(intArray[1]);
		System.out.println(intArray[2]);
		//2번째 방법
		intArray= new int[] {10,20,30};
		System.out.println(intArray[0]);
		System.out.println(intArray[1]);
		System.out.println(intArray[2]);
	}
	
	//String 타입은 객체를 공유하도록 설계
	public static void refer5() {
		String name1 = "홍길동";
		String name2 = "홍길동";
		System.out.println(name1 == name2);
		
		//아예 신규 객체를 생성
		String name3 = new String("홍길동");
		String name4 = new String("홍길동");
		System.out.println(name3 == name4);
		
		//신규 객체이지만 데이터만 비교
		System.out.println(name3.equals(name4));
	}
	
	//문자열 관련 유용한 기능 예제
	public static void refer6() {
		//charAt() : 문자 추출하는 메서드
		System.out.println("1.특정위치 문자 추출");
		String name1 = "안녕하세요";
		System.out.println(name1.charAt(0));
		System.out.println(name1.charAt(1));
		System.out.println(name1.charAt(2));
		System.out.println(name1.charAt(3));
		System.out.println(name1.charAt(4));
		System.out.println("==========================");
		
		//length() : 문자열 길이를 반환하는 메서드
		System.out.println("2.문자열 길이");
		name1 = "안녕하세요";
		System.out.println("name1의 문자열 길이는 : "+name1.length());
		System.out.println("==========================");
		
		//replace(): 문자열을 대체하는 메서드
		System.out.println("3.문자열 대체");
		name1 = "안녕하세요";
		System.out.println(name1.replace("안녕", "녕안"));
		System.out.println("==========================");
		
		//substring():인자를 입력받아서 해당 문자열을 잘라내는 메서드
		System.out.println("4.문자열 잘라내기");
		name1 = "안녕하세요";
		//입력받은 자리부터 나머지
		System.out.println(name1.substring(2));
		//앞에 입력받은 자리부터, 뒷 자리 까지
		System.out.println(name1.substring(2,4));
		System.out.println("==========================");
		
		
		//indexOf(): 일차하는 단어가 있다면 0, 단어가 없다면 -1
		System.out.println("5.문자열 찾기");
		System.out.println("일치하는 단어가 있다면 : 0");
		System.out.println("일치하는 단어가 없다면 : -1");
		name1 = "안녕하세요";
		System.out.println("name1.indexOf(\"안녕\") : "+name1.indexOf("안녕"));
		System.out.println("name1.indexOf(\"하이\") : "+name1.indexOf("하이"));
		System.out.println("==========================");
		
		//split(): 특정 문자를 기준으로 문자열 잘라내기
		System.out.println("6.특정 문자를 기준으로 문자열 잘라내기");
		name1 = "안녕,하세요";
		String[] reArr = name1.split(",");
		System.out.println(reArr[0]);
		System.out.println(reArr[1]);
		System.out.println(reArr.length);
		System.out.println("==========================");
	}
	
	public static void refer7() {
		String oriData = "문자!@#$%^&*열에 특수!@#$&&^$문자 포함";
		String match = "[^\uAC00-\uD7A30-9a-zA-Z]";
		String newData = oriData.replaceAll(match,"");
		System.out.println(newData);
	}
	//다차원 배열 데이터 할당
	public static void refer8() {
		//다차원 배열의 길이를 명시하여 객체 생성 = 배열에 저장되는 데이터가 없을 시
		String[][] arr1 = new String[2][2];
		arr1[0][0] = "1번째 배열 1번째 데이터"; 
		arr1[0][1] = "1번째 배열 2번째 데이터"; 
		arr1[1][0] = "2번째 배열 1번째 데이터"; 
		arr1[1][1] = "2번째 배열 2번째 데이터"; 
		System.out.println(arr1[0][0]);
		System.out.println(arr1[0][1]);
		System.out.println(arr1[1][0]);
		System.out.println(arr1[1][1]);
		//값 목록으로 다차원 배열 객체 생성 및 데이터 할당 = 배열에 저장되는 데이터가 있을시
		String[][] arr2 = {
				{"1-1","1-2"},
				{"2-1","2-2"}
		};
		System.out.println(arr2[0][0]);
		System.out.println(arr2[0][1]);
		System.out.println(arr2[1][0]);
		System.out.println(arr2[1][1]);
	}
	//배열 복시
	public static void refer9() {
		String[] oldArr = new String[2];
		oldArr[0] = "old데이터1";
		oldArr[1] = "old데이터2";
		
		String[] newArr = new String[5];
		
		System.arraycopy(oldArr, 0, newArr, 0, 2);
		
		newArr[2] = "new데이터2";
		newArr[3] = "new데이터3";
		newArr[4] = "new데이터4";
		
		for(String i : newArr) {
			System.out.println(i);
		}
	}
	
	public static void refer10() {
		Week today = null;
		Calendar cal = Calendar.getInstance();
		int week = cal.get(Calendar.DAY_OF_WEEK);
		switch(week) {
		case 1: today = Week.SUNDAY; break;
		case 2: today = Week.MONDAY; break;
		case 3: today = Week.TUESDAY; break;
		case 4: today = Week.WEDNESDAY; break;
		case 5: today = Week.THURDAY; break;
		case 6: today = Week.FRIDAY; break;
		case 7: today = Week.SATURDAY; break;
		}
		
		if(today == Week.SUNDAY) {
			System.out.println("오늘은 놀자");			
		} else {
			System.out.println("공부나 하자");
		}
	}
	
	//주어진 배열 항목에서 최대값을 출력하는 코드를 작성해보세요(for문 이용)
	public static void refer11() {
		int[] arr = {1,5,3,8,2};
		int maxIdx=0;
		int minIdx=0;
		for(int i = 0;i<arr.length;i++) {
			if(arr[maxIdx]<arr[i]) {
				maxIdx = i; 
			}
			if(arr[minIdx]>arr[i]) {
				minIdx = i;
			}
		}
		System.out.println("배열 arr의 인수중 최대값은 " + arr[maxIdx]  );
		System.out.println("배열 arr의 인수중 최소값은 " + arr[minIdx]   );
		System.out.println("maxidx의 값 :"+maxIdx);
		System.out.println("minidx의 값 : "+minIdx);
	}
	
	public static void refer12() {
		int[] arr = {1,5,3,8,2};	//정렬전의 배열 arr
		int lastIdx = arr.length-1; //정렬후 맨마지막 인덱스의 값을 출력하기 위한 변수
		
		mySort bs = new mySort();	//배열을 정렬하기 위한 클래스 mySort의 객체 생성
		bs.bubble_sort(arr);		//객체안에 bublle_sort 메소드를 호출
		
		System.out.print("정렬 결과: "); 
		
		for(int s : arr) {			//향상된 for문을 통해 정렬 후 배열을 출력
			System.out.print(s+" ");
		}
		
		System.out.println();
		
		System.out.println("최소값은 : "+arr[0]); // 정렬된 상태이기 떄문에 0번인덱스의 값이 최소값
		
		
		System.out.println("최대값은 : "+arr[lastIdx]);	// 정렬된 상태이기 때문에 마지막 인덱스의 값이 최대값
	}
	public static void main(String[] args) {
		
		/*refer4();
		refer5();
		refer6();
		refer7();*/
		/*refer8();*/
		/*refer9();
		refer10();
		refer11();*/
		refer12();
		
		
		
	}

}
