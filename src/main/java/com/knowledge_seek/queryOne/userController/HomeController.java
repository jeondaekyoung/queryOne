package com.knowledge_seek.queryOne.userController;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.hamcrest.core.IsNull;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.knowledge_seek.queryOne.domain.Download;
import com.knowledge_seek.queryOne.domain.Licencekey;
import com.knowledge_seek.queryOne.domain.Notice;
import com.knowledge_seek.queryOne.domain.Product;
import com.knowledge_seek.queryOne.domain.Video;
import com.knowledge_seek.queryOne.service.impl.DownServiceImpl;
import com.knowledge_seek.queryOne.service.impl.FileServiceImpl;
import com.knowledge_seek.queryOne.service.impl.LicenceServiceImpl;
import com.knowledge_seek.queryOne.service.impl.NoticeServiceImpl;
import com.knowledge_seek.queryOne.service.impl.ProductServiceImpl;
import com.knowledge_seek.queryOne.service.impl.VideoServiceImpl;

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
			if(product !=null){
				
			map.put("proNo", product.getProNo());
			model.addAttribute("product", product);
			}
			
			
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		Licencekey licence=lice.selectOne_newest(map);
		
		
		if(licence!=null){
			model.addAttribute("licence", licence);	
		}
		
		
		List<Video> videoLists=videoService.selectList(map);
		model.addAttribute("videoLists", videoLists);
		
		List <Notice>notiLists =noti.selectList(map); 
		model.addAttribute("notiLists", notiLists);
		{//'패치'로 구분하여 올린파일 유무 확인 
			map.put("user", "use");
			map.put("account","패치");
			List<Download> p_lists=down.selectList(map);
			boolean file_check = false;
			for(Download d : p_lists){
				if(file_check==false){
					for(String s:d.file_name){
						if(!s.equals("null")){//file_name - 문자열"null",file_id - null
							model.addAttribute("p_lists",p_lists);
							file_check =true;
							break;
						}
					}
				}
				else{
					break;
				}
			}
		}
		{//'문서'로 구분하여 올린파일 유무 확인
			map.put("user", "use");
			map.put("account","문서");
			List<Download> d_lists=down.selectList(map);
			boolean file_check = false;
			for(Download d : d_lists){
				if(file_check==false){
					for(String s:d.file_name){
						if(!s.equals("null")){
							model.addAttribute("d_lists",d_lists);
							file_check =true;
							break;
						}
					}
				}
				else{
					break;
				}
			}
		}
		return "index";
	}
	
	
		@RequestMapping("/user/queryOne.do")
	public String queryOne() {
		return "/user/queryone";
	}
	@RequestMapping("/user/queryone-s.do")
	public String S() {
		return "/user/queryone-s";
	}
	
	@RequestMapping("/user/qna.do")
	public String qna(Locale locale, Model model) {
		
		
		return "/user/qna";
	}
//특정 경로에 ftp로 업로드한 파일 찾아 파일 다운로드
		@RequestMapping("/{file_name:.+}")
		@ResponseBody
		public ResponseEntity<FileSystemResource> ftp_down(@PathVariable("file_name") String file_name, HttpServletRequest req){
			
			if(file_name.equals("favicon.ico")){
				return null;
			}
			
			File file = new File( "/home/queryOne/"+file_name);
			//File file = new File( "D:/queryOne/upload/"+file_name);
			
			
			System.out.println("file:"+file.getPath());
			HttpHeaders header = new HttpHeaders();
			header.setContentLength(file.length());
			
			//whoAmi = Thread.currentThread().getStackTrace()[1].toString();
			String fileName="";
			ResponseEntity<FileSystemResource> entity = null;
			try {
				
				fileName = URLEncoder.encode(file_name, "UTF-8");
				if(req!=null){
					String userAgent=req.getHeader("user-agent");
					 if(userAgent.contains("Trident")){//IE 일 때
					fileName = URLEncoder.encode(file_name, "EUC-KR");
					
					 }
				}
				
				fileName = URLDecoder.decode(fileName, "ISO8859_1");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
				
			}
			try {
				/*if(ext.equals("zip")){
					header.set("Content-Type", "application/zip");
				  else{
				  	header.set("Content-Type", "application/xml");
				  }
				}*/
				header.set("Content-disposition", "attachment; filename="+ fileName);
				System.out.println("file.exists():"+file.exists());
			if(file.exists()){
				
				entity = new ResponseEntity<FileSystemResource>(new FileSystemResource(file), header, HttpStatus.OK);
			}
				else{
					entity = new ResponseEntity<FileSystemResource>(new FileSystemResource(file), header, HttpStatus.NOT_FOUND);
				}
			} catch (Exception e) {

				e.printStackTrace();

			}
			return entity;
			
		}
	
	
	
}
