package com.knowlege_seek.queryOne.adminContoller;


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
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.knowlege_seek.queryOne.domain.FileDTO;
import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.domain.Product;
import com.knowlege_seek.queryOne.service.impl.FileServiceImpl;
import com.knowlege_seek.queryOne.service.impl.LicenceServiceImpl;
import com.knowlege_seek.queryOne.service.impl.ProductServiceImpl;
import com.knowlege_seek.queryOne.util.PagingUtil;


@Controller
@RequestMapping("/lice")
public class LicenceController {
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="liceService")
	LicenceServiceImpl lice;
	@Resource(name="productService")
	ProductServiceImpl pro;
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model){
		List<Licencekey> lists=lice.selectList(map);
		List<Product> proLists=pro.selectList(map);
		model.addAttribute("lists",lists);
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
		System.out.println(result==1?"라이센스 등록 성공":"라이센스 등록 실패");
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
		System.out.println(result==1?"라이센스 수정 성공":"라이센스 수정  실패");
		return "redirect:/lice/list.do";
	}
	@RequestMapping("/delete.do")
	public String delete(@RequestParam Map map,Licencekey licencekey){
		System.out.println("키 삭제");
		
		int result=lice.delete(licencekey);
		
		System.out.println(result==1?"라이센스 삭제 성공":"라이센스 삭제 실패");
		return "redirect:/lice/list.do";
	}
	
	@RequestMapping("/history/list.do")
	public String history(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		
		//페이징
		int totalRecordCount =lice.getTotalRecordCount(map);
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
		

		int history_sum = lice.history_SumHits(map);
		model.addAttribute("history_sum",history_sum);
		
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
				int totalRecordCount =lice.getTotalRecordCount(map);
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
	
	@RequestMapping("/history/inNup.do")
	public String hisory(@RequestParam Map map){
		
		lice.history_inNup(map);
		
		
		return "redirect:/";
	}
	
	
}
