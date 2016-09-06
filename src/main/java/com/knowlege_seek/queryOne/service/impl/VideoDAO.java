package com.knowlege_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.knowlege_seek.queryOne.domain.Video;
import com.knowlege_seek.queryOne.service.VideoService;

@Repository
public class VideoDAO implements VideoService {
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlTemplate;


	@Override
	public List<Video> selectList(Map map) {
		
		return sqlTemplate.selectList("videoSelectList",map);
	}

	@Override
	public int getTotalRecordCount(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Video selectOne(Video video) {
		return sqlTemplate.selectOne("videoSelectOne",video);
	}

	@Override
	public int insert(Video video) {
		return sqlTemplate.insert("videoInsert",video);
	}

	@Override
	public int update(Video video) {
		return sqlTemplate.update("videoUpdate",video);
	}

	@Override
	public int delete(Video video) {
		return sqlTemplate.delete("videoDelete",video);
	}

}