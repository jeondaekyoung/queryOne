package com.knowledge_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.knowledge_seek.queryOne.domain.Download;
import com.knowledge_seek.queryOne.service.downService;

@Service("downService")
public class DownServiceImpl implements downService {
	
	@Resource(name="downloadDAO")
	private DownloadDAO dao;
	
	@Override
	public List<Download> selectList(Map map) {
		List<Download> dowload_list =dao.selectList(map);
		
		for(Download p:dowload_list){
			
			p.getFile_id().add(p.getFile_id1());
			p.getFile_id().add(p.getFile_id2());
			p.getFile_id().add(p.getFile_id3());
			p.getFile_id().add(p.getFile_id4());
			p.getFile_name().add(p.getFile_name1());
			p.getFile_name().add(p.getFile_name2());
			p.getFile_name().add(p.getFile_name3());
			p.getFile_name().add(p.getFile_name4());
			
		}
		
		return dowload_list;
	}

	@Override
	public int getTotalRecordCount(Map map) {

		return dao.getTotalRecordCount(map);
	}

	@Override
	public Download selectOne(Download download) {
		Download d=dao.selectOne(download);
		d.getFile_id().add(d.getFile_id1());
		d.getFile_id().add(d.getFile_id2());
		d.getFile_id().add(d.getFile_id3());
		d.getFile_id().add(d.getFile_id4());
		
		d.getFile_name().add(d.getFile_name1());
		d.getFile_name().add(d.getFile_name2());
		d.getFile_name().add(d.getFile_name3());
		d.getFile_name().add(d.getFile_name4());
		
		return d;
		
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

	@Override
	public List<Download> search(Map map) {

		return dao.search(map);
	}

	@Override
	public int getTotalRecordCount_search(Map map) {
		
		return dao.getTotalRecordCount_search(map);
	}

	@Override
	public int update_hits(String downNo) {

		return dao.update_hits(downNo);
	}

}
