package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.domain.Notice;

public interface LicenceService {
	
	//��Ͽ�
		List<Licencekey> selectList(Map map);
				
		//��ü ���ڵ� ��
		int getTotalRecordCount(Map map);
		
		//�˻���
		int getTotalRecordCount_search(Map map);
		
		List<Licencekey> search(Map map);
		
		//�� �����
		Licencekey selectOne(Licencekey licence);
		
		//�Է�,����,������
		String insert(Licencekey licence);
		
		int update(Licencekey licence);
		
		int delete(Licencekey licence);
		//�ð� ���ϱ��
		int update_create(Licencekey licence);

		//�߱޳��� ��
		int history_inNup(Map map);
		
		int hisTotalCount(Map map);
		
		 List<Map> history_SelectList(Map map);
		
		int history_SumHits(Map map);
}
