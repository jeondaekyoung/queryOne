package com.knowlege_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.service.impl.NoticeServiceImpl;

@Controller
@RequestMapping("/noti")
public class NoticeContoller {

	private static final Logger logger = LoggerFactory.getLogger(NoticeContoller.class);

	@Resource(name="notiService")
	NoticeServiceImpl noti; 
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model)throws Exception{ 
		List<Notice> lists=noti.selectList(map);
		model.addAttribute("lists",lists);
		return "/admin/notice";
	}
	@RequestMapping("/view.do")
	public String view(Notice notice,Model model) throws Exception{
		notice=noti.selectOne(notice);
		//띄워쓰기 jsp에 맞게 변환
		if(notice.getContent()!=null)
			notice.setContent(notice.getContent().replace("\r\n","<br/>"));
		model.addAttribute("notice", notice);
		return "/admin/noticeView";
	}
	@RequestMapping("/writeForm.do")
	public String writeForm()throws Exception{

		return "/admin/noticeWrite";
	}
	@RequestMapping(value ="/write.do",method =RequestMethod.POST)
	public String write(Notice notice)throws Exception{
		System.out.println("글쓰기▼");
		System.out.println("제목:"+notice.getTitle());	
		System.out.println("내용:"+notice.getContent());	
		System.out.println(" 파일이름:"+notice.getFileName());
		System.out.println("글쓴이:"+notice.getWriter());
		int result=noti.insert(notice);
		System.out.println(result==1?"성공":"실패");

		return "forward:/noti/list.do";
	}
	@RequestMapping("/editForm.do")
	public String updateForm(Notice notice,Model model)throws Exception{
		notice=noti.selectOne(notice);
		model.addAttribute("notice",notice);

		return "/admin/noticeEdit";
	}
	@RequestMapping("/edit.do")
	public String update(Notice notice)throws Exception{
		System.out.println("수정▼");
		System.out.println("제목:"+notice.getTitle());	
		System.out.println("내용:"+notice.getContent());	
		System.out.println(" 파일이름:"+notice.getFileName());
		System.out.println("글쓴이:"+notice.getWriter());
		
		int result=noti.update(notice);
		System.out.println("result:"+result);
		
		return "redirect:/noti/list.do";
	}
	@RequestMapping("/delete.do")
	public String delete(Notice notice)throws Exception{
		System.out.println("삭제▼");
		System.out.println("삭제할번호:"+notice.getNotiNo());
		int result=noti.delete(notice);
		System.out.println("result:"+result);
		//※파일구현이후 파일도 삭제 해야함.
		
		return "redirect:/noti/list.do";
	}
	


}
