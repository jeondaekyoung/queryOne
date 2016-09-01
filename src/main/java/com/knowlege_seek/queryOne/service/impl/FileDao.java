package com.knowlege_seek.queryOne.service.impl;

import javax.annotation.Resource;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.knowlege_seek.queryOne.domain.FileDTO;
@Repository
public class FileDao {
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;

	public String insert(FileDTO fileDto){
		String fileId = null;
		
		sqlSessionTemplate.insert("file.insertFile", fileDto);
		fileId = fileDto.getFile_id();
		
		return fileId;
	}
	
	public void update(FileDTO fileVO){
		sqlSessionTemplate.update("file.updateFile", fileVO);
	}

	public FileDTO selectFile(String fileId) {
		return sqlSessionTemplate.selectOne("file.selectFile", fileId);
	}
}
