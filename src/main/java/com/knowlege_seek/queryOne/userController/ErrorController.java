package com.knowlege_seek.queryOne.userController;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class ErrorController {
	
	@RequestMapping(value = {"/404.do","/403.do","/405.do","/500.do"})
	public String contact(Model model) {
		
		
		return "/common/webError";
	}

	
}
