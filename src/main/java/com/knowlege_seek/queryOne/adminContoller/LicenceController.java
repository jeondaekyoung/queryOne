package com.knowlege_seek.queryOne.adminContoller;


import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.lf5.util.DateFormatManager;
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


@Controller
@RequestMapping("/lice")
public class LicenceController {
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
	public String history(@RequestParam Map map,Model model){
		
		List<Map>lists=lice.history_SelectList(map);
		
		int history_sum = lice.history_SumHits(map);
		
		model.addAttribute("lists",lists);
		model.addAttribute("history_sum",history_sum);
		return "/admin/key-history";
	}
	@RequestMapping("/history/search.do")
	public String history_search(@RequestParam Map map,Model model){
		String when=map.get("when").toString();
		
		if(when.equals("1d")){
			
		}else if(when.equals(2d)){
			
		}else if(when.equals(1d)){
			
		}else if(when.equals(1d)){
			
		}
		
		
	
		List<Map>lists=lice.history_SelectList(map);
		
		int history_sum = 0;
		
		for(Map listMap :lists){
			history_sum+=Integer.valueOf(listMap.get("hits").toString());
			
		}
		
		model.addAttribute("lists",lists);
		model.addAttribute("history_sum",history_sum);
		return "/admin/key-history";
	}
	
	@RequestMapping("/history/inNup.do")
	public String hisory(@RequestParam Map map){
		
		lice.history_inNup(map);
		
		
		return "redirect:/";
	}
	
	
}
