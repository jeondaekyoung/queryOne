package com.knowlege_seek.queryOne.service;

import java.util.Map;

public interface LoginService {
	//�󼼺����]
		Map selectOne(Map map);
		//������ �α���
		boolean isAdmin(Map map);
		
}
