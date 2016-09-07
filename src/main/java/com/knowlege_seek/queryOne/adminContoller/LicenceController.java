package com.knowlege_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.knowlege_seek.queryOne.domain.FileDTO;
import com.knowlege_seek.queryOne.domain.Licencekey;
import com.knowlege_seek.queryOne.service.impl.FileServiceImpl;
import com.knowlege_seek.queryOne.service.impl.LicenceServiceImpl;


@Controller
@RequestMapping("/lice")
public class LicenceController {
	@Resource(name="liceService")
	LicenceServiceImpl lice;
	
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	@RequestMapping("/product.do")
	public String prodect(@RequestParam Map map,Model model){
		List<Licencekey> lists=lice.selectList(map);
		model.addAttribute("lists",lists);
		return "/admin/key-product";
	}
	
	@RequestMapping("/license.do")
	public String license(@RequestParam Map map,Model model){
		List<Licencekey> lists=lice.selectList(map);
		model.addAttribute("lists",lists);
		return "/admin/key-license";
	}
	
	@RequestMapping("/history.do")
	public String history(){
		
		return "/admin/key-history";
	}
	@RequestMapping("/write.do")
	public String write(@RequestParam("who") String who,Licencekey licencekey){
		if(licencekey.getFile()!=null){
			MultipartFile multpartfile = licencekey.getFile();
			licencekey.setFile_name(multpartfile.getOriginalFilename());
			licencekey.setFile_id(fileServiceImpl.save(multpartfile));
			System.out.println("파일이 있음");
		}
		System.out.println("등록");
		int result=lice.insert(licencekey);
		System.out.println(result==1?"등록 성공":"실패");
				
		return "redirect:/lice/product.do";
	}
	@RequestMapping("/updete.do")
	public String updete(@RequestParam Map map,Licencekey licencekey,@RequestParam("liceNo") String liceNo,MultipartRequest mReq){
		System.out.println("수정");
		System.out.println("번호:"+liceNo+
				" 제품ID:"+map.get("product_id"+liceNo)+
				" 제품 명:"+map.get("product_name"+liceNo)+ 
				" file:"+mReq.getFile("file"+liceNo).getOriginalFilename()
				+" fileId:"+map.get("file_id"+liceNo)
				);
		/*if(licencekey.getFile_id().length()==0){
			System.out.println(licencekey.getFile_id()==null?"널임":"널아님");
			licencekey.setFile_id(null);
		}*/
		licencekey.setProduct_id(map.get("product_id"+liceNo).toString());
		licencekey.setProduct_name(map.get("product_name"+liceNo).toString());
		licencekey.setFile(mReq.getFile("file"+liceNo));
		licencekey.setFile_id(map.get("file_id"+liceNo).toString());
		if(licencekey.getFile().getSize()!=0){
			//올린파일 mutipartFile 객체에 저장, 파일 이름 저장
			MultipartFile multpartfile = licencekey.getFile();
			licencekey.setFile_name(multpartfile.getOriginalFilename());
			FileDTO FileDto =fileServiceImpl.selectFileDetail(licencekey.getFile_id());//fileId로 정보가지고오기
			//객체가 존재할때 파일 업데이트
				licencekey.setFile_id(fileServiceImpl.update(multpartfile, FileDto));	
		}
		int result=lice.update(licencekey);
		System.out.println(result==1?"수정 성공":"실패");
		return "redirect:/lice/product.do";
	}
	@RequestMapping("/delete.do")
	public String delete(@RequestParam Map map,Licencekey licencekey,@RequestParam("liceNo") String liceNo,@RequestParam("who") String who){
		System.out.println("삭제");
		System.out.println(" fileId:"+map.get("file_id"+liceNo));
		licencekey.setFile_id(map.get("file_id"+liceNo).toString());
		licencekey=lice.selectOne(licencekey);
		int result=lice.delete(licencekey);
		if(licencekey.getFile_id()!=null){
			//파일 삭제 
			FileDTO FileDto =fileServiceImpl.selectFileDetail(licencekey.getFile_id());
			System.out.println(fileServiceImpl.delete(licencekey.getFile(), FileDto));
		}
		System.out.println(result==1?"삭제 성공":"실패");
		
		return "redirect:/lice/product.do";
	}
}
