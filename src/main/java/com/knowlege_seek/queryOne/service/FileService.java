package com.knowlege_seek.queryOne.service;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

import com.knowlege_seek.queryOne.domain.FileDTO;

public interface FileService {
	/**
	 * 颇老 历厘
	 * @since : 2014. 11. 18.
	 * @param file
	 * @return 颇老 历厘 ID
	 */
	String save(MultipartFile file);

	FileDTO selectFileDetail(String fileId);
	
	File loadFileThumbnail(String fileId, String width);
	
	public boolean checkFile(MultipartFile file, String type);
	
	public boolean checkFileSize(MultipartFile file, String type);
}
