package com.knowlege_seek.queryOne.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Download {
	private String DownNo;
	private String title;
	private String writer;
	private String content;
	private Date createDate;
	private int hits;
	private String fileName;
	
	private MultipartFile file;
	private String file_id;

	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getFile_id() {
		return file_id;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	
	public String getDownNo() {
		return DownNo;
	}
	public void setDownNo(String downNo) {
		DownNo = downNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
}
