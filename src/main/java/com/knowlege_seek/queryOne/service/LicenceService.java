package com.knowlege_seek.queryOne.service;

import java.util.List;
import java.util.Map;

import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.domain.Notice;

public interface LicenceService {
	
	//목록용
		List<Licencekey> selectList(Map map);
				
		//전체 레코드 수
		int getTotalRecordCount(Map map);
		
		//검색용
		int getTotalRecordCount_search(Map map);
		
		List<Licencekey> search(Map map);
		
		//상세 보기용
		Licencekey selectOne(Licencekey licence);
		
		//입력,수정,삭제용
		String insert(Licencekey licence);
		
		int update(Licencekey licence);
		
		int delete(Licencekey licence);
		//시간 더하기용
		int update_create(Licencekey licence);

		//발급내역 용
		int history_inNup(Map map);
		
		int hisTotalCount(Map map);
		
		 List<Map> history_SelectList(Map map);
		
		int history_SumHits(Map map);
}
