package com.knowlege_seek.queryOne.adminContoller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.knowlege_seek.queryOne.domain.Download;
import com.knowlege_seek.queryOne.domain.FileDTO;
import com.knowlege_seek.queryOne.domain.Notice;
import com.knowlege_seek.queryOne.service.impl.FileServiceImpl;
import com.knowlege_seek.queryOne.service.impl.DownServiceImpl;


@Controller
@RequestMapping("/down")
public class DownloadController {
	private static final Logger logger = LoggerFactory.getLogger(DownloadController.class);
	
	@Resource(name="downService")
	DownServiceImpl down; 
	
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model){
		List<Download> lists=down.selectList(map);
		model.addAttribute("lists",lists);
		return "/admin/download";
	}
	@RequestMapping("/view.do")
	public String view(Download download,Model model){
		download=down.selectOne(download);
		//������� jsp�� �°� ��ȯ
		if(download.getContent()!=null)
			download.setContent(download.getContent().replace("\r\n","<br/>"));
		model.addAttribute("download", download);
		return "/admin/downloadView";
	}

	@RequestMapping("/writeForm.do")
	public String writeForm(){
		return "/admin/downloadWrite";
	}

	@RequestMapping(value ="/write.do",method =RequestMethod.POST)
	public String write(Download download){

		if(download.getFile().getSize()!=0){
			MultipartFile multpartfile = download.getFile();
			download.setFileName(multpartfile.getOriginalFilename());
			download.setFile_id(fileServiceImpl.save(multpartfile));

		}

		int result=down.insert(download);
		System.out.println(result==1?"����":"����");

		return "forward:/down/list.do";
	}
	@RequestMapping("/editForm.do")
	public String updateForm(Download download,Model model){
		download=down.selectOne(download);
		model.addAttribute("download",download);

		return "/admin/downloadEdit";
	}
	@RequestMapping("/edit.do")
	public String update(Download download){
		if(download.getFile().getSize()!=0){
			//�ø����� mutipartFile ��ü�� ����, ���� �̸� ����
			MultipartFile multpartfile = download.getFile();
			download.setFileName(multpartfile.getOriginalFilename());
			System.out.println(download.getFile_id());
			FileDTO FileDto =fileServiceImpl.selectFileDetail(download.getFile_id());//fileId�� �������������
			//��ü�� �����Ҷ� ���� ������Ʈ
				download.setFile_id(fileServiceImpl.update(multpartfile, FileDto));	
		}
		int result=down.update(download);

		System.out.println(result==1?"����":"����");

		return "redirect:/down/list.do";
	}
	
	@RequestMapping("/delete.do")
	public String delete(Download download){
		download=down.selectOne(download);
		int result=down.delete(download);
		if(download.getFile_id()!=null){
			//���� ���� 
			FileDTO FileDto =fileServiceImpl.selectFileDetail(download.getFile_id());
			System.out.println(fileServiceImpl.delete(download.getFile(), FileDto));
		}
		System.out.println(result==1?"����":"����");
		return "redirect:/down/list.do";
	}
	
}
