package com.knowlege_seek.queryOne.userController;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.knowlege_seek.queryOne.domain.Download;
import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.domain.Product;
import com.knowlege_seek.queryOne.domain.Video;
import com.knowlege_seek.queryOne.service.impl.DownServiceImpl;
import com.knowlege_seek.queryOne.service.impl.FileServiceImpl;
import com.knowlege_seek.queryOne.service.impl.LicenceServiceImpl;
import com.knowlege_seek.queryOne.service.impl.NoticeServiceImpl;
import com.knowlege_seek.queryOne.service.impl.ProductServiceImpl;
import com.knowlege_seek.queryOne.service.impl.VideoServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Resource(name="videoService")
	VideoServiceImpl videoService;
	
	@Resource(name="notiService")
	NoticeServiceImpl noti; 
	
	@Resource(name = "downService")
	DownServiceImpl down;
	
	@Resource(name="productService")
	ProductServiceImpl pro;
	
	@Resource(name="liceService")
	LicenceServiceImpl lice;
	
	@RequestMapping(value = {"/" ,"/index.do"}, method = RequestMethod.GET)
	public String home(Map map, Model model) {
	//	logger.info("Welcome home! The client locale is {}.", "서버시작");
		//시작 및 끝 ROWNUM구하기]
		int start= 1;
		int end = 10;
		map.put("start", start);
		map.put("end",end);
	
		try {
			Product product=pro.selectOne_newest();
			map.put("proNo", product.getProNo());
			model.addAttribute("product", product);
			
				
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		
		Licencekey licencekey=lice.selectOne_newest(map);
		model.addAttribute("licencekey", licencekey);
		
		List<Video> videoLists=videoService.selectList(map);
		model.addAttribute("videoLists", videoLists);
		
		List <Notice>notiLists =noti.selectList(map); 
		model.addAttribute("notiLists", notiLists);
		
		List <Download>downLists =down.selectList(map); 
		model.addAttribute("downLists", downLists);
		
		
		return "index";
	}
	@RequestMapping("/user/queryone-s.do")
	public String S() {
		return "/user/queryone-s";
	}
	
	

	
	@RequestMapping("/user/contact.do")
	public String contact(Locale locale, Model model) {
		
		
		return "/user/contact";
	}
	
	
	
}
