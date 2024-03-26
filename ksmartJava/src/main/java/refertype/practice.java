package main.java.refertype;

public class practice {
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
}
