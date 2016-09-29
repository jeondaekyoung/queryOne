package com.knowledge_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.knowledge_seek.queryOne.domain.Licencekey;
import com.knowledge_seek.queryOne.domain.Product;
import com.knowledge_seek.queryOne.service.LicenceService;
import com.knowledge_seek.queryOne.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {
		
	@Resource(name="productDAO")
	private ProductDAO dao;

	@Override
	public List<Product> selectList(Map map) {
		
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecordCount(Map map) {
		return dao.getTotalRecordCount(map);
	}

	@Override
	public Product selectOne(Product product) {
		
		return dao.selectOne(product);
	}

	@Override
	public int insert(Product product) {
		
		return dao.insert(product);
	}

	@Override
	public int update(Product product) {
		
		return dao.update(product);
	}

	@Override
	public int delete(Product product) {
		
		return dao.delete(product);
	}

	public Product selectOne_lice(Product product) {
		
		return dao.selectOne_lice(product);
	}

	public Product selectOne_newest() {
		
		return dao.selectOne_newest();
	}

	@Override
	public int getTotalRecordCount_search(Map map) {

		return dao.getTotalRecordCount_search(map);
	}

	@Override
	public List<Product> search(Map map) {

		return dao.search(map);
	}

}
