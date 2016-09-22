package com.knowlege_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
@RequestMapping("/pro")
public class ProductController {
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage; 
	
	@Resource(name="productService")
	ProductServiceImpl pro;
	
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	@Resource(name="liceService")
	LicenceServiceImpl lice;
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		//페이징
		int totalRecordCount =pro.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		List<Product> lists=pro.selectList(map);		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/pro/list.do?");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		
		
		return "/admin/key-product";
	}
	@RequestMapping("/search.do")
	public String search(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		//페이징
		int totalRecordCount =pro.getTotalRecordCount_search(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//시작 및 끝 ROWNUM구하기]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		List<Product> lists=pro.search(map);		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/pro/search.do?search_account="+map.get("search_account")+"&search_text="+map.get("search_text")+"&");
		
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		return "/admin/key-product";
	}
	
	@RequestMapping("/write.do")
	public String write(Product Product){
		if(Product.getFile()!=null){
			MultipartFile multpartfile = Product.getFile();
			Product.setFile_name(multpartfile.getOriginalFilename());
			Product.setFile_id(fileServiceImpl.save(multpartfile));
		
		}
		
		pro.insert(Product);
				
		return "redirect:/pro/list.do";
	}
	
	@RequestMapping("/updete.do")
	public String updete(@RequestParam Map map,Product Product,@RequestParam("proNo") String proNo,MultipartRequest mReq){
		

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
		pro.update(Product);
		
		return "redirect:/pro/list.do";
	}
	
	@RequestMapping("/delete.do")
	public String delete(@RequestParam Map map,Product Product,@RequestParam("proNo") String proNo){
		int lice_delete=lice.delete_product(map);
		Product.setFile_id(map.get("file_id"+proNo).toString());
		Product=pro.selectOne(Product);
		pro.delete(Product);
		if(Product.getFile_id()!=null){
			//파일 삭제 
			FileDTO FileDto =fileServiceImpl.selectFileDetail(Product.getFile_id());
			
		}
		
		return "redirect:/pro/list.do";
	}
	
}
