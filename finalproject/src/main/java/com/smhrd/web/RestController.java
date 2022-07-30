package com.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.domain.Music;
import com.smhrd.mapper.musicmapper;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	@Autowired
	musicmapper mapper;
	
	@RequestMapping("/MusicList.do")
	public List<Music> MusicList() {
		// @ResponseBody
		// 이 데이터를 응답 --> 페이지 이동x
		// 리턴해주는 데이터를 그대로 응답
		
		// 글 데이터 가져오기
		List<Music> list = mapper.playMusic();
		
		// jackson databind 라이브러리
		// 객체를 리턴 --> json 데이터 변환
		return  list;
	}
	

}
