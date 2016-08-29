package com.knowlege_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.service.NoticeService;

@Service("notiService")
public class NoticeServiceImpl implements NoticeService {
		
	@Resource(name="noticeDAO")
	private NoticeDAO dao;
	
	
	@Override
	public List<Notice> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecordCount(Map map) {
		return 0;
	}

	@Override
	public Notice selectOne(Notice notice) {
		return dao.selectOne(notice);
	}

	@Override
	public int insert(Notice notice) {
		notice.getFileName();
		return dao.insert(notice);
	}

	@Override
	public int update(Notice notice) {
		return dao.update(notice);
	}

	@Override
	public int delete(Notice notice) {
		return dao.delete(notice);
	}

}
