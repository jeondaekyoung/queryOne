package com.knowlege_seek.queryOne.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Licencekey {
	private String liceNo;
	private String product_id;
	private String product_name;
	private String writer;
	private String file_name;
	private Date createDate;
	private String file_id;
	private MultipartFile file;
	public String getLiceNo() {
		return liceNo;
	}
	public void setLiceNo(String licenceNo) {
		this.liceNo = licenceNo;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getFile_id() {
		return file_id;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	}
