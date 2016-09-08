package com.knowlege_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.knowlege_seek.queryOne.domain.Download;
import com.knowlege_seek.queryOne.domain.FileDTO;
import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.service.impl.FileServiceImpl;
import com.knowlege_seek.queryOne.util.PagingUtil;
import com.knowlege_seek.queryOne.service.impl.DownServiceImpl;


@Controller
@RequestMapping("/down")
public class DownloadController {
	private static final Logger logger = LoggerFactory.getLogger(DownloadController.class);
	

	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="downService")
	DownServiceImpl down; 
	
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		int totalRecordCount =down.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
				int start= (nowPage-1)*pageSize+1;
				int end = nowPage*pageSize;		
				map.put("start", start);
				map.put("end",end);
		
		List<Download> lists=down.selectList(map);
		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/down/list.do?");
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		return "/admin/download";
	}
	@RequestMapping("/view.do")
	public String view(Download download,Model model){
		download=down.selectOne(download);
		//띄워쓰기 jsp에 맞게 변환
		if(download.getContent()!=null)
			download.setContent(download.getContent().replace("\r\n","<br/>"));
		model.addAttribute("download", download);
		return "/admin/downloadView";
	}

	@RequestMapping("/writeForm.do")
	public String writeForm(){
		return "/admin/downloadWrite";
	}

	@RequestMapping(value ="/write.do",method =RequestMethod.POST)
	public String write(Download download){
		if(download.getFile().getSize()!=0){
			MultipartFile multpartfile = download.getFile();
			download.setFileName(multpartfile.getOriginalFilename());
			download.setFile_id(fileServiceImpl.save(multpartfile));

		}

		int result=down.insert(download);
		System.out.println(result==1?"성공":"실패");

		return "forward:/down/list.do";
	}
	@RequestMapping("/editForm.do")
	public String updateForm(Download download,Model model){
		download=down.selectOne(download);
		model.addAttribute("download",download);

		return "/admin/downloadEdit";
	}
	@RequestMapping("/edit.do")
	public String update(Download download){
		if(download.getFile_id().length()==0){
			System.out.println(download.getFile_id()==null?"널임":"널아님");
			download.setFile_id(null);
		}
		if(download.getFile().getSize()!=0){
			//올린파일 mutipartFile 객체에 저장, 파일 이름 저장
			MultipartFile multpartfile = download.getFile();
			download.setFileName(multpartfile.getOriginalFilename());
			System.out.println(download.getFile_id());
			FileDTO FileDto =fileServiceImpl.selectFileDetail(download.getFile_id());//fileId로 정보가지고오기
			//객체가 존재할때 파일 업데이트
				download.setFile_id(fileServiceImpl.update(multpartfile, FileDto));	
		}
		
		int result=down.update(download);

		System.out.println(result==1?"성공":"실패");

		return "redirect:/down/list.do";
	}
	
	@RequestMapping("/delete.do")
	public String delete(Download download){
		download=down.selectOne(download);
		int result=down.delete(download);
		if(download.getFile_id()!=null){
			//파일 삭제 
			FileDTO FileDto =fileServiceImpl.selectFileDetail(download.getFile_id());
			System.out.println(fileServiceImpl.delete(download.getFile(), FileDto));
		}
		System.out.println(result==1?"성공":"실패");
		return "redirect:/down/list.do";
	}
	
}
