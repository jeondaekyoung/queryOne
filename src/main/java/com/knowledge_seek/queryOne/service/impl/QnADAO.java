package com.knowledge_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.knowledge_seek.queryOne.domain.QnA;
import com.knowledge_seek.queryOne.service.QnAService;

@Repository
public class QnADAO implements QnAService {
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlTemplate;

	@Override
	public List<QnA> selectList(Map map) {
		return sqlTemplate.selectList("qnaSelectList",map); 
	}

	@Override
	public int getTotalRecordCount(Map map) {
		
		return sqlTemplate.selectOne("qnaTotalCount", map);
	}

	@Override
	public QnA selectOne(QnA qna) {
		return sqlTemplate.selectOne("qnaSelectOne",qna);
	}

	@Override
	public int insert(QnA qna) {
		return sqlTemplate.insert("qnaInsert",qna);
	}

	@Override
	public int update(QnA qna) {
		return sqlTemplate.update("qnaUpdate",qna);
	}

	@Override
	public int delete(QnA qna) {
		return sqlTemplate.delete("qnaDelete",qna);
	}

	@Override
	public List<QnA> search(Map map) {

		return sqlTemplate.selectList("qnaSearch", map);
	}
	@Override
	public int getTotalRecordCount_search(Map map) {
		
		return sqlTemplate.selectOne("qnaGetTotalRecordCount_search", map);
	}

	@Override
	public int update_hits(String qnaNo) {

		return sqlTemplate.update("qnaUpdate_hits", qnaNo);
	}
	
	
}
