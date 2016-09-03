package com.knowlege_seek.queryOne.service;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

import com.knowlege_seek.queryOne.domain.FileDTO;

public interface FileService {
	/**
	 * 파일 저장
	 * @since : 2014. 11. 18.
	 * @param file
	 * @return 파일 저장 ID
	 */
	String save(MultipartFile file,String no,int categoryId);//어떤게시판에 몇번게시물인지
	
	String update(MultipartFile file, FileDTO dto);
	
	FileDTO selectFileDetail(String fileId);
	
	File loadFileThumbnail(String fileId, String width);
	
	public boolean checkFile(MultipartFile file, String type);
	
	public boolean checkFileSize(MultipartFile file, String type);

	
}
