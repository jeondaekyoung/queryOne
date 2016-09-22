package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.domain.Product;

public interface ProductService {
	
	//��Ͽ�
		List<Product> selectList(Map map);
				
		//��ü ���ڵ� ��
		int getTotalRecordCount(Map map);
		
		//�˻���
		int getTotalRecordCount_search(Map map);
			
		List<Product> search(Map map);
				
		
		//�� �����
		Product selectOne(Product product);
		
		//�Է�,����,������
		int insert(Product product);
		
		int update(Product product);
		
		int delete(Product product);
		
}
