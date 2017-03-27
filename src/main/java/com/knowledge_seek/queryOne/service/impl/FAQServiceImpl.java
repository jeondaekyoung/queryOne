package com.knowledge_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.knowledge_seek.queryOne.domain.FAQ;
import com.knowledge_seek.queryOne.service.FAQService;

@Service("faqService")
public class FAQServiceImpl implements FAQService {
		
	@Resource(name="faqDAO")
	private FaqDAO dao;
	
	
	@Override
	public List<FAQ> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecordCount(Map map) {
		return dao.getTotalRecordCount(map);
	}

	@Override
	public FAQ selectOne(FAQ FAQ) {
		return dao.selectOne(FAQ);
	}

	@Override
	public int insert(FAQ FAQ) {
		return dao.insert(FAQ);
	}

	@Override
	public int update(FAQ FAQ) {
		return dao.update(FAQ);
	}

	@Override
	public int delete(FAQ FAQ) {
		return dao.delete(FAQ);
	}

	@Override
	public List<FAQ> search(Map map) {
		
		return dao.search(map);
	}
	@Override
	public int getTotalRecordCount_search(Map map) {

		return dao.getTotalRecordCount_search(map);
	}

	@Override
	public int update_hits(String faqNo) {
		return dao.update_hits(faqNo);
	}


}
