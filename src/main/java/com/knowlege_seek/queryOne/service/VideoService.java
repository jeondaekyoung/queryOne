package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;


import com.knowlege_seek.queryOne.domain.Video;

public interface VideoService {
	//목록용
		List<Video> selectList(Map map);
				
		//전체 레코드 수
		int getTotalRecordCount(Map map);
		
		//상세 보기용
		Video selectOne(Video video);
		
		//입력,수정,삭제용
		int insert(Video video);
		
		int update(Video video);
		
		int delete(Video video);
}
