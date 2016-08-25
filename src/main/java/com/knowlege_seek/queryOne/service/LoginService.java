package com.knowlege_seek.queryOne.service;

import java.util.Map;

public interface LoginService {
	//상세보기용]
		Map selectOne(Map map);
		//관리자 로그인
		boolean isAdmin(Map map);
		
}
