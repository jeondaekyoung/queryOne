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
	public String view(Notice notice,Model model){
		System.out.println(notice.getNotiNo());
		notice=noti.selectOne(notice);
		//띄워쓰기 jsp에 맞게 변환
		if(notice.getContent()!=null)
			notice.setContent(notice.getContent().replace("\r\n","<br/>"));
		System.out.println(notice.getFileName());
		model.addAttribute("notice", notice);
		return "/admin/noticeView";
	}
	@RequestMapping("/writeForm.do")
	public String writeForm(){
		
		return "/admin/noticeWrite";
	}
	@RequestMapping("/write.do")
	public String write(Notice notice){
		
		noti.insert(notice);
	
		return "forward:/noti/list.do";
	}
	@RequestMapping("/editForm.do")
	public String updateForm(){
		
		return "/admin/noticeEdit";
	}
	@RequestMapping("/edit.do")
	public String update(){
		
		return "/admin/noticeEdit";
	}
	

}
