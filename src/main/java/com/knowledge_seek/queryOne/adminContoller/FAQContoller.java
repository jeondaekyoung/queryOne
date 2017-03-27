package com.knowledge_seek.queryOne.adminContoller;


import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.knowledge_seek.queryOne.domain.FileDTO;
import com.knowledge_seek.queryOne.domain.FAQ;
import com.knowledge_seek.queryOne.service.impl.FAQServiceImpl;
import com.knowledge_seek.queryOne.service.impl.FileServiceImpl;
import com.knowledge_seek.queryOne.util.PagingUtil;


@Controller
@RequestMapping("/faq")
public class FAQContoller {

	private static final Logger logger = LoggerFactory.getLogger(FAQContoller.class);
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="faqService")
	FAQServiceImpl faq; 
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;

	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){ 
		int totalRecordCount =faq.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		
		List<FAQ> lists=faq.selectList(map);
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/faq/list.do?");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		return "/admin/faq";
	}

	@RequestMapping("/view.do")
	public String view(FAQ FAQ,Model model){
		FAQ=faq.selectOne(FAQ);
		//띄워쓰기 jsp에 맞게 변환
		if(FAQ.getContent()!=null)
			FAQ.setContent(FAQ.getContent().replace("\r\n","<br/>"));
		model.addAttribute("faq", FAQ);
		return "/admin/faqView";
	}

	@RequestMapping("/writeForm.do")
	public String writeForm(){
		return "/admin/faqWrite";
	}
	
	@Transactional
	@RequestMapping(value ="/write.do",method =RequestMethod.POST)
	public String write(FAQ FAQ){

		if(FAQ.getFile().getSize()!=0){
			MultipartFile multpartfile = FAQ.getFile();
			FAQ.setFileName(multpartfile.getOriginalFilename());
			FAQ.setFile_id(fileServiceImpl.save(multpartfile));

		}

		faq.insert(FAQ);
		

		return "redirect:/faq/list.do";
	}
	@RequestMapping("/editForm.do")
	public String updateForm(FAQ FAQ,Model model){
		FAQ=faq.selectOne(FAQ);
		model.addAttribute("faq",FAQ);

		return "/admin/faqEdit";
	}
	@RequestMapping("/edit.do")
	public String update(FAQ FAQ){
		if(FAQ.getFile_id().length()==0){
			
			FAQ.setFile_id(null);
		}
		
		if(FAQ.getFile().getSize()!=0){
			//올린파일 mutipartFile 객체에 저장, 파일 이름 저장
			MultipartFile multpartfile = FAQ.getFile();
			FAQ.setFileName(multpartfile.getOriginalFilename());
			FileDTO FileDto =fileServiceImpl.selectFileDetail(FAQ.getFile_id());//fileId로 정보가지고오기
			//객체가 존재할때 파일 업데이트
				FAQ.setFile_id(fileServiceImpl.update(multpartfile, FileDto));	
		}
		faq.update(FAQ);

		return "redirect:/faq/list.do";
	}
	
	@RequestMapping("/delete.do")
	public String delete(FAQ FAQ){
		FAQ=faq.selectOne(FAQ);
		faq.delete(FAQ);
		if(FAQ.getFile_id()!=null){
			//파일 삭제 
			FileDTO FileDto =fileServiceImpl.selectFileDetail(FAQ.getFile_id());
			fileServiceImpl.delete(FileDto);
		}
		
		return "redirect:/faq/list.do";
	}
	@RequestMapping("/search.do")
	public String search(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		
		int totalRecordCount =faq.getTotalRecordCount_search(map);
		
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		List<FAQ> lists=faq.search(map);
		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, 
				req.getContextPath()+"/faq/search.do?search_account="+map.get("search_account")+"&search_text="+map.get("search_text")+"&");
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		return "/admin/faq";
	}
}
