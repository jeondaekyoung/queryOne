package com.knowlege_seek.queryOne.adminContoller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.knowlege_seek.queryOne.service.impl.LoginServiceImpl;

@Controller
@RequestMapping("/admin")
public class LoginController {
	@Resource(name="loginService")
	LoginServiceImpl login;
	
	//로그인 폼
	@RequestMapping("/loginForm.do")
	public String loginForm() throws Exception{
		return "admin/login";
	}
	//로그인
	@RequestMapping("/login.do") 
	public String login(@RequestParam Map map,HttpSession session,Model model) throws Exception{
		boolean bFlag=login.isAdmin(map);
/*		
		if(bFlag) {//회원
			//로그인 처리를 위해 세션에 아이디 저장
			session.setAttribute("USERID", map.get("adminId"));
			
		} else {//비회원
			model.addAttribute("loginError", "아이디와 비번이 불일치");
			return "/admin/login";
		}*/
		return "admin/index";
	}
	//인덱스로
	@RequestMapping("/index.do")
	public String index() throws Exception{
		return "admin/index";
	}
	
	//관리자 로그아웃 처리...
		@RequestMapping("/logout.do")
		public String logout(HttpSession session) throws Exception {
			session.invalidate();
			return "admin/login";
		} ///////////////////////
	
}
