package com.knowlege_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

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
@RequestMapping("/pro")
public class ProductController {
	@Resource(name="productService")
	ProductServiceImpl pro;
	
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	@Resource(name="liceService")
	LicenceServiceImpl lice;
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model){
		List<Product> lists=pro.selectList(map);
		model.addAttribute("lists",lists);
		return "/admin/key-product";
	}
	
	@RequestMapping("/write.do")
	public String write(Product Product){
		if(Product.getFile()!=null){
			MultipartFile multpartfile = Product.getFile();
			Product.setFile_name(multpartfile.getOriginalFilename());
			Product.setFile_id(fileServiceImpl.save(multpartfile));
		
		}
		
		int result=pro.insert(Product);
				
		return "redirect:/pro/list.do";
	}
	
	@RequestMapping("/updete.do")
	public String updete(@RequestParam Map map,Product Product,@RequestParam("proNo") String proNo,MultipartRequest mReq){
		System.out.println("수정");

		/*if(Product.getFile_id().length()==0){
			System.out.println(Product.getFile_id()==null?"널임":"널아님");
			Product.setFile_id(null);
		}*/
		Product.setProduct_id(map.get("product_id"+proNo).toString());
		Product.setProduct_name(map.get("product_name"+proNo).toString());
		Product.setFile(mReq.getFile("file"+proNo));
		Product.setFile_id(map.get("file_id"+proNo).toString());
		if(Product.getFile().getSize()!=0){
			//올린파일 mutipartFile 객체에 저장, 파일 이름 저장
			MultipartFile multpartfile = Product.getFile();
			Product.setFile_name(multpartfile.getOriginalFilename());
			FileDTO FileDto =fileServiceImpl.selectFileDetail(Product.getFile_id());//fileId로 정보가지고오기
			//객체가 존재할때 파일 업데이트
				Product.setFile_id(fileServiceImpl.update(multpartfile, FileDto));	
		}
		int result=pro.update(Product);
		
		return "redirect:/pro/list.do";
	}
	
	@RequestMapping("/delete.do")
	public String delete(@RequestParam Map map,Product Product,@RequestParam("proNo") String proNo){
		int lice_delete=lice.delete_product(map);
		Product.setFile_id(map.get("file_id"+proNo).toString());
		Product=pro.selectOne(Product);
		int result=pro.delete(Product);
		if(Product.getFile_id()!=null){
			//파일 삭제 
			FileDTO FileDto =fileServiceImpl.selectFileDetail(Product.getFile_id());
			System.out.println(fileServiceImpl.delete(Product.getFile(), FileDto));
		}
		
		return "redirect:/pro/list.do";
	}
}
