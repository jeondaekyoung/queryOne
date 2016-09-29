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
		
		return sqlTemplate.selectList("VideoSelectList",map);
	}

	@Override
	public int getTotalRecordCount(Map map) {

		return sqlTemplate.selectOne("VideoTotalCount", map);
	}

	@Override
	public Video selectOne(Video video) {
		return sqlTemplate.selectOne("VideoSelectOne",video);
	}

	@Override
	public int insert(Video video) {
		return sqlTemplate.insert("VideoInsert",video);
	}

	@Override
	public int update(Video video) {
		return sqlTemplate.update("VideoUpdate",video);
	}

	@Override
	public int delete(Video video) {
		return sqlTemplate.delete("VideoDelete",video);
	}

	@Override
	public List<Video> search(Map map) {
		return sqlTemplate.selectList("VideoSearch", map);
	}

	@Override
	public int getTotalRecordCount_search(Map map) {
		return sqlTemplate.selectOne("VideoGetTotalRecordCount_search", map);
	}

}
