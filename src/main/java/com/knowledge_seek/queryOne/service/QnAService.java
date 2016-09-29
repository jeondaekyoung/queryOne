package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;


import com.knowlege_seek.queryOne.domain.QnA;

public interface QnAService {
	
		//목록용
		List<QnA> selectList(Map map);
				
		//검색용
		List<QnA> search(Map map);

		int getTotalRecordCount_search(Map map);
		
		//전체 레코드 수
		int getTotalRecordCount(Map map);
		
		//상세 보기용
		QnA selectOne(QnA qna);
		
		//입력,수정,삭제용
		int insert(QnA qna);
		
		int update(QnA qna);
		
		int delete(QnA qna);
		//조회수 
		int update_hits(String qnaNo);
}
