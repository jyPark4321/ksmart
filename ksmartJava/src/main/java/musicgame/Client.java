package main.java.musicgame;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Client {
	
	private String name;
	private int score = 0;
	
	public Client(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	public void startScreen() {
		System.out.println("-------------------------");
		System.out.println("1. 음악 맞추기 게임 | 2. 종료");
		System.out.println("-------------------------");
	}
	
	public void startGame() {
		startScreen();
		Scanner sc = new Scanner(System.in);
		System.out.print("메뉴를 골라주세요 ->");
		int option = sc.nextInt();
		switch(option) {
		case 1:
			musicGame();
			break;
		case 2:
			//종료옵션
			System.out.println("시스템을 종료합니다.");
			break;
		}
	}
	
	public void musicGame() {
		List<Music> music = new ArrayList<Music>();
		Music m = new Music2000();
		m.addMusic(music);
		m = new Music2020();
		m.addMusic(music);
		m = new Music2010();
		m.addMusic(music);
		playGame(music);
	}
	
	public void playGame(List<Music> music) {
		String answer = "";
		Scanner sc = new Scanner(System.in);
		for(int i = 0; i < music.size(); i++) {
			loopOut : for(int j = 0; j < music.get(i).musicHint.length; j++) {
				System.out.print("문제: ");
				System.out.println(music.get(i).musicHint[j]);
				System.out.print("정답을 입력해주세요 ->");
				answer = sc.next();
				if(music.get(i).musicName.equals(answer)) {
					System.out.println("정답입니다~");
					break loopOut;
				}else {
					if(j == (music.get(i).musicHint.length - 1)) {
						System.out.println("실패했습니다ㅠㅜ");
						System.out.println("현재점수: " + getScore());
					}
					continue;
				}
			}
		}
	}
	
}
