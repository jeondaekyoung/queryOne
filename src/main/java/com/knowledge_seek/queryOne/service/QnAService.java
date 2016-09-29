package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;


import com.knowlege_seek.queryOne.domain.QnA;

public interface QnAService {
	
		//��Ͽ�
		List<QnA> selectList(Map map);
				
		//�˻���
		List<QnA> search(Map map);

		int getTotalRecordCount_search(Map map);
		
		//��ü ���ڵ� ��
		int getTotalRecordCount(Map map);
		
		//�� �����
		QnA selectOne(QnA qna);
		
		//�Է�,����,������
		int insert(QnA qna);
		
		int update(QnA qna);
		
		int delete(QnA qna);
		//��ȸ�� 
		int update_hits(String qnaNo);
}
