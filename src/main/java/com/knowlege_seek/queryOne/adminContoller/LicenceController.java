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
	
	@RequestMapping("/history.do")
	public String history(){
		
		return "/admin/key-history";
	}
	@RequestMapping("/write.do")
	public String write(Licencekey licencekey){
			System.out.println("Ű ��� ��¥:"+licencekey.getCreateDate()+"��ǰID: "+licencekey.getProduct_id()+" ���̼��� Ű: "+licencekey.getLice_key());
			Product product=new Product();
			product.setProduct_id(licencekey.getProduct_id());
			product=pro.selectOne_lice(product);
			licencekey.setProNo(product.getProNo());
		lice.insert(licencekey);
		int result=lice.update_create(licencekey);
			
		System.out.println(result==1?"����":"����");
		return "redirect:/lice/list.do";
	}
	@RequestMapping("/updete.do")
	public String updete(@RequestParam Map map,@RequestParam("liceNo") String liceNo, Licencekey licencekey){
		System.out.println("Ű ����");
		System.out.println("����");
		System.out.println("��ȣ:"+liceNo+
				"��¥:" +map.get("createDate"+liceNo)+
				" ��ǰID:"+map.get("product_id"+liceNo)+
				" ��ǰ ��:"+map.get("lice_key"+liceNo));
		
		licencekey.setCreateDate(Date.valueOf(map.get("createDate"+liceNo).toString()));
		licencekey.setProduct_id(map.get("product_id"+liceNo).toString());
		licencekey.setLice_key(map.get("lice_key"+liceNo).toString());
		Product product=new Product();
		product.setProduct_id(licencekey.getProduct_id());
		product=pro.selectOne_lice(product);
		licencekey.setProNo(product.getProNo());
		lice.update(licencekey);
		int result=lice.update_create(licencekey);
		System.out.println(result==1?"����":"����");
		return "redirect:/lice/list.do";
	}
	@RequestMapping("/delete.do")
	public String delete(@RequestParam Map map,Licencekey licencekey){
		System.out.println("Ű ����");
		
		int result=lice.delete(licencekey);
		
		System.out.println(result==1?"����":"����");
		return "redirect:/lice/list.do";
	}
}
