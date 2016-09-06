package com.knowlege_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.knowlege_seek.queryOne.domain.Video;
import com.knowlege_seek.queryOne.service.impl.VideoServiceImpl;


@Controller
@RequestMapping("/video")
public class VideoController {
	
	private static final Logger logger = LoggerFactory.getLogger(VideoController.class);
	
	@Resource(name="videoService")
	VideoServiceImpl videoService; 
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model){
		List<Video> lists=videoService.selectList(map);
		model.addAttribute("lists",lists);
		return "/admin/video";
	}
	@RequestMapping("/write.do")
	public String write(Video video){		
		System.out.println("���");
		int result=videoService.insert(video);
		System.out.println(result==1?"��� ����":"����");
		
		return "redirect:/video/list.do";
	}
	@RequestMapping("/update.do")
	public String update(@RequestParam Map map,@RequestParam("videoNo") String videoNo){
		System.out.println("����");
		System.out.println("��ȣ:"+videoNo+" ����:"+map.get("title_edit"+videoNo)+" ��Ʃ��URL:"+map.get("youtube_URL_edit"+videoNo));
		Video video=new Video();
		video.setTitle(map.get("title_edit"+videoNo).toString());
		video.setYoutube_URL(map.get("youtube_URL_edit"+videoNo).toString());
		video.setVideoNo(videoNo);
		
		int result=videoService.update(video);
		System.out.println(result==1?"���� ����":"����");
		return "redirect:/video/list.do";
	}
	@RequestMapping("/delete.do")
	public String delete(Video video){
		System.out.println("��ȣ:"+video.getVideoNo());
		int result=videoService.delete(video);
		System.out.println(result==1?"���� ����":"����");
		return "redirect:/video/list.do";
	}
	

}
