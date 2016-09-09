package com.knowlege_seek.queryOne.userController;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/ | /index ", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", "서버시작");
	
		return "index";
	}
	@RequestMapping("/user/queryone-s.do")
	public String S(Locale locale, Model model) {
		
		
		return "/user/queryone-s";
	}
	
	@RequestMapping("/user/download.do")
	public String download(Locale locale, Model model) {
		
		
		return "/user/download";
	}
	@RequestMapping("/user/news.do")
	public String news(Locale locale, Model model) {
		
		
		return "/user/news";
	}
	
	@RequestMapping("/user/contact.do")
	public String contact(Locale locale, Model model) {
		
		
		return "/user/contact";
	}
	
	
	
}
