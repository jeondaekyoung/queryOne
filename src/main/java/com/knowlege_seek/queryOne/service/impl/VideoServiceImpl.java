package com.knowlege_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.knowlege_seek.queryOne.domain.Video;
import com.knowlege_seek.queryOne.service.VideoService;

@Service("videoService")
public class VideoServiceImpl implements VideoService {
	
	@Resource(name="videoDAO")
	private VideoDAO dao;
	
	@Override
	public List<Video> selectList(Map map) {

		return dao.selectList(map);
	}

	@Override
	public int getTotalRecordCount(Map map) {
	
		return dao.getTotalRecordCount(map);
	}

	@Override
	public Video selectOne(Video video) {
	
		return dao.selectOne(video);
	}

	@Override
	public int insert(Video video) {
		return dao.insert(video);
		}

	@Override
	public int update(Video video) {
		return dao.update(video);
	}
	@Override
	public int delete(Video video) {
		return dao.delete(video);
	}

}
