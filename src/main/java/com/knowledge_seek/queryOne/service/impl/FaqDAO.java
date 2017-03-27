package com.knowledge_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.knowledge_seek.queryOne.domain.FAQ;
import com.knowledge_seek.queryOne.service.FAQService;

@Repository
public class FaqDAO implements FAQService {
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlTemplate;

	@Override
	public List<FAQ> selectList(Map map) {
		return sqlTemplate.selectList("faqSelectList",map); 
	}

	@Override
	public int getTotalRecordCount(Map map) {
		
		return sqlTemplate.selectOne("faqTotalCount", map);
	}

	@Override
	public FAQ selectOne(FAQ FAQ) {
		return sqlTemplate.selectOne("faqSelectOne",FAQ);
	}

	@Override
	public int insert(FAQ FAQ) {
		return sqlTemplate.insert("faqInsert",FAQ);
	}

	@Override
	public int update(FAQ FAQ) {
		return sqlTemplate.update("faqUpdate",FAQ);
	}

	@Override
	public int delete(FAQ FAQ) {
		return sqlTemplate.delete("faqDelete",FAQ);
	}

	@Override
	public List<FAQ> search(Map map) {

		return sqlTemplate.selectList("faqSearch", map);
	}
	@Override
	public int getTotalRecordCount_search(Map map) {
		
		return sqlTemplate.selectOne("faqGetTotalRecordCount_search", map);
	}

	@Override
	public int update_hits(String faqNo) {

		return sqlTemplate.update("faqUpdate_hits", faqNo);
	}
	
	
}
