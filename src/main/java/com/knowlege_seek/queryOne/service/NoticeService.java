package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowlege_seek.queryOne.domain.Notice;

public interface NoticeService {
	
	//목록용
		List<Notice> selectList(Map map);
				
		//전체 레코드 수
		int getTotalRecordCount(Map map);
		
		//상세 보기용
		Notice selectOne(Notice notice);
		
		//입력,수정,삭제용
		int insert(Notice notice);
		
		int update(Notice notice);
		
		int delete(Notice notice);
}
