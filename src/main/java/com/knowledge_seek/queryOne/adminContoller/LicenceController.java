package com.knowledge_seek.queryOne.adminContoller;


import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.lf5.util.DateFormatManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.knowledge_seek.queryOne.domain.FileDTO;
import com.knowledge_seek.queryOne.domain.Licencekey;
import com.knowledge_seek.queryOne.domain.Product;
import com.knowledge_seek.queryOne.service.impl.FileServiceImpl;
import com.knowledge_seek.queryOne.service.impl.LicenceServiceImpl;
import com.knowledge_seek.queryOne.service.impl.ProductServiceImpl;
import com.knowledge_seek.queryOne.util.PagingUtil;


@Controller
@RequestMapping("/lice")
public class LicenceController {
	
	private static final Logger logger = LoggerFactory.getLogger(LicenceController.class);
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="liceService")
	LicenceServiceImpl lice;
	@Resource(name="productService")
	ProductServiceImpl pro;
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		//페이징
				int totalRecordCount =lice.getTotalRecordCount(map);
				int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
				
				//시작 및 끝 ROWNUM구하기]
				int start= (nowPage-1)*pageSize+1;
				int end = nowPage*pageSize;		
				map.put("start", start);
				map.put("end",end);
				List<Licencekey> lists=lice.selectList(map);		
				String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/lice/list.do?");
				
				model.addAttribute("lists",lists);
				model.addAttribute("pagingString",pagingString);
				model.addAttribute("totalPage",totalPage);
				model.addAttribute("nowPage",nowPage);
				model.addAttribute("totalRecordCount",totalRecordCount);
				model.addAttribute("pageSize",pageSize);
				
				List<Product> proLists=pro.selectList(map);
				model.addAttribute("proLists",proLists);
		return "/admin/key-license";
	}
	
	@RequestMapping("/search.do")
	public String search(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		//페이징
		int totalRecordCount =lice.getTotalRecordCount_search(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		List<Licencekey> lists=lice.search(map);		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/lice/search.do?search_account="+map.get("search_account")+"&search_text="+map.get("search_text")+"&");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		List<Product> proLists=pro.selectList(map);
		model.addAttribute("proLists",proLists);
		return "/admin/key-license";
	}
		@Transactional
	@RequestMapping("/write.do")
	public String write(Licencekey licencekey){
			Product product=new Product();
			product.setProduct_id(licencekey.getProduct_id());
			product=pro.selectOne_lice(product);
			licencekey.setProNo(product.getProNo());
		String liceNo =lice.insert(licencekey);
		licencekey.setLice_key(liceNo);
		int result=lice.update_create(licencekey);
		
		return "redirect:/lice/list.do";
	}
	@RequestMapping("/updete.do")
	public String updete(@RequestParam Map map,@RequestParam("liceNo") String liceNo, Licencekey licencekey){

		licencekey.setCreateDate(Date.valueOf(map.get("createDate"+liceNo).toString()));
		licencekey.setProduct_id(map.get("product_id"+liceNo).toString());
		licencekey.setLice_key(map.get("lice_key"+liceNo).toString());
		Product product=new Product();
		product.setProduct_id(licencekey.getProduct_id());
		product=pro.selectOne_lice(product);
		licencekey.setProNo(product.getProNo());
		lice.update(licencekey);
		int result=lice.update_create(licencekey);
		
		return "redirect:/lice/list.do";
	}
	@RequestMapping("/delete.do")
	public String delete(@RequestParam Map map,Licencekey licencekey){
		
		
		int result=lice.delete(licencekey);
		
		
		return "redirect:/lice/list.do";
	}
	@RequestMapping("/history/list.do")
	public String history(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		
		//페이징
		int totalRecordCount =lice.hisTotalCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		List<Map>lists=lice.history_SelectList(map);
		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/lice/history/list.do?");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		try {
			int history_sum = lice.history_SumHits(map);
			model.addAttribute("history_sum",history_sum);
		} catch (NullPointerException e) {
			System.out.println("데이터가 없습니다.");
		}
		
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.MONTH, -1);    // 한달 전
		java.util.Date date = calendar.getTime();
		model.addAttribute("aMonth",new SimpleDateFormat("yyyy-MM-dd").format(date));
		
		return "/admin/key-history";
	}

	@RequestMapping("/history/search.do")
	public String history_search(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		//페이징
				int totalRecordCount =lice.hisTotalCount(map);
				int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
				
				//시작 및 끝 ROWNUM구하기]
				int start= (nowPage-1)*pageSize+1;
				int end = nowPage*pageSize;		
				map.put("start", start);
				map.put("end",end);
				List<Map>lists=lice.history_SelectList(map);
				
				String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/lice/history/search.do?when="+map.get("when")+"&");
				
				model.addAttribute("lists",lists);
				model.addAttribute("pagingString",pagingString);
				model.addAttribute("totalPage",totalPage);
				model.addAttribute("nowPage",nowPage);
				model.addAttribute("totalRecordCount",totalRecordCount);
				model.addAttribute("pageSize",pageSize);
		
		int history_sum = 0;
		for(Map listMap :lists){
			history_sum+=Integer.valueOf(listMap.get("hits").toString());
			
		}
		model.addAttribute("history_sum",history_sum);
		
		
		model.addAttribute("aMonth",map.get("Search1"));
		
		return "/admin/key-history";
	}
	
	@RequestMapping( value= "/history/inNup.do" , method=RequestMethod.POST)
	@ResponseBody
	public String hisory(@RequestParam Map map){
		int result =lice.history_inNup(map);
		//DUPLICATE
		return result == 2?"success":"fail";
		
	}
	
	
}
