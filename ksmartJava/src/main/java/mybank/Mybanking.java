package main.java.mybank;
import java.text.DecimalFormat;
import java.util.Scanner;

/* 간단한 은행 프로그램
 * @author 박중연
 * @date : 2024-03-25
 * */
public class Mybanking {
	static int max_id = 100; //최대 계좌 수
	static int acountIdx = 0; //계좌 ID가 저장될 열 인덱스
	static int balanceIdx = 1; //잔액이 저장될 열 인덱스
	static int nameIdx = 2; //이름이 저장될 열 인덱스
	static String[][] arr = new String[max_id][3]; // 2차원 배열 선언 
	static int accountCount = 0; //현재 생성된 계좌 숫자를 저장할 변수 
	MyAcount ma = new MyAcount(); //계좌 id와 이름, 잔액을 가지고 있는 ma 객체 생성


	//메뉴 1번 새로운계좌를 생성하는 메소드
	public  void createAccount() {
	        Scanner sc = new Scanner(System.in);
	        System.out.print("계좌번호를 입력하세요: ");
	        ma.setAccountNumber(sc.next());  //계좌번호를 입력받아서 저장
	        System.out.print("초기 입금액을 입력하세요: ");
	        ma.setBalance(sc.nextInt());      //초기 금액을 입력받아서 저장
	        System.out.print("이름을 입력하세요: ");
	        ma.setName(sc.next()); 	//회원 이름을 입력받아서 저장
	        
	        /*
	         *	입력받은 계좌번호와 초기금액,회원이름을 생성한 2차원 배열 arr에 저장하는 부분 구현
	         *	조건문을 통해 isNewAccount()메소드의 리턴 결과(true,false)에 따라 계좌중복메시지를 출력하거나
	         *	2차원배열에 입력받은 값을 저장하는 부분 구현
	         */
	        if (isNewAccount(ma.getAccountNumber())) { 
	            System.out.println("계좌가 중복됩니다.");
	        } else {
		    arr[accountCount][acountIdx] = ma.getAccountNumber(); //2차원 배열의 처음자리에 입력받은 계좌번호 저장 
		    arr[accountCount][balanceIdx] = String.valueOf(ma.getBalance()); // 2차원 배열의 처음자리에 입력받은 잔액을 저장
		    arr[accountCount][nameIdx] = ma.getName();
		    accountCount++;//배열안의 입력받은 계좌의 수를 1증가
		    System.out.println("계좌가 생성되었습니다.");
	        }
	        
				
	    }
	
		//입력받은 계좌번호가 기존의 계좌번호와 일치하지 않는 새로운 계좌번호임을 판단하는 메소드
		public boolean isNewAccount(String accountNumber) { 
		    for (int i = 0; i < accountCount; i++) { //생성된 계좌의 숫자 만큼 반복하면서
		        if (arr[i][acountIdx].equals(accountNumber)) { //2차원배열 i번째의 acountIdx행의 값이 새로 입력받은 계좌번호와 같으면 true를 리턴
		            return true;
		        }
		    }
		    return false; //그렇지않으면 false를 리턴
		}
		
		/*
		 *	등록된 계좌의 정보를 출력하는 메소드 
		 */ 
	    public  void displayarr() {
	    	DecimalFormat fommatter = new DecimalFormat("###,###");
	        if (accountCount == 0) {
	        	//accountCount가 0인 상황은 등록된계좌가 없는상황이므로 해당 메시지 출력
	            System.out.println("등록된 계좌가 없습니다.");
	        } else {
	        	//accountCount가 0이 아닌상황에는 1씩 증가시키며 배열안에 있는 계좌번호와 잔액을 출력
	            for (int i = 0; i < accountCount; i++) {
	                System.out.println("계좌번호: " + arr[i][acountIdx] 
	                		+ " | 이름: " + arr[i][nameIdx] + 
	                		" | 잔액: " + fommatter.format(Integer.parseInt((arr[i][balanceIdx]))	));
	            }
	        }
	    }
	    
	    //입금할 계좌번호와 입금액을 입력한 후 
	    //for문을 통해 배열을 탐색하며 입금할 계좌번호와 배열의 계좌번호가 일치한다면 
	    //해당 계좌번호의 잔액에 입금액만큼 더하는 메소드
	    public  void deposit() {
	    	DecimalFormat fommatter = new DecimalFormat("###,###");
	        Scanner scanner = new Scanner(System.in);
	        System.out.print("입금할 계좌번호를 입력하세요: ");
	        String accountNumber = scanner.next();
	        System.out.print("입금액을 입력하세요: ");
	        int amount = scanner.nextInt();

	        for (int i = 0; i < accountCount; i++) { //계좌의 숫자만큼 배열을 순회하면서
	            if (arr[i][acountIdx].equals(accountNumber)) { //입력받은 계좌번호가 기존 계좌번호와 같다면
	                int currentBalance = Integer.parseInt(arr[i][balanceIdx]); //잔액을 더해준다
	                currentBalance += amount;
	                arr[i][balanceIdx] = String.valueOf(currentBalance);// 더한후 새로운 잔액을 저장
	                System.out.println("입금이 완료되었습니다. 현재 잔액: " + fommatter.format(Integer.parseInt(arr[i][balanceIdx]))); //잔액 출력
	                return;
	            }
	        }

	        System.out.println("해당 계좌를 찾을 수 없습니다.");
	    }
	    
	    //출금할 계좌번호와 입금액을 입력한 후 
	    //for문을 통해 배열을 탐색하며 출금할 계좌번호와 배열의 계좌번호가 일치한다면 
	    //해당 배열의 잔액을 currentBalance에 저장한 후에 
	    //잔액이 출금하려는 금액보다 크다면 해당 금액만 큼 차감
	    //잔액이 부족하다면 잔액이 부족하다는 메시지 출력
	    //해당 계좌번호의 잔액에 출금액만큼 빼는 메소드
	    public  void withDraw() {
	        Scanner scanner = new Scanner(System.in);
	        System.out.print("출금할 계좌번호를 입력하세요: ");
	        String accountNumber = scanner.next();
	        System.out.print("출금액을 입력하세요: ");
	        int amount = scanner.nextInt();

	        for (int i = 0; i < accountCount; i++) {
	            if (arr[i][acountIdx].equals(accountNumber)) { //[i][계좌번호가 들어있는 열]이 입력받은 계좌번호와 같을때
	                int currentBalance = Integer.parseInt(arr[i][balanceIdx]);
	                if (currentBalance >= amount) { //잔액이 출금액보다 크면
	                    currentBalance -= amount; //잔액에서 출금액을 빼준다.ㅣ
	                    arr[i][balanceIdx] = String.valueOf(currentBalance); //그리고 새로운 잔액을 해당 배열에 저장
	                    System.out.println("출금이 완료되었습니다. 현재 잔액: " + arr[i][balanceIdx]);
	                } else {
	                    System.out.println("잔액이 부족합니다.");
	                }
	                return;
	            }
	        }

	        System.out.println("해당 계좌를 찾을 수 없습니다.");
	    }
	

}
