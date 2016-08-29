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
	
	//�α��� ��
	@RequestMapping("/loginForm.do")
	public String loginForm() throws Exception{
		return "admin/login";
	}
	//�α���
	@RequestMapping("/login.do") 
	public String login(@RequestParam Map map,HttpSession session,Model model) throws Exception{
		boolean bFlag=login.isAdmin(map);
/*		
		if(bFlag) {//ȸ��
			//�α��� ó���� ���� ���ǿ� ���̵� ����
			session.setAttribute("USERID", map.get("adminId"));
			
		} else {//��ȸ��
			model.addAttribute("loginError", "���̵�� ����� ����ġ");
			return "/admin/login";
		}*/
		return "admin/index";
	}
	//�ε�����
	@RequestMapping("/index.do")
	public String index() throws Exception{
		return "admin/index";
	}
	
	//������ �α׾ƿ� ó��...
		@RequestMapping("/logout.do")
		public String logout(HttpSession session) throws Exception {
			session.invalidate();
			return "admin/login";
		} ///////////////////////
	
}
