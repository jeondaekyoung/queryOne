package com.knowlege_seek.queryOne.contoller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.knowlege_seek.queryOne.service.impl.LoginServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	
	@Resource(name="loginService")
	LoginServiceImpl login;
	
	@RequestMapping("/loginForm")
	public String loginForm(){
		return "admin/login";
	}
	@RequestMapping(value ="/login" ,method = RequestMethod.POST)
	public String login(@RequestParam Map map,HttpSession session,Model model){
		System.out.println("관리자 ID:"+map.get("adminId"));
		boolean bFlag=login.isAdmin(map);
		System.out.println("관리자 인가?:"+bFlag);
		
		if(bFlag) {//회원
			//로그인 처리를 위해 세션에 아이디 저장
			session.setAttribute("USERID", map.get("admid"));
			
		} else {//비회원
			model.addAttribute("loginError", "아이디와 비번이 불일치");
			return "/admin/login";
		}
		return "admin/index";
	}
	
}
