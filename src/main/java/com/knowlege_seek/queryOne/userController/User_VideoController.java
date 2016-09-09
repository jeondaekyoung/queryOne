package com.knowlege_seek.queryOne.userController;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User_VideoController {
	@RequestMapping("/user/video.do")
	public String video( Model model) {

		
		return "/user/video";
	}
}
