package com.knowlege_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.knowlege_seek.queryOne.domain.Download;
import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.domain.Video;
import com.knowlege_seek.queryOne.service.impl.DownServiceImpl;
import com.knowlege_seek.queryOne.service.impl.LoginServiceImpl;
import com.knowlege_seek.queryOne.service.impl.NoticeServiceImpl;
import com.knowlege_seek.queryOne.service.impl.VideoServiceImpl;

@Controller
@RequestMapping("/admin")
public class LoginController {
	
	@Resource(name="loginService")
	LoginServiceImpl login;
	
	@Resource(name="downService")
	DownServiceImpl down; 
	
	@Resource(name="notiService")
	NoticeServiceImpl noti; 
	
	@Resource(name="videoService")
	VideoServiceImpl videoService; 
	
	
	//�α��� ��
	@RequestMapping("/loginForm.do")
	public String loginForm(){
		return "admin/login";
	}
	//�α���
	@RequestMapping("/login.do") 
	public String login(@RequestParam Map map,HttpSession session,Model model) throws Exception{
		boolean bFlag=login.isAdmin(map);
		
		if(bFlag) {//ȸ��
			//�α��� ó���� ���� ���ǿ� ���̵� ����
			session.setAttribute("USERID", map.get("adminId"));
			
		} else {//��ȸ��
			model.addAttribute("loginError", "���̵�� ����� ����ġ");
			return "/admin/login";
		}
		return "redirect:/admin/index.do";
	}
	//�ε�����
	@RequestMapping("/index.do")
	public String index(@RequestParam Map map,Model model) {
		map.put("start",1);
		map.put("end",10);
		
		List<Notice> notiLists=noti.selectList(map);
		model.addAttribute("notiLists",notiLists);
		
		List<Download> downLists=down.selectList(map);
		model.addAttribute("downLists",downLists);
		
		List<Video> videoLists=videoService.selectList(map);
		model.addAttribute("videoLists",videoLists);
		
		return "admin/index";
	}
	@RequestMapping("/indexSearch.do")
	public String indexSeach(@RequestParam Map map,Model model) throws Exception{
		map.put("start",1);
		map.put("end",10);
		System.out.println("�˻�"+"account:"+map.get("search_account")+" text:"+map.get("search_text")+" s:"+map.get("start")+" e:"+map.get("end"));
		List<Notice> notiLists=noti.search(map);
		model.addAttribute("notiLists",notiLists);
		
		List<Download> downLists=down.search(map);
		model.addAttribute("downLists",downLists);
		
		List<Video> videoLists=videoService.search(map);
		model.addAttribute("videoLists",videoLists);
		
		return "admin/index";
	}
	
	
	
	//������ �α׾ƿ� ó��...
		@RequestMapping("/logout.do")
		public String logout(HttpSession session) throws Exception {
			session.invalidate();
			return "admin/login";
		} ///////////////////////
	
}
