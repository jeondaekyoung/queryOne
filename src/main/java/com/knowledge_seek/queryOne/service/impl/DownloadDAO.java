package com.knowledge_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.knowledge_seek.queryOne.domain.Download;
import com.knowledge_seek.queryOne.service.downService;

@Repository
public class DownloadDAO  implements downService{
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlTemplate;

	@Override
	public List<Download> selectList(Map map) {
		
		return sqlTemplate.selectList("downSelectList",map);
	}

	@Override
	public int getTotalRecordCount(Map map) {

		return sqlTemplate.selectOne("DownTotalCount", map);
	}

	@Override
	public Download selectOne(Download download) {

		return sqlTemplate.selectOne("downSelectOne",download);
	}

	@Override
	public int insert(Download download) {
		return sqlTemplate.insert("downInsert",download);
	}

	@Override
	public int update(Download download) {
		return sqlTemplate.update("downUpdate",download);
	}

	@Override
	public int delete(Download download) {
		return sqlTemplate.delete("downDelete",download);
	}

	@Override
	public List<Download> search(Map map) {
		return sqlTemplate.selectList("downSearch", map);
	}

	@Override
	public int getTotalRecordCount_search(Map map) {
		return sqlTemplate.selectOne("downGetTotalRecordCount_search", map);
	}

	@Override
	public int update_hits(String downNo) {
		// TODO Auto-generated method stub
		return sqlTemplate.update("downUpdate_hits", downNo);
	}
	

}
