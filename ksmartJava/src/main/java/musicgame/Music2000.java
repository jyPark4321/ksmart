package main.java.musicgame;

import java.util.List;

public class Music2000 extends Music{
	
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
			music.add(new Music("소주한잔", "ㅅㅈㅎㅈ", "2000년대", "여보세요 나야 거기 잘지내니", "임창정"));
		}else if(i == 2) {
			music.add(new Music("런투유", "ㄹㅌㅇ", "2000년대", "외로울땐 날불러 뭐가 니맘에 걸려 다른남자와 난 틀려 내게 전활걸어", "DJDOC"));
		}else {
			music.add(new Music("거짓말", "ㄱㅈㅁ", "2000년대", "난 네가 싫어졌어 우리 이만 헤어져 다른 여자가 생겼어 너보다 훨씬 좋은", "god"));
		}
		return music;
	}
}
