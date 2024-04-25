package main.java.musicgame;

import java.util.ArrayList;
import java.util.List;

public class Music {
	String musicName;
	String[] musicHint = new String[4];
	int[] getScore = {10, 8, 6, 4};
	
	public Music() {
		
	}
	
	public Music(String musicName,String musicPro, String hint1, String hint2, String hint3) {
		this.musicName = musicName;
		this.musicHint[0] = musicPro;
		this.musicHint[1] = hint1;
		this.musicHint[2] = hint2;
		this.musicHint[3] = hint3;
	}
	public String getMusicName() {
		return musicName;
	}
		
	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}
	
	public String[] getMusicHint() {
		return musicHint;
	}
	
	public void setMusicHint(String[] musicHint) {
		this.musicHint = musicHint;
	}
	
	public int[] getGetScore() {
		return getScore;
	}
	
	public void setGetScore(int[] getScore) {
		this.getScore = getScore;
	}
	
	
	public int plusScore(int nowScore, int score) {
		return nowScore + score;
	}
	
	public List<Music> addMusic(List<Music> music) {
		return music;
	}
	
	public List<Music> removeList(List<Music> music) {
		for(int i = 0; i < music.size(); i++) {
			music.remove(i);
		}
		return music;
	}
}

	