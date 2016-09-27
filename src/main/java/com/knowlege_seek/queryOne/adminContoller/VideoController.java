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
import org.springframework.web.bind.annotation.RequestParam;

import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.domain.Video;
import com.knowlege_seek.queryOne.service.impl.VideoServiceImpl;
import com.knowlege_seek.queryOne.util.PagingUtil;


@Controller
@RequestMapping("/video")
public class VideoController {
	
	private static final Logger logger = LoggerFactory.getLogger(VideoController.class);
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="videoService")
	VideoServiceImpl videoService; 
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage,
			HttpServletRequest req){ 
		int totalRecordCount =videoService.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		
		List<Video> lists=videoService.selectList(map);
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/video/list.do?");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		return "/admin/video";
	}
	@RequestMapping("/write.do")
	public String write(Video video){		
		int result=videoService.insert(video);
		return "redirect:/video/list.do";
	}
	@RequestMapping("/update.do")
	public String update(@RequestParam Map map,@RequestParam("videoNo") String videoNo){
		
		Video video=new Video();
		video.setTitle(map.get("title_edit"+videoNo).toString());
		video.setYoutube_URL(map.get("youtube_URL_edit"+videoNo).toString());
		video.setVideoNo(videoNo);
		
		int result=videoService.update(video);
		
		return "redirect:/video/list.do";
	}
	@RequestMapping("/delete.do")
	public String delete(Video video){
		
		int result=videoService.delete(video);
		
		return "redirect:/video/list.do";
	}
	@RequestMapping("/search.do")
	public String search(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		
		int totalRecordCount =videoService.getTotalRecordCount_search(map);
		
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		
		List<Video> lists=videoService.search(map);
		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, 
				req.getContextPath()+"/video/search.do?search_account="+map.get("search_account")+"&search_text="+map.get("search_text")+"&");

		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		return "/admin/video";
	}

}
