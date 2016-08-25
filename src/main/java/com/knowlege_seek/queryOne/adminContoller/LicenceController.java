package com.knowlege_seek.queryOne.adminContoller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lice")
public class LicenceController {
	@RequestMapping("/product.do")
	public String prodect(){
		return "/admin/key-product";
	}
	@RequestMapping("/license.do")
	public String license(){
		return "/admin/key-license";
	}
	@RequestMapping("/history.do")
	public String history(){
		return "/admin/key-history";
	}
}
