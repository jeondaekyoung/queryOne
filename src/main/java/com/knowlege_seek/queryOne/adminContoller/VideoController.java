package com.knowlege_seek.queryOne.adminContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/video")
public class VideoController {
	@RequestMapping("/list.do")
	public String list(){
		return "/admin/video";
	}
	

}
