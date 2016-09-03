package com.knowlege_seek.queryOne.adminContoller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;

import com.knowlege_seek.queryOne.domain.FileDTO;
import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.service.impl.FileServiceImpl;
import com.knowlege_seek.queryOne.service.impl.NoticeServiceImpl;
import com.knowlege_seek.queryOne.util.FileUpDownUtils;


@Controller
@RequestMapping("/noti")
public class NoticeContoller {

	private static final Logger logger = LoggerFactory.getLogger(NoticeContoller.class);
	
	@Resource(name="notiService")
	NoticeServiceImpl noti; 
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model){ 
		List<Notice> lists=noti.selectList(map);
		model.addAttribute("lists",lists);
		return "/admin/notice";
	}
	
	@RequestMapping("/view.do")
	public String view(Notice notice,Model model){
		notice=noti.selectOne(notice);
		//띄워쓰기 jsp에 맞게 변환
		if(notice.getContent()!=null)
			notice.setContent(notice.getContent().replace("\r\n","<br/>"));
		model.addAttribute("notice", notice);
		return "/admin/noticeView";
	}
	
	@RequestMapping("/writeForm.do")
	public String writeForm(){
		return "/admin/noticeWrite";
	}

	@RequestMapping(value ="/write.do",method =RequestMethod.POST)
	public String write(Notice notice){
		
		if(notice.getFile().getSize()!=0){
		MultipartFile multpartfile = notice.getFile();
		notice.setFileName(multpartfile.getOriginalFilename());
		fileServiceImpl.save(multpartfile);
		}
		
		int result=noti.insert(notice);
		logger.debug("write insert {}",result==1?"성공":"실패");
		
		return "forward:/noti/list.do";
	}
	@RequestMapping("/editForm.do")
	public String updateForm(Notice notice,Model model){
		notice=noti.selectOne(notice);
		model.addAttribute("notice",notice);

		return "/admin/noticeEdit";
	}
	@RequestMapping("/edit.do")
	public String update(Notice notice){
		notice=noti.selectOne(notice);

		//int result=noti.update(notice);
		//logger.debug("write update {}",result==1?"성공":"실패");
		
		return "redirect:/noti/list.do";
	}
	@RequestMapping("/delete.do")
	public String delete(Notice notice){
		notice=noti.selectOne(notice);
		/*if(notice.getFile_id()!=null){
			//기존파일 삭제 
			FileDTO dto =fileServiceImpl.selectFileDetail(notice.getFile_id());
			System.out.println(fileServiceImpl.update(notice.getFile(), dto));
			int result=noti.delete(notice);
		}*/
		return "redirect:/noti/list.do";
	}
	


}
