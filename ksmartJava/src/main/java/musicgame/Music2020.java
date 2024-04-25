package main.java.musicgame;

import java.util.ArrayList;
import java.util.List;

public class Music2020 extends Music {

	
	
	
	
	
	@Override
	public List<Music> addMusic(List<Music> music) {
		int i = (int) (Math.random()*10);
		while(true) {
			i = (int) (Math.random()*10);
			if(i < 4 && i > 0) {
				break;
			}
		}
		if(i == 1) {
			music.add(new Music("퀸카", "ㅋㅋ", "2020년대", "월, 화, 수, 목, 금, 토, 일, 미모가 쉬지를 않네 머리부터 발끝까지 눈부셔 빛이 나네", "(여자)아이들"));
		}else if(i == 2) {
			music.add(new Music("하입보이", "ㅎㅇㅂㅇ", "2020년대", "And we can go high 말해봐 yeah 느껴봐 mm mm Take him to the sky", "뉴진스"));
		}else {
			music.add(new Music("러브다이브", "ㄹㅂㄷㅇㅂ", "2020년대", "네가 참 궁금해 그건 너도 마찬가지 이거면 충분해 쫓고 쫓는 이런 놀이 참을 수 없는 이끌림과 호기심", "아이브"));
		}
		return music;
	}
}
