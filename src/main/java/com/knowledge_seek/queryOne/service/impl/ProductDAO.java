package com.knowledge_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.knowledge_seek.queryOne.domain.Product;
import com.knowledge_seek.queryOne.service.ProductService;


@Repository
public class ProductDAO implements ProductService {
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlTemplate;

	@Override
	public List<Product> selectList(Map map) {
		return sqlTemplate.selectList("proSelectList",map); 
	}

	@Override
	public int getTotalRecordCount(Map map) {
		return sqlTemplate.selectOne("proTotalCount", map);
	}

	@Override
	public Product selectOne(Product product) {
		return sqlTemplate.selectOne("proSelectOne",product);
	}

	@Override
	public int insert(Product product) {
		return sqlTemplate.insert("proInsert",product);
	}

	@Override
	public int update(Product product) {
		return sqlTemplate.update("proUpdate",product);
	}

	@Override
	public int delete(Product product) {
		return sqlTemplate.delete("proDelete",product);
	}

	public Product selectOne_lice(Product product) {
		
		return sqlTemplate.selectOne("proSelectOne_lice", product);
	}

	public Product selectOne_newest() {
		
		return sqlTemplate.selectOne("proselectOne_newest");
	}

	@Override
	public int getTotalRecordCount_search(Map map) {
		
		return sqlTemplate.selectOne("proTotalCount_search", map);
	}

	@Override
	public List<Product> search(Map map) {

		return sqlTemplate.selectList("proSearch",map);
	}


}
