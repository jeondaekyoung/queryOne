package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowlege_seek.queryOne.domain.Notice;

public interface NoticeService {
	
		//��Ͽ�
		List<Notice> selectList(Map map);
				
		//�˻���
		List<Notice> search(Map map);

		int getTotalRecordCount_search(Map map);
		
		//��ü ���ڵ� ��
		int getTotalRecordCount(Map map);
		
		//�� �����
		Notice selectOne(Notice notice);
		
		//�Է�,����,������
		int insert(Notice notice);
		
		int update(Notice notice);
		
		int delete(Notice notice);
		//��ȸ�� 
		int update_hits(String notiNo);
}
