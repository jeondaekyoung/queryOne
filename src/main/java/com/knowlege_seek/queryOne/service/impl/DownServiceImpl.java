package com.knowlege_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.knowlege_seek.queryOne.domain.Download;
import com.knowlege_seek.queryOne.service.downService;

@Service("downService")
public class DownServiceImpl implements downService {
	
	@Resource(name="downloadDAO")
	private DownloadDAO dao;
	
	@Override
	public List<Download> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecordCount(Map map) {

		return dao.getTotalRecordCount(map);
	}

	@Override
	public Download selectOne(Download download) {
		return dao.selectOne(download);
	}

	@Override
	public int insert(Download download) {
		return dao.insert(download);
	}

	@Override
	public int update(Download download) {
		return dao.update(download);
	}

	@Override
	public int delete(Download download) {
		return dao.delete(download);
	}

}
