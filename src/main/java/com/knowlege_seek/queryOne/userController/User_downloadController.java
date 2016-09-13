package com.knowlege_seek.queryOne.userController;

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

import com.knowlege_seek.queryOne.domain.Download;
import com.knowlege_seek.queryOne.service.impl.DownServiceImpl;
import com.knowlege_seek.queryOne.service.impl.FileServiceImpl;
import com.knowlege_seek.queryOne.util.PagingUtil;

@Controller
public class User_downloadController {
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="downService")
	DownServiceImpl down; 
	
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	
	@RequestMapping("/user/download.do")
	public String download(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage,
			HttpServletRequest req) {
		int totalRecordCount =down.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
				int start= (nowPage-1)*pageSize+1;
				int end = nowPage*pageSize;		
				map.put("start", start);
				map.put("end",end);
		
		List<Download> lists=down.selectList(map);
		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/user/download.do?");
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		
		return "/user/download";
	}
	@RequestMapping("/user/downHits.do")
	public String hits(@RequestParam("downNo") String downNo){
		
		down.update_hits(downNo);
		
		return "forward:/user/download.do?downNo="+downNo;
	}
}
