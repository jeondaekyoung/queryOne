package com.knowlege_seek.queryOne.adminContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna")
public class QnAController {
	
	@RequestMapping("/contact.do")
	public String list(){
		
	
		
		return "admin/contact";
	}
}
