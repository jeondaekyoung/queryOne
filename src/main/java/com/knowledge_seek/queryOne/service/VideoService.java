package com.knowledge_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowledge_seek.queryOne.domain.Notice;
import com.knowledge_seek.queryOne.domain.Video;

public interface VideoService {
		//��Ͽ�
		List<Video> selectList(Map map);
				
		//�˻���
		List<Video> search(Map map);

		int getTotalRecordCount_search(Map map);
		
		
		//��ü ���ڵ� ��
		int getTotalRecordCount(Map map);
		
		//�� �����
		Video selectOne(Video video);
		
		//�Է�,����,������
		int insert(Video video);
		
		int update(Video video);
		
		int delete(Video video);
}
