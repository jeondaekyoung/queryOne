package com.knowlege_seek.queryOne.adminContoller;

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
public class loginController {
	@Resource(name="loginService")
	LoginServiceImpl login;
	
	@RequestMapping("/loginForm.do")
	public String loginForm(){
		return "admin/login";
	}
	@RequestMapping("/login.do") 
	public String login(@RequestParam Map map,HttpSession session,Model model){
		System.out.println("������ ID:"+map.get("adminId"));
		boolean bFlag=login.isAdmin(map);
		System.out.println("������ �ΰ�?:"+bFlag);
		
		if(bFlag) {//ȸ��
			//�α��� ó���� ���� ���ǿ� ���̵� ����
			session.setAttribute("USERID", map.get("adminId"));
			
		} else {//��ȸ��
			model.addAttribute("loginError", "���̵�� ����� ����ġ");
			return "/admin/login";
		}
		return "admin/index";
	}
	@RequestMapping("/index.do")
	public String index(){
		return "admin/index";
	}
	
}
