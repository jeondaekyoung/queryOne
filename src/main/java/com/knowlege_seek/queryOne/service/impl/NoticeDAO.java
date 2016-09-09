package com.knowlege_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.service.NoticeService;

@Repository
public class NoticeDAO implements NoticeService {
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlTemplate;

	@Override
	public List<Notice> selectList(Map map) {
		return sqlTemplate.selectList("notiSelectList",map); 
	}

	@Override
	public int getTotalRecordCount(Map map) {
		
		return sqlTemplate.selectOne("NotiTotalCount", map);
	}

	@Override
	public Notice selectOne(Notice notice) {
		return sqlTemplate.selectOne("notiSelectOne",notice);
	}

	@Override
	public int insert(Notice notice) {
		return sqlTemplate.insert("notiInsert",notice);
	}

	@Override
	public int update(Notice notice) {
		return sqlTemplate.update("notiUpdate",notice);
	}

	@Override
	public int delete(Notice notice) {
		return sqlTemplate.delete("notiDelete",notice);
	}

	@Override
	public List<Notice> search(Map map) {

		return sqlTemplate.selectList("notiSearch", map);
	}
	@Override
	public int getTotalRecordCount_search(Map map) {
		
		return sqlTemplate.selectOne("notiGetTotalRecordCount_search", map);
	}
	
	
}
