package com.knowledge_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.knowledge_seek.queryOne.domain.Licencekey;
import com.knowledge_seek.queryOne.service.LicenceService;

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
		return dao.getTotalRecordCount(map);
	}

	@Override
	public Licencekey selectOne(Licencekey Licencekey) {
		return dao.selectOne(Licencekey);
	}

	@Override
	public String insert(Licencekey Licencekey) {
			
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

	public int delete_product(Map map) {

		return dao.delete_product(map);
	}

	public Licencekey selectOne_newest(Map map) {
		
		return dao.selectOne_newest(map);
	}

	@Override
	public int update_create(Licencekey licence) {

		return dao.update_create(licence);
	}

	@Override
	public int history_inNup(Map map) {
		
		return dao.history_inNup(map);
	}

	@Override
	public  List<Map> history_SelectList(Map map) {
		return dao.history_SelectList(map);
	}

	@Override
	public int history_SumHits(Map map) {
		return dao.history_SumHits(map);
	}

	@Override
	public int hisTotalCount(Map map) {
		return dao.hisTotalCount(map);
	}

	@Override
	public int getTotalRecordCount_search(Map map) {
		return dao.getTotalRecordCount_search(map);
	}

	@Override
	public List<Licencekey> search(Map map) {
		
		return dao.search(map);
	}

	

}
