package com.knowlege_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.service.LicenceService;

@Service("liceService")
public class LicenceServiceImpl implements LicenceService {
		
	@Resource(name="licenceDAO")
	private LicenceDAO dao;
	
	
	@Override
	public List<Licencekey> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecordCount(Map map) {
		return 0;
	}

	@Override
	public Licencekey selectOne(Licencekey Licencekey) {
		return dao.selectOne(Licencekey);
	}

	@Override
	public int insert(Licencekey Licencekey) {
		return dao.insert(Licencekey);
	}

	@Override
	public int update(Licencekey Licencekey) {
		return dao.update(Licencekey);
	}

	@Override
	public int delete(Licencekey Licencekey) {
		return dao.delete(Licencekey);
	}

}
