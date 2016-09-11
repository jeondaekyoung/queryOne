package com.knowlege_seek.queryOne.userController;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.knowlege_seek.queryOne.domain.Video;
import com.knowlege_seek.queryOne.service.impl.VideoServiceImpl;
import com.knowlege_seek.queryOne.util.PagingUtil;

@Controller
public class User_VideoController {
	
	private int pageSize=8; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	@Resource(name="videoService")
	VideoServiceImpl videoService; 
	
	@RequestMapping("/user/video.do")
	public String video( @RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage,
			HttpServletRequest req) {
		int totalRecordCount =videoService.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;
		map.put("start", start);
		map.put("end",end);
		
		List<Video> lists=videoService.selectList(map);
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/user/video.do?");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		return "/user/video";
	}
}
