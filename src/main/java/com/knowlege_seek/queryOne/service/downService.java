package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowlege_seek.queryOne.domain.Download;

public interface downService {
	//목록용
	List<Download> selectList(Map map);
			
	//전체 레코드 수
	int getTotalRecordCount(Map map);
	
	//상세 보기용
	Download selectOne(Download download);
	
	//입력,수정,삭제용
	int insert(Download download);
	
	int update(Download download);
	
	int delete(Download download);
}
