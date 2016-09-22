package com.knowlege_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;


import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.service.LicenceService;


@Repository
public class LicenceDAO implements LicenceService {
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlTemplate;

	@Override
	public List<Licencekey> selectList(Map map) {
		return sqlTemplate.selectList("liceSelectList",map); 
	}

	@Override
	public int getTotalRecordCount(Map map) {
		
		return sqlTemplate.selectOne("getTotalRecordCount", map);
	}

	@Override
	public Licencekey selectOne(Licencekey licence) {
		return sqlTemplate.selectOne("liceSelectOne",licence);
	}

	@Override
	public String insert(Licencekey licence) {
		sqlTemplate.insert("liceInsert",licence);
		return licence.getLiceNo();
	}

	@Override
	public int update(Licencekey licence) {
		return sqlTemplate.update("liceUpdate",licence);
	}

	@Override
	public int delete(Licencekey licence) {
		return sqlTemplate.delete("liceDelete",licence);
	}

	public int delete_product(Map map) {
		return sqlTemplate.delete("liceDelete_product",map);
	}

	public Licencekey selectOne_newest(Map map) {
		
		return sqlTemplate.selectOne("liceSelectOne_newest",map);
	}

	@Override
	public int update_create(Licencekey licence) {
		// TODO Auto-generated method stub
		return sqlTemplate.update("liceUpdate_create",licence);
	}

	@Override
	public int getTotalRecordCount_search(Map map) {
	
		return  sqlTemplate.selectOne("getTotalRecordCount_search", map);
	}

	@Override
	public List<Licencekey> search(Map map) {
		
		return sqlTemplate.selectList("liceSelectOne_search", map);
	}
	
	
	@Override
	public int history_inNup(Map map) {
		
		return sqlTemplate.insert("history_inNup", map);
	}

	@Override
	public List<Map> history_SelectList(Map map) {
		// TODO Auto-generated method stub
		return sqlTemplate.selectList("history_SelectList", map);
	}

	@Override
	public int history_SumHits(Map map) {
		// TODO Auto-generated method stub
		return sqlTemplate.selectOne("history_SumHits", map);
	}

	@Override
	public int hisTotalCount(Map map) {
		
		return sqlTemplate.selectOne("hisTotalCount", map);
	}


	
	
}
