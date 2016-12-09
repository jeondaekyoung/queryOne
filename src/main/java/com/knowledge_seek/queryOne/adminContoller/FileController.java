package com.knowledge_seek.queryOne.adminContoller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.knowledge_seek.queryOne.domain.Download;
import com.knowledge_seek.queryOne.domain.FileDTO;
import com.knowledge_seek.queryOne.domain.Product;
import com.knowledge_seek.queryOne.service.FileService;
import com.knowledge_seek.queryOne.service.impl.DownServiceImpl;
import com.knowledge_seek.queryOne.service.impl.ProductServiceImpl;


@Controller

public class FileController {
	private static final Logger logger = LoggerFactory.getLogger(FileController.class);
	
	private String whoAmi;
	
	@Autowired private FileService fileService;
	
	@Resource(name = "downService")
	DownServiceImpl down;
	
	@RequestMapping("/file/down/{file_id}")
	@ResponseBody
	public ResponseEntity<FileSystemResource> down(@PathVariable("file_id") String fileId,HttpServletRequest req){
		
		FileDTO fileDto = fileService.selectFileDetail(fileId);
		
		File file = new File(fileDto.getFile_path());
		
		return downloadContent(fileDto, file, true,req);
	}
	
	@RequestMapping("/file/downNhit/{file_id}/{downNo}")
	@ResponseBody
	public ResponseEntity<FileSystemResource> DownNhit(@PathVariable("file_id") String fileId,
			@PathVariable("downNo") String downNo,HttpServletRequest req){
		down.update_hits(downNo);
		FileDTO fileDto = fileService.selectFileDetail(fileId);
		
		File file = new File(fileDto.getFile_path());
		
		return downloadContent(fileDto, file, true,req);
	}
	
	@RequestMapping("/file/down/image/{file_id}")
	@ResponseBody
	public ResponseEntity<FileSystemResource> image(@PathVariable("file_id") String fileId){
		FileDTO fileDto = fileService.selectFileDetail(fileId);
		
		File file = new File(fileDto.getFile_path());
		
		return downloadContent(fileDto, file, false,null);
	}
	
	@RequestMapping("/file/down/file/{file_id}")
	@ResponseBody
	public ResponseEntity<FileSystemResource> downfile(@PathVariable("file_id") String fileId){
		FileDTO fileDto = fileService.selectFileDetail(fileId);
		
		File file = new File(fileDto.getFile_path());
		
		return downloadContent(fileDto, file, false,null);
	}
	
	@RequestMapping("/file/down/thumb/w/{width}/{file_id}")
	@ResponseBody
	public HttpEntity<FileSystemResource> thumbnail(@PathVariable("width") String width, @PathVariable("file_id") String fileId){
		FileDTO filedto = fileService.selectFileDetail(fileId);
		
		File file = fileService.loadFileThumbnail(fileId, width);
		
		return downloadContent(filedto, file, false,null);
	}

	
	private ResponseEntity<FileSystemResource> downloadContent(FileDTO filedto, File file, boolean isDownload, HttpServletRequest req) {
		
		HttpHeaders header = new HttpHeaders();
		header.setContentLength(filedto.getFile_size());
		whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		String fileName = "";
		ResponseEntity<FileSystemResource> entity = null;
		try {
			fileName = URLEncoder.encode(filedto.getFile_real_name(), "UTF-8");
			if(req!=null){
				String userAgent=req.getHeader("user-agent");
				 if(userAgent.contains("Trident")){
				fileName = URLEncoder.encode(filedto.getFile_real_name(), "EUC-KR");
				
				 }
			}
			
			fileName = URLDecoder.decode(fileName, "ISO8859_1");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
		if(isDownload){
			header.set("Content-disposition", "attachment; filename="+ fileName);
		}
		
		String ext = StringUtils.lowerCase(filedto.getFile_ext());
		
		if("jpeg".equals(ext) || "jpg".equals(ext)){
			header.setContentType(MediaType.IMAGE_JPEG);
		}else if("png".equals(ext)){
			header.setContentType(MediaType.IMAGE_PNG);
		}else if("gif".equals(ext)){
			header.setContentType(MediaType.IMAGE_GIF);
		}else{
			header.set("Content-Type", filedto.getFile_content_type());
		}
		
		if(file.exists()){
			entity = new ResponseEntity<FileSystemResource>(new FileSystemResource(file), header, HttpStatus.OK);
		}
		} catch (Exception e) {

			e.printStackTrace();

		}
		return entity;
	}
	
//특정 경로에 ftp로 업로드한 파일 찾아 파일 다운로드		
 		@RequestMapping("/patch/{file_name:.+}")		
 		@ResponseBody		
		public ResponseEntity<FileSystemResource> ftp_down(@PathVariable("file_name") String file_name, HttpServletRequest req){		
 					
 			File file = new File( "/home/queryOne/"+file_name);		
 			//File file = new File( "D:/queryOne/upload/"+file_name);		
 			//System.out.println("file:"+file.getPath());		
 			HttpHeaders header = new HttpHeaders();		
 			header.setContentLength(file.length());		
 			//whoAmi = Thread.currentThread().getStackTrace()[1].toString();		
 			String fileName="";		
 			ResponseEntity<FileSystemResource> entity = null;		
 			try {		
 						
 				fileName = URLEncoder.encode(file_name, "UTF-8");		
 				if(req!=null){		
 					String userAgent=req.getHeader("user-agent");		
 					 
 					if(userAgent!=null&&userAgent.contains("Trident")){//IE 일 때		
 					fileName = URLEncoder.encode(file_name, "EUC-KR");		
 							
 					 }		
 				}		
 						
 				fileName = URLDecoder.decode(fileName, "ISO8859_1");		
 			} catch (UnsupportedEncodingException e) {		
 				e.printStackTrace();		
 						
 			}		
 			try {		
 				/*if(ext.equals("zip")){		
 					header.set("Content-Type", "application/zip");		
 				  else{		
 				  	header.set("Content-Type", "application/xml");		
 				  }		
 				}*/		
 				header.set("Content-disposition", "attachment; filename="+ fileName);		
 				//System.out.println("file.exists():"+file.exists());		
 			if(file.exists()){		
 						
 			entity = new ResponseEntity<FileSystemResource>(new FileSystemResource(file), header, HttpStatus.OK);		
 			}		
 			} catch (Exception e) {		
 		
 				e.printStackTrace();		
 		
 			}		
 			return entity;		
 					
 		}		
  			  	
  
}
