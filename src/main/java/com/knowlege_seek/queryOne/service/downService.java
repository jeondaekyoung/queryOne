package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowlege_seek.queryOne.domain.Download;

public interface downService {
	//��Ͽ�
	List<Download> selectList(Map map);
			
	//��ü ���ڵ� ��
	int getTotalRecordCount(Map map);
	
	//�� �����
	Download selectOne(Download download);
	
	//�Է�,����,������
	int insert(Download download);
	
	int update(Download download);
	
	int delete(Download download);
}
