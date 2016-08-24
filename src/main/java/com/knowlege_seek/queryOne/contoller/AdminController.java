package com.knowlege_seek.queryOne.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping("/loginForm")
	public String loginForm(){
		return "admin/login";
	}
	@RequestMapping(value ="/login" ,method = RequestMethod.POST)
	public String login(){
		
		return "admin/index";
	}
	
}
