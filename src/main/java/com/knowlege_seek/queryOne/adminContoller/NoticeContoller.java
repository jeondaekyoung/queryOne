package com.knowlege_seek.queryOne.adminContoller;

import java.io.File;
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

import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.service.impl.NoticeServiceImpl;
import com.knowlege_seek.queryOne.util.FileUpDownUtils;


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
	public String write(Notice notice,HttpSession session)throws Exception{
		System.out.println(notice.getFileName());
		//1]서버의 물리적 경로 얻기
		String phisicalPath=session.getServletContext().getRealPath("/resources/upload");
		System.out.println("물리적 경로:"+phisicalPath);
		//2]File객체 생성
		MultipartFile multpartfile = notice.getFile();
	
		if(multpartfile.getSize() != 0) {  //파일이 등록되면...
			System.out.println("파일있음");
			//2-1] 파일 중복시 이름 변경
			String newFileName = FileUpDownUtils.getNewFileName(phisicalPath, multpartfile.getOriginalFilename());
			System.out.println("파일 중복확인 이름:"+newFileName);
			File file = new File(phisicalPath+File.separator+newFileName);
			//3]업로드 처리
			multpartfile.transferTo(file);
			//4] 새 파일명 저장
			notice.setFileName(newFileName);
			//서비스 호출
			int result=noti.insert(notice);
			System.out.println(result==1?"성공":"실패");
		}else{
			logger.debug("{}","파일이 없음");
			System.out.println("파일이 없음");
		}
		
		return "forward:/noti/list.do";
	}
	@RequestMapping("/editForm.do")
	public String updateForm(Notice notice,Model model)throws Exception{
		notice=noti.selectOne(notice);
		model.addAttribute("notice",notice);

		return "/admin/noticeEdit";
	}
	@RequestMapping("/edit.do")
	public String update(Notice notice,HttpSession session)throws Exception{
		System.out.println("수정▼");
		System.out.println("제목:"+notice.getTitle());	
		System.out.println("내용:"+notice.getContent());	
		System.out.println(" 파일이름:"+notice.getFileName());
		System.out.println("글쓴이:"+notice.getWriter());
		//1]서버의 물리적 경로 얻기
		String phisicalPath=session.getServletContext().getRealPath("/resources/upload");

		//2]File객체 생성
		MultipartFile multpartfile = notice.getFile();	
		if(multpartfile.getSize() != 0) {  //파일이 등록되면...
			//2-1] 파일 중복시 이름 변경
			String newFileName = FileUpDownUtils.getNewFileName(phisicalPath, multpartfile.getOriginalFilename());
			File file = new File(phisicalPath+File.separator+newFileName);
			//3]업로드 처리
			multpartfile.transferTo(file);
			
			//4]기존 파일 삭제
			FileUpDownUtils.deleteFile(session, "/resources/upload", notice.getFileName());
			
			//5 새 파일명 저장
			notice.setFileName(newFileName);
		}
		int result=noti.update(notice);
		System.out.println("result:"+result);
		
		return "redirect:/noti/list.do";
	}
	@RequestMapping("/delete.do")
	public String delete(Notice notice,HttpSession session)throws Exception{
		System.out.println("삭제▼");
		System.out.println("삭제할번호:"+notice.getNotiNo());
		//기존 파일 삭제
		FileUpDownUtils.deleteFile(session, "/resources/upload", notice.getFileName());
				
		int result=noti.delete(notice);
		System.out.println("result:"+result);
		//※파일구현이후 파일도 삭제 해야함.
		
		return "redirect:/noti/list.do";
	}
	


}
