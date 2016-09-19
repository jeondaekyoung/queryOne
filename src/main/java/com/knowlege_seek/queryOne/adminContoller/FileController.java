package com.knowlege_seek.queryOne.adminContoller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import org.apache.commons.lang.StringUtils;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.knowlege_seek.queryOne.domain.FileDTO;
import com.knowlege_seek.queryOne.service.FileService;


@Controller
@RequestMapping("/file")
public class FileController {
	
	private String whoAmi;
	@Autowired private FileService fileService;
	
	@RequestMapping("/down/{file_id}")
	@ResponseBody
	public ResponseEntity<FileSystemResource> down(@PathVariable("file_id") String fileId){
		
		FileDTO fileDto = fileService.selectFileDetail(fileId);
		
		File file = new File(fileDto.getFile_path());
		
		return downloadContent(fileDto, file, true);
	}
	
	@RequestMapping("/down/image/{file_id}.do")
	@ResponseBody
	public ResponseEntity<FileSystemResource> image(@PathVariable("file_id") String fileId){
		FileDTO fileDto = fileService.selectFileDetail(fileId);
		
		File file = new File(fileDto.getFile_path());
		
		return downloadContent(fileDto, file, false);
	}
	
	@RequestMapping("/down/file/{file_id}.do")
	@ResponseBody
	public ResponseEntity<FileSystemResource> downfile(@PathVariable("file_id") String fileId){
		FileDTO fileDto = fileService.selectFileDetail(fileId);
		
		File file = new File(fileDto.getFile_path());
		
		return downloadContent(fileDto, file, false);
	}
	
	@RequestMapping("/down/thumb/w/{width}/{file_id}")
	@ResponseBody
	public HttpEntity<FileSystemResource> thumbnail(@PathVariable("width") String width, @PathVariable("file_id") String fileId){
		FileDTO filedto = fileService.selectFileDetail(fileId);
		
		File file = fileService.loadFileThumbnail(fileId, width);
		
		return downloadContent(filedto, file, false);
	}

	
	private ResponseEntity<FileSystemResource> downloadContent(FileDTO filedto, File file, boolean isDownload) {
		HttpHeaders header = new HttpHeaders();
		header.setContentLength(filedto.getFile_size());
		whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		String fileName = "";
		ResponseEntity<FileSystemResource> entity = null;
		try {
			fileName = URLEncoder.encode(filedto.getFile_real_name(), "UTF-8");
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
	
	
}
