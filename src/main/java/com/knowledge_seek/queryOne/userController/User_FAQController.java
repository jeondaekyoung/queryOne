package com.knowledge_seek.queryOne.userController;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.knowledge_seek.queryOne.domain.FAQ;
import com.knowledge_seek.queryOne.service.impl.FAQServiceImpl;
import com.knowledge_seek.queryOne.util.PagingUtil;

@Controller
public class User_FAQController {
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="faqService")
	FAQServiceImpl faq; 
	
	@RequestMapping("/user/faq.do")
	public String news(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req) {
		int totalRecordCount =faq.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		
		if(null!=req.getParameter("faqNo")){
			faq.update_hits(req.getParameter("faqNo"));
		}
		
		List<FAQ> lists=faq.selectList(map);
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/user/news.do?");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		return "/user/faq";
	}
	/*@RequestMapping("/user/newsHits.do")
	public String hits(@RequestParam("faqNo") String faqNo){
		
		faq.update_hits(faqNo);
		
		return "forward:/user/news.do?faqNo="+faqNo;
	}*/
	//ajax 구현
	@RequestMapping("/user/faqHits.do")
	@ResponseBody
	public String hitsAjax(@RequestParam("faqNo") String faqNo){

		faq.update_hits(faqNo);
		
		return "";
	}
	
}
