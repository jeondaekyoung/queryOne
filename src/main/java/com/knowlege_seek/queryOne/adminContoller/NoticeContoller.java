package com.knowlege_seek.queryOne.adminContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/noti")
public class NoticeContoller {
	@RequestMapping("/list.do")
	public String list(){
		return "/admin/notice";
	}

}
