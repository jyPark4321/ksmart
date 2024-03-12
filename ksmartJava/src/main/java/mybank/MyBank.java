package main.java.mybank;
import java.util.Scanner;

/* 은행 프로그램의 메뉴구성과 메뉴에 맞는 기능을 호출하는 메서드입니다.
 * @author 박중연
 * @param : sc -> 스캐너 객체 생성
 *          choice -> 키보드로 입력받은 정수형의 숫자(메뉴에 접근하기위해 사용)
 * @return : none
 * @exception : none 
 * @date : 2024-03-11
 * */
public class MyBank {
   public static void bankApp() {
        Scanner sc = new Scanner(System.in); //스캐너 객체 sc 생성

        int choice; // 스캐너로 입력받은 정수타입의 숫자를 저장하기 위한 변수
        do {
            System.out.println("1. 계좌생성 2. 계좌확인 3. 입금 4. 출금 5. 종료");
            System.out.print("메뉴를 선택하세요: ");
            choice = sc.nextInt();

            switch (choice) { 
                case 1: //choice의 값이 1일때 계좌를 생성하는 메소드 createAccount()호출
                    Mybanking.createAccount();
                    break;
                case 2: //choice의 값이 2일때 계좌를 확인하는 메소드 displayarr()호출
                	Mybanking.displayarr();
                    break;
                case 3: //choice의 값이 3일때 계좌에 입금하는 메소드 deposit()호출
                	Mybanking.deposit();
                    break;
                case 4: //choice의 값이 4일때 계좌에서 출금하는 메소드 withdraw()호출
                	Mybanking.withDraw();
                    break;
                case 5:
                    System.out.println("프로그램을 종료합니다.");
                    break;
                default:
                    System.out.println("잘못된 선택입니다. 다시 선택해주세요.");
            }
        } while (choice != 5);
    }

  
}