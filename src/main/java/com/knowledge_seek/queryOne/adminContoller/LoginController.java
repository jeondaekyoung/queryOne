package com.knowledge_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.knowledge_seek.queryOne.domain.Download;
import com.knowledge_seek.queryOne.domain.Notice;
import com.knowledge_seek.queryOne.domain.Video;
import com.knowledge_seek.queryOne.service.impl.DownServiceImpl;
import com.knowledge_seek.queryOne.service.impl.LoginServiceImpl;
import com.knowledge_seek.queryOne.service.impl.NoticeServiceImpl;
import com.knowledge_seek.queryOne.service.impl.VideoServiceImpl;
import com.knowledge_seek.queryOne.util.PasswordUtil;

@Controller
@RequestMapping("/admin")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Resource(name="loginService")
	LoginServiceImpl login;
	
	@Resource(name="downService")
	DownServiceImpl down; 
	
	@Resource(name="notiService")
	NoticeServiceImpl noti; 
	
	@Resource(name="videoService")
	VideoServiceImpl videoService; 
	
	
	//로그인 폼
	@RequestMapping("/loginForm.do")
	public String loginForm(){
		
	
		
		return "admin/login";
	}
	//로그인
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(@RequestParam Map map,HttpSession session,Model model) throws Exception{
		map.put("adminPwd", PasswordUtil.encryptPassword(map.get("adminPwd").toString()));
		boolean bFlag=login.isAdmin(map);
		
		if(!bFlag) {//회원
			//로그인 처리를 위해 세션에 아이디 저장
			session.setAttribute("USERID", map.get("adminId"));
			
		} else {//비회원
			model.addAttribute("loginError", "아이디와 비번이 불일치");
			return "/admin/login";
		}
		return "redirect:/admin/index.do";
	}
	//인덱스로
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
		List<Notice> notiLists=noti.search(map);
		model.addAttribute("notiLists",notiLists);
		
		List<Download> downLists=down.search(map);
		model.addAttribute("downLists",downLists);
		
		List<Video> videoLists=videoService.search(map);
		model.addAttribute("videoLists",videoLists);
		
		return "admin/index";
	}
	
	//관리자 로그아웃 처리...
		@RequestMapping("/logout.do")
		public String logout(HttpSession session) throws Exception {
			session.invalidate();
			return "admin/login";
		} ///////////////////////
	
}
