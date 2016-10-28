package com.knowledge_seek.queryOne.adminContoller;

import java.util.List;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.knowledge_seek.queryOne.util.PagingUtil;
import com.knowledge_seek.queryOne.domain.Download;
import com.knowledge_seek.queryOne.domain.FileDTO;
import com.knowledge_seek.queryOne.service.impl.DownServiceImpl;
import com.knowledge_seek.queryOne.service.impl.FileServiceImpl;


@Controller
@RequestMapping("/down")
public class DownloadController {
	private static final Logger logger = LoggerFactory.getLogger(DownloadController.class);
	
	@Value("${PAGESIZE}")
	private int pageSize; 
	@Value("${BLOCKPAGE}")
	private int blockPage;
	
	@Resource(name="downService")
	DownServiceImpl down; 
	
	@Resource(name="fileService")
	FileServiceImpl fileServiceImpl;
	
	@RequestMapping("/list.do")
	public String list(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		int totalRecordCount =down.getTotalRecordCount(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		//���� �� �� ROWNUM���ϱ�]
				int start= (nowPage-1)*pageSize+1;
				int end = nowPage*pageSize;		
				map.put("start", start);
				map.put("end",end);
		
		List<Download> lists=down.selectList(map);
		
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, req.getContextPath()+"/down/list.do?");
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		return "/admin/download";
	}
	@RequestMapping("/view.do")
	public String view(Download download,Model model){
		download=down.selectOne(download);
		logger.debug("download:"+download.getFile_id()+download.getFile_id1());
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
	public String write(Download download,MultipartRequest mhsq){
		
		List<MultipartFile> mf =mhsq.getFiles("file");
		if (mf.size() == 1 && mf.get(0).getOriginalFilename().equals("")) {
            
        } else {
        	logger.debug("���� ���� ���ε� mf.size():"+mf.size());
        	for (int i = 0; i < mf.size(); i++) {
            	if(mf.get(i).getSize()!=0){
            	download.file_name.add(mf.get(i).getOriginalFilename());
            	download.file_id.add(fileServiceImpl.save(mf.get(i)));
            	}
            	else{
            		download.file_name.add("null");
            		download.file_id.add(null);
            	}
            }
                 
        }
		
		int result=down.insert(download);
		

		return "redirect:/down/list.do";
	}
	@RequestMapping("/editForm.do")
	public String updateForm(Download download,Model model){
		download=down.selectOne(download);
		model.addAttribute("download",download);

		return "/admin/downloadEdit";
	}
	@RequestMapping("/edit.do")
	public String update(Download download,MultipartRequest mhsq,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage){
		
		List<MultipartFile> mf =mhsq.getFiles("file");
		
		/*if(download.getFileId().length()==0){
			
			download.setFileId(null);
		}
		if(download.getFile().getSize()!=0){
			//�ø����� mutipartFile ��ü�� ����, ���� �̸� ����
			MultipartFile multpartfile = download.getFile();
			download.setFileName(multpartfile.getOriginalFilename());
			
			FileDTO FileDto =fileServiceImpl.selectFileDetail(download.getFileId());//fileId�� �������������
			//��ü�� �����Ҷ� ���� ������Ʈ
				download.setFileId(fileServiceImpl.update(multpartfile, FileDto));	
		}*/
		
		for (int i = 0; i < mf.size(); i++) {
        	if(mf.get(i).getSize()!=0){
        		
        	download.file_name.set(i,mf.get(i).getOriginalFilename());
        	FileDTO FileDto =fileServiceImpl.selectFileDetail(download.getFile_id().get(i));//fileId�� �������������
			//��ü�� �����Ҷ� ���� ������Ʈ
			download.file_id.set(i,fileServiceImpl.update(mf.get(i), FileDto));
        	}
        	download.setFile_name1(download.file_name.get(0));
        	download.setFile_name2(download.file_name.get(1));
        	download.setFile_name3(download.file_name.get(2));
        	download.setFile_name4(download.file_name.get(3));
        	
        	download.setFile_id1(download.file_id.get(0));
        	download.setFile_id2(download.file_id.get(1));
        	download.setFile_id3(download.file_id.get(2));
        	download.setFile_id4(download.file_id.get(3));
        	
        	
		}
		
		
		int result=down.update(download);

		return "redirect:/down/list.do";
	}
	
	@RequestMapping("/delete.do")
	public String delete(Download download){
		download=down.selectOne(download);
		int result=down.delete(download);
		if(download.getFileId()!=null){
			//���� ���� 
			FileDTO FileDto =fileServiceImpl.selectFileDetail(download.getFileId());
			fileServiceImpl.delete(FileDto);
		}
		
		return "redirect:/down/list.do";
	}
	@RequestMapping("/search.do")
	public String search(@RequestParam Map map,Model model,@RequestParam(defaultValue="1",required=false,value="nowPage") int nowPage
			,HttpServletRequest req){
		
		int totalRecordCount =down.getTotalRecordCount_search(map);
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		//���� �� �� ROWNUM���ϱ�]
		int start= (nowPage-1)*pageSize+1;
		int end = nowPage*pageSize;		
		map.put("start", start);
		map.put("end",end);
		List<Download> lists=down.search(map);
		String pagingString = PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage, 
			 req.getContextPath()+"/down/search.do?search_account="+map.get("search_account")+"&search_text="+map.get("search_text")+"&");
		model.addAttribute("lists",lists);
		model.addAttribute("pagingString",pagingString);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("nowPage",nowPage);
		model.addAttribute("totalRecordCount",totalRecordCount);
		model.addAttribute("pageSize",pageSize);
		
		return "/admin/download";
	}
	
}
