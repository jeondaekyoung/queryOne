package com.knowlege_seek.queryOne.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Licencekey {
	private String liceNo;
	private String lice_key;
	private String writer;
	private Date createDate;
	private String proNo;
	
	//proNo을 위한 속성
	private String product_id;
	
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getLiceNo() {
		return liceNo;
	}
	public void setLiceNo(String liceNo) {
		this.liceNo = liceNo;
	}
	public String getLice_key() {
		return lice_key;
	}
	public void setLice_key(String lice_key) {
		this.lice_key = lice_key;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getProNo() {
		return proNo;
	}
	public void setProNo(String proNo) {
		this.proNo = proNo;
	}
}
