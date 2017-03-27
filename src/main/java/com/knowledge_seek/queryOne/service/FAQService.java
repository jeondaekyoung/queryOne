package com.knowledge_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowledge_seek.queryOne.domain.FAQ;

public interface FAQService {
	
		//��Ͽ�
		List<FAQ> selectList(Map map);
				
		//�˻���
		List<FAQ> search(Map map);

		int getTotalRecordCount_search(Map map);
		
		//��ü ���ڵ� ��
		int getTotalRecordCount(Map map);
		
		//�� �����
		FAQ selectOne(FAQ FAQ);
		
		//�Է�,����,������
		int insert(FAQ FAQ);
		
		int update(FAQ FAQ);
		
		int delete(FAQ FAQ);
		//��ȸ�� 
		int update_hits(String faqNo);
}
