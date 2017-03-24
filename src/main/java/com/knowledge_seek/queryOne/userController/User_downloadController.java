package com.knowledge_seek.queryOne.userController;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.knowledge_seek.queryOne.domain.Download;
import com.knowledge_seek.queryOne.domain.Licencekey;
import com.knowledge_seek.queryOne.domain.Product;
import com.knowledge_seek.queryOne.service.impl.DownServiceImpl;
import com.knowledge_seek.queryOne.service.impl.FileServiceImpl;
import com.knowledge_seek.queryOne.service.impl.LicenceServiceImpl;
import com.knowledge_seek.queryOne.service.impl.ProductServiceImpl;
import com.knowledge_seek.queryOne.util.PagingUtil;

@Controller
public class User_downloadController {
	
	private static final Logger logger = LoggerFactory.getLogger(User_downloadController.class);
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="downService")
	DownServiceImpl down; 
	
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	@Resource(name="productService")
	ProductServiceImpl pro;
	
	@Resource(name="liceService")
	LicenceServiceImpl lice;
	
	@RequestMapping("/user/download.do")
	public String download(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage,
			HttpServletRequest req) {

		if(null!=req.getParameter("downNo")){
				down.update_hits(req.getParameter("downNo"));
			}
		//패치목록 페이징
		{
			map.put("user", "use");
			map.put("account","패치");
			int totalRecordCount =down.getTotalRecordCount(map);
			int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
			//시작 및 끝 ROWNUM구하기]
					int start= (nowPage-1)*pageSize+1;
					int end = nowPage*pageSize;		
					map.put("start", start);
					map.put("end",end);
					
			String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/user/download.do?");
			model.addAttribute("pagingString1",pagingString);
			
			List<Download> p_lists=down.selectList(map);
			model.addAttribute("p_lists",p_lists);
			model.addAttribute("nowPage",nowPage);
		}
		//문서목록 페이징
		{
			map.put("user", "use");
			map.put("account","문서");
			int totalRecordCount =down.getTotalRecordCount(map);
			int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
			//시작 및 끝 ROWNUM구하기]
					int start= (nowPage-1)*pageSize+1;
					int end = nowPage*pageSize;		
					map.put("start", start);
					map.put("end",end);
					
			String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/user/download.do?");
			model.addAttribute("pagingString2",pagingString);

			List<Download> d_lists=down.selectList(map);
			model.addAttribute("d_lists",d_lists);	
			model.addAttribute("nowPage",nowPage);
			
		}
		//2017.03.24 일 다운로드 추가
		Product product=pro.selectOne_newest();
		if(product !=null){
		map.put("proNo", product.getProNo());
		model.addAttribute("product", product);
		}
		Licencekey licence=lice.selectOne_newest(map);
		if(licence!=null){
			model.addAttribute("licence", licence);	
		}
		
		
		return "/user/download";
	}
	@RequestMapping(value = "/user/downHits.do", method=RequestMethod.POST)
	@ResponseBody
	public String hits(@RequestParam("downNo") String downNo,@RequestParam("nowPage") String nowPage){
		/*	logger.info("qa/list.do - 페이지번호 : " + nowPage + "downNo : " +  downNo);*/
		int result = down.update_hits(downNo);
		return result == 1?"success":"fail";
	}
	
}
