package com.knowlege_seek.queryOne.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.domain.Product;
import com.knowlege_seek.queryOne.service.LicenceService;
import com.knowlege_seek.queryOne.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {
		
	@Resource(name="productDAO")
	private ProductDAO dao;

	@Override
	public List<Product> selectList(Map map) {
		// TODO Auto-generated method stub
		return dao.selectList(map);
	}

	@Override
	public int getTotalRecordCount(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Product selectOne(Product product) {
		// TODO Auto-generated method stub
		return dao.selectOne(product);
	}

	@Override
	public int insert(Product product) {
		// TODO Auto-generated method stub
		return dao.insert(product);
	}

	@Override
	public int update(Product product) {
		// TODO Auto-generated method stub
		return dao.update(product);
	}

	@Override
	public int delete(Product product) {
		// TODO Auto-generated method stub
		return dao.delete(product);
	}

	public Product selectOne_lice(Product product) {
		// TODO Auto-generated method stub
		return dao.selectOne_lice(product);
	}
	

}
