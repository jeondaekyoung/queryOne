package com.knowlege_seek.queryOne.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.knowlege_seek.queryOne.service.LoginService;



@Repository
public class LoginDAO implements  LoginService{
	
	//sqlSessionTemplate ��ü ����
		@Resource(name="sqlSessionTemplate")
		private SqlSessionTemplate sqlTemplate;

		@Override
		public Map selectOne(Map map) {
			
			return sqlTemplate.selectOne("MemberInfo", map);
		}

		@Override
		public boolean isAdmin(Map map) {
			
			int count = sqlTemplate.selectOne("IsAdmin", map);
			if (count ==0) {
				return false;
			}
			return  true;
		}

}
