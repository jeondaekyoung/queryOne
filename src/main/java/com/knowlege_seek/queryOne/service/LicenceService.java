package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowlege_seek.queryOne.domain.Licencekey;

public interface LicenceService {
	
	//��Ͽ�
		List<Licencekey> selectList(Map map);
				
		//��ü ���ڵ� ��
		int getTotalRecordCount(Map map);
		
		//�� �����
		Licencekey selectOne(Licencekey licence);
		
		//�Է�,����,������
		String insert(Licencekey licence);
		
		int update(Licencekey licence);
		
		int delete(Licencekey licence);
		//�ð� ���ϱ��
		int update_create(Licencekey licence);
}
