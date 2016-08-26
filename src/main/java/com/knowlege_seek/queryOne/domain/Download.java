package com.knowlege_seek.queryOne.domain;

import java.sql.Date;

public class Download {
	private String DownNo;
	private String title;
	private String writer;
	private String content;
	private Date createDate;
	private int hits;
	private String fileName;
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
