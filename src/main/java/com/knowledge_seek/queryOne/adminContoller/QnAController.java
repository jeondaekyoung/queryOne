package com.knowledge_seek.queryOne.adminContoller;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.knowledge_seek.queryOne.domain.FileDTO;
import com.knowledge_seek.queryOne.domain.Notice;
import com.knowledge_seek.queryOne.domain.QnA;
import com.knowledge_seek.queryOne.service.impl.QnAServiceImpl;
import com.knowledge_seek.queryOne.util.PagingUtil;

@Controller
@RequestMapping("/qna")
public class QnAController {

	private static final Logger logger = LoggerFactory.getLogger(QnAController.class);
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="qnaService")
	QnAServiceImpl qnaService;  
	

	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		
		int totalRecordCount =qnaService.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		
		List<QnA> lists=qnaService.selectList(map);
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/qna/list.do?");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		return "admin/qna";
	}
	@RequestMapping("/search.do")
	public String search(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		
		int totalRecordCount =qnaService.getTotalRecordCount_search(map);
		
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		List<QnA> lists=qnaService.search(map);
		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, 
				req.getContextPath()+"/qna/search.do?search_account="+map.get("search_account")+"&search_text="+map.get("search_text")+"&");
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		return "/admin/qna";
	}
	
	@RequestMapping("/write.do")
	public String write(QnA qna){
	

	qnaService.insert(qna);
	
		
		
		return "redirect:/user/qna.do";
	}
	
	
	@RequestMapping("/answerChk.do")
	public String answerChk(QnA qna,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage,
			HttpServletRequest req){
		
		
		if(qna.getAnswerChk()==1){
			qna.setAnswerChk(0);
		}
		else{
			qna.setAnswerChk(1);
		}
		qnaService.update(qna);
		
		if(req.getHeader("referer")!=null){
			if(req.getHeader("referer").contains("search.do")){
				return "redirect:/qna/search.do?nowPage="+nowPage;
			}
		}
		
		return "redirect:/qna/list.do?nowPage="+nowPage;
	}
	
	@RequestMapping("/delete.do")
	public String delete(QnA qna,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage,
			HttpServletRequest req){
		qna=qnaService.selectOne(qna);
		qnaService.delete(qna);
		
		if(req.getHeader("referer")!=null){
			if(req.getHeader("referer").contains("search.do")){
				return "redirect:/qna/search.do?nowPage="+nowPage;
			}
		}
		
		return "redirect:/qna/list.do?nowPage="+nowPage;
	}
}
