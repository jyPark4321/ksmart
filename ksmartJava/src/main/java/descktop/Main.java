package main.java.descktop;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
   
        
        System.out.println("=====음악 초성 퀴즈!=====");        
        System.out.println("이름이 뭔가요?");
        System.out.printf("> ");
        String username = scanner.nextLine().trim();
        User user = new User(username);;
    
        
        
        
        System.out.println("정답 : +50점 | 오답 : -100점");

        while (true) {
            System.out.println("1. 게임시작");
            System.out.println("2. 종료");
            System.out.print("> ");
            int choice = scanner.nextInt();
            scanner.nextLine();

            if (choice == 1) {
            	System.out.println("게임중지는 '중지' 를 입력");
                startQuiz(scanner, user);
            } else if (choice == 2) {
                System.out.println("게임 종료");
                break;
            } else {
                System.out.println("입력값 오류");
            }
        }

        scanner.close();
    }

    public static void startQuiz(Scanner scanner, User user) {
    	int score = 0;
    	
    	while (true) {
            String question = Music.getRandomQuestion();
            String answer = Music.getAnswer(question);
   
            
            System.out.println("문제 : " + question);
            System.out.print("> ");
            String userAnswer = scanner.nextLine().trim();

            if (userAnswer.equalsIgnoreCase("중지")) {
                System.out.println("게임 종료");
                break;
            }

            if (userAnswer.equalsIgnoreCase(answer)) {
                System.out.println("정답!!");
                score += 50;
        
                
            } else {
                System.out.println("오답");
                score -= 100;
            }
        }
    	user.setScore(score);
    	user.displayRank();
    }
}

