package com.knowledge_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowledge_seek.queryOne.domain.FAQ;

public interface FAQService {
	
		//목록용
		List<FAQ> selectList(Map map);
				
		//검색용
		List<FAQ> search(Map map);

		int getTotalRecordCount_search(Map map);
		
		//전체 레코드 수
		int getTotalRecordCount(Map map);
		
		//상세 보기용
		FAQ selectOne(FAQ FAQ);
		
		//입력,수정,삭제용
		int insert(FAQ FAQ);
		
		int update(FAQ FAQ);
		
		int delete(FAQ FAQ);
		//조회수 
		int update_hits(String faqNo);
}
