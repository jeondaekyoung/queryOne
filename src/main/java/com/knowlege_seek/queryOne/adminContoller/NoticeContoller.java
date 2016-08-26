package com.knowlege_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.service.impl.NoticeServiceImpl;

@Controller
@RequestMapping("/noti")
public class NoticeContoller {
	
	@Resource(name="notiService")
	NoticeServiceImpl noti; 
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model){
		List<Notice> lists=noti.selectList(map);
		model.addAttribute("lists",lists);
		return "/admin/notice";
	}
	@RequestMapping("/view.do")
	public String view(){
	
		return "/admin/noticeView";
	}
	@RequestMapping("/writeForm.do")
	public String writeForm(){
		
		return "/admin/noticeWrite";
	}
	@RequestMapping("/write.do")
	public String write(){
		
		return "forward:/noti/list.do";
	}
	@RequestMapping("/edit.do")
	public String update(){
		
		return "/admin/noticeEdit";
	}
	

}
