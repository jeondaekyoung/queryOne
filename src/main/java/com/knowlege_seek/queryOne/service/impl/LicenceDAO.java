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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Licencekey selectOne(Licencekey licence) {
		return sqlTemplate.selectOne("liceSelectOne",licence);
	}

	@Override
	public int insert(Licencekey licence) {
		return sqlTemplate.insert("liceInsert",licence);
	}

	@Override
	public int update(Licencekey licence) {
		return sqlTemplate.update("liceUpdate",licence);
	}

	@Override
	public int delete(Licencekey licence) {
		return sqlTemplate.delete("liceDelete",licence);
	}
	
	
}
