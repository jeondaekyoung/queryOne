package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.domain.Product;

public interface ProductService {
	
	//목록용
		List<Product> selectList(Map map);
				
		//전체 레코드 수
		int getTotalRecordCount(Map map);
		
		//검색용
		int getTotalRecordCount_search(Map map);
			
		List<Product> search(Map map);
				
		
		//상세 보기용
		Product selectOne(Product product);
		
		//입력,수정,삭제용
		int insert(Product product);
		
		int update(Product product);
		
		int delete(Product product);
		
}
