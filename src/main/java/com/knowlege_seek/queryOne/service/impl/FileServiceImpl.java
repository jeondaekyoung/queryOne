package com.knowlege_seek.queryOne.service.impl;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.knowlege_seek.queryOne.domain.FileDTO;
import com.knowlege_seek.queryOne.service.FileService;

@Service("fileService")
public class FileServiceImpl implements FileService {
	
	private static Logger log = LoggerFactory.getLogger(FileServiceImpl.class);
	@Autowired FileDao fileDao;
	//private String fileSaveRoot = "/var/data/file";
	private String fileSaveRoot = "D:/queryOne/upload";
	
	@Override
	public String save(MultipartFile file) {
		FileDTO fileDTO = new FileDTO();
		String originalFileName = file.getOriginalFilename();
		fileDTO.setFile_real_name(originalFileName);
		fileDTO.setFile_content_type(file.getContentType());
		fileDTO.setFile_size(file.getSize());
		
		String[] fileNameSplit = StringUtils.split(originalFileName, ".");
		if(fileNameSplit != null){
			fileDTO.setFile_ext(fileNameSplit[fileNameSplit.length - 1]);	
		}
		
		Calendar cal = Calendar.getInstance();
		
		File dir = new File(fileSaveRoot + 
				"/" + 
							new SimpleDateFormat("yyyy/MM/dd").format(cal.getTime()));
		dir.mkdirs();
		
		String fileId = fileDao.insert(fileDTO);//저장후 필드 id 가지고옴?
		
		String fileName = new SimpleDateFormat("yyyyMMddHHmm").format(cal.getTime()) + StringUtils.leftPad(fileId, 10, '0') + "." + fileDTO.getFile_ext();
		String fileNameWithPath = dir.getAbsolutePath() + "/" + fileName;
		File f = new File(fileNameWithPath);
		FileOutputStream fos = null;
		try {
			byte[] fileBytes = file.getBytes();
			fos = new FileOutputStream(f);
			fos.write(fileBytes);
		} catch (FileNotFoundException e) {
			log.error("error", e);
		} catch (IOException e) {
			log.error("error", e);
		} finally {
			if(fos != null) try {fos.close();} catch (IOException e) {}
		}
		
		fileDTO.setFile_name(fileName);
		fileDTO.setFile_path(fileNameWithPath);
		
		fileDao.update(fileDTO);
		
		return fileId;
	}
	
	
	
	@Override
	public FileDTO selectFileDetail(String fileId) {
		return fileDao.selectFile(fileId);
	}

	@Override
	public File loadFileThumbnail(String fileId, String width) {
		/*	
		FileVO fileVO = fileDao.selectFile(fileId);
		String saved_path = fileVO.getFile_path();
		
		String dir = StringUtils.left(saved_path, StringUtils.lastIndexOf(saved_path, "/") - 1);
		
		File tmbDir = new File(dir + "/thumb");
		tmbDir.mkdirs();
		
		File tmbNailImage = new File(dir + "/thumb/" + width + "_" + fileId);
	
		log.debug("is exist 1 : " + tmbNailImage.exists());
		if(!tmbNailImage.exists()){
			File original = new File(saved_path);
			log.debug("is exist : " + original.exists());
			
		DimensionConstrain dc = DimensionConstrain.createMaxDimension(Integer.parseInt(width), Integer.parseInt(width));
			ResampleOp ro = new ResampleOp(dc);
			
			ro.setUnsharpenMask(AdvancedResizeOp.UnsharpenMask.Soft);

			try {
				BufferedImage bi = ImageIO.read(original);
				log.debug("height : " + bi.getHeight());
				BufferedImage reImg = ro.filter(bi, null);
				log.debug("height : " + reImg.getHeight());
				ImageIO.write(reImg, "png", tmbNailImage);
			} catch (IOException e) {
				log.error("error", e);
			}	
		}
		return tmbNailImage;
		*/
		return null;
	}

	@Override
	public boolean checkFile(MultipartFile file, String type) {
		boolean check = false;
		String originalFileName = file.getOriginalFilename();
		String[] fileNameSplit = StringUtils.split(originalFileName, ".");
		String checkExt = fileNameSplit[fileNameSplit.length - 1];
		if(fileNameSplit != null){
			if("image".equals(type)){
				if("gif".equals(checkExt) || "png".equals(checkExt) || "jpg".equals(checkExt)){
					check = true;
				}
			}else{
				if("mp4".equals(checkExt)){
					check = true;
				}
			}
		}
		return check;
	}

	@Override
	public boolean checkFileSize(MultipartFile file, String type) {
		boolean check = false;
		try{
			BufferedImage bi = ImageIO.read(file.getInputStream());
			int width = bi.getWidth();
			int height = bi.getHeight();
			
			if(width > 1080 || height > 2000){
				check = false;
			}else{
				check = true;
			}
			System.out.println(width);
			System.out.println(height);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		System.out.println(check);
		return check;
	
	}



	@Override
	public String update(MultipartFile file,FileDTO dto) {
		
		File fileObj = new File(dto.getFile_path());
		
		return String.valueOf(fileObj.delete());
		
	}

}
