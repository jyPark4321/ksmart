package main.java.mybank;
import java.util.Scanner;

/* 삼항연산자 형식의 메서드 입니다
 * @author 박중연
 * @param
 * @return
 * @exception
 * @date : 2024-03-11
 * */
public class Mybanking {
	static int max_id = 100; //최대 계좌수
	static int acountIdx = 0; //계좌 ID가 저장될 열 인덱스
	static int balanceIdx = 1; //잔액이 저장될 열 인덱스
	
	static String[][] arr = new String[max_id][2];
	static int accountCount = 0;

	  public static void createAccount() {
	        Scanner scanner = new Scanner(System.in);
	        System.out.print("계좌번호를 입력하세요: ");
	        String accountNumber = scanner.next(); //계좌번호를 입력받아서 저장
	        System.out.print("초기 입금액을 입력하세요: ");
	        int balance = scanner.nextInt();       //초기 금액을 입력받아서 저장

	        arr[accountCount][acountIdx] = accountNumber; //2차원 배열의 처음자리에 입력받은 계좌번호 저장 
	        arr[accountCount][balanceIdx] = String.valueOf(balance); // 2차원 배열의 처음자리에 입력받은 잔액을 저장
	        accountCount++;//배열안의 입력받은 계좌의 수를 1증가

	        System.out.println("계좌가 생성되었습니다.");
	    }

	    public static void displayarr() {
	    	//accountCount가 0인 상황은 등록된계좌가 없는상황이므로 해당 메시지 출력
	    	//accountCount가 0이 아닌상황에는 1씩 증가시키며 배열안에 있는 계좌번호와 잔액을 출력
	        if (accountCount == 0) {
	            System.out.println("등록된 계좌가 없습니다.");
	        } else {
	            for (int i = 0; i < accountCount; i++) {
	                System.out.println("계좌번호: " + arr[i][acountIdx] + ", 잔액: " + arr[i][balanceIdx]);
	            }
	        }
	    }
	    //입금할 계좌번호와 입금액을 입력한 후 
	    //for문을 통해 배열을 탐색하며 입금할 계좌번호와 배열의 계좌번호가 일치한다면 
	    //해당 계좌번호의 잔액에 입금액만큼 더하는 메소드
	    public static void deposit() {
	        Scanner scanner = new Scanner(System.in);
	        System.out.print("입금할 계좌번호를 입력하세요: ");
	        String accountNumber = scanner.next();
	        System.out.print("입금액을 입력하세요: ");
	        int amount = scanner.nextInt();

	        for (int i = 0; i < accountCount; i++) {
	            if (arr[i][acountIdx].equals(accountNumber)) {
	                int currentBalance = Integer.parseInt(arr[i][balanceIdx]);
	                currentBalance += amount;
	                arr[i][balanceIdx] = String.valueOf(currentBalance);
	                System.out.println("입금이 완료되었습니다. 현재 잔액: " + arr[i][balanceIdx]);
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
	    public static void withDraw() {
	        Scanner scanner = new Scanner(System.in);
	        System.out.print("출금할 계좌번호를 입력하세요: ");
	        String accountNumber = scanner.next();
	        System.out.print("출금액을 입력하세요: ");
	        int amount = scanner.nextInt();

	        for (int i = 0; i < accountCount; i++) {
	            if (arr[i][acountIdx].equals(accountNumber)) {
	                int currentBalance = Integer.parseInt(arr[i][balanceIdx]);
	                if (currentBalance >= amount) {
	                    currentBalance -= amount;
	                    arr[i][balanceIdx] = String.valueOf(currentBalance);
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
