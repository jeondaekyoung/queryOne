package com.knowledge_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowledge_seek.queryOne.domain.Download;
import com.knowledge_seek.queryOne.domain.Notice;

public interface downService {
	//��Ͽ�
	List<Download> selectList(Map map);
			
	//�˻���
			List<Download> search(Map map);

			int getTotalRecordCount_search(Map map);
	
	//��ü ���ڵ� ��
	int getTotalRecordCount(Map map);
	
	//�� �����
	Download selectOne(Download download);
	
	//�Է�,����,������
	int insert(Download download);
	
	int update(Download download);
	
	int delete(Download download);
	//��ȸ�� 
	int update_hits(String downNo);
}
