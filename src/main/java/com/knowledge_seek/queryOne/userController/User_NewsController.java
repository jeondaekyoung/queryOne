package com.knowledge_seek.queryOne.userController;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.knowledge_seek.queryOne.domain.Notice;
import com.knowledge_seek.queryOne.service.impl.NoticeServiceImpl;
import com.knowledge_seek.queryOne.util.PagingUtil;

@Controller
public class User_NewsController {
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="notiService")
	NoticeServiceImpl noti; 
	
	@RequestMapping("/user/news.do")
	public String news(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req) {
		int totalRecordCount =noti.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		
		if(null!=req.getParameter("notiNo")){
			noti.update_hits(req.getParameter("notiNo"));
		}
		
		List<Notice> lists=noti.selectList(map);
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/user/news.do?");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		return "/user/news";
	}
	/*@RequestMapping("/user/newsHits.do")
	public String hits(@RequestParam("notiNo") String notiNo){
		
		noti.update_hits(notiNo);
		
		return "forward:/user/news.do?notiNo="+notiNo;
	}*/
	//ajax 구현
	@RequestMapping("/user/newsHits.do")
	@ResponseBody
	public String hitsAjax(@RequestParam("notiNo") String notiNo){

		noti.update_hits(notiNo);
		
		return "";
	}
	
}
