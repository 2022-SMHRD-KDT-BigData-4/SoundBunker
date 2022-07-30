package com.smhrd.mapper;


import java.util.List;

import com.smhrd.domain.Music;



public interface musicmapper{
	
	public int musicInsert(Music vo);
	
	public Music musicSelect(String song_id);
	
	public List<Music> musicRecommend(Music vo);
	
	public List<Music> randMusic(String musictag);
	
	public List<Music> playMusic();
	
}
	
