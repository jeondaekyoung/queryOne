package com.knowledge_seek.queryOne.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.knowledge_seek.queryOne.service.LoginService;
import com.knowledge_seek.queryOne.service.impl.LoginDAO;
@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	//
	@Resource(name="loginDAO")
	private LoginDAO dao;

	@Override
	public Map selectOne(Map map) {
		
		return dao.selectOne(map);
	}

	@Override
	public boolean isAdmin(Map map) {
		
		return dao.isAdmin(map);
	}

}
