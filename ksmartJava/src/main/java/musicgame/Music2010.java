package main.java.musicgame;

import java.util.List;

public class Music2010 extends Music{

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
			music.add(new Music("밤편지", "2010년대","ㅂㅍㅈ",  "이 밤 그날의 반딧불을 당신의창 가까이 보낼게요 사랑한다는 말이에요", "아이유"));
		}else if(i == 2) {
			music.add(new Music("첫눈처럼너에게가겠다", "2010년대", "ㅊㄴㅊㄹㄴㅇㄱㄱㄱㄷ", "욕심이 생겼다 너와 함께 살고 늙어가 주름진 손을 맞잡고 내 삶은 따뜻했었다고", "에일리"));
		}else {
			music.add(new Music("죽어도못보내", "2010년대", "ㅈㅇㄷㅁㅂㄴ", "어려도 아픈건 똑같아 세상을 잘 모른다고 아픈걸 모르진 않아", "2AM"));
		}
		return music;
	}
}
