package com.knowledge_seek.queryOne.domain;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class Download {
	private String DownNo;
	private String title;
	private String writer;
	private String content;
	private Date createDate;
	private int hits;
	private String fileName;
	private String account;
	private MultipartFile file;
	private String fileId;
	
	public ArrayList<String> file_name;
	public ArrayList<String> file_id;

	//조회시 필요한 필드
	private String file_name1;
	private String file_name2;
	private String file_name3;
	private String file_name4;
	
	private String file_id1;
	private String file_id2;
	private String file_id3;
	private String file_id4;
	
	public Download(){
		file_name =new ArrayList<String>();
		file_id = new ArrayList<String>();
	}
	
	public String getFileId() {
		return fileId;
	}

	public void setFileId(String fileId) {
		this.fileId = fileId;
	}

	public ArrayList<String> getFile_name() {
		return file_name;
	}

	public void setFile_name(ArrayList<String> file_name) {
		this.file_name = file_name;
	}

	public String getFile_name1() {
		return file_name1;
	}

	public void setFile_name1(String file_name1) {
		this.file_name1 = file_name1;
	}

	public String getFile_name2() {
		return file_name2;
	}

	public void setFile_name2(String file_name2) {
		this.file_name2 = file_name2;
	}

	public String getFile_name3() {
		return file_name3;
	}

	public void setFile_name3(String file_name3) {
		this.file_name3 = file_name3;
	}

	public String getFile_name4() {
		return file_name4;
	}

	public void setFile_name4(String file_name4) {
		this.file_name4 = file_name4;
	}

	public String getFile_id1() {
		return file_id1;
	}

	public void setFile_id1(String file_id1) {
		this.file_id1 = file_id1;
	}

	public String getFile_id2() {
		return file_id2;
	}

	public void setFile_id2(String file_id2) {
		this.file_id2 = file_id2;
	}

	public String getFile_id3() {
		return file_id3;
	}

	public void setFile_id3(String file_id3) {
		this.file_id3 = file_id3;
	}

	public String getFile_id4() {
		return file_id4;
	}

	public void setFile_id4(String file_id4) {
		this.file_id4 = file_id4;
	}

	public void setFile_id(ArrayList<String> file_id) {
		this.file_id = file_id;
	}

	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	public ArrayList<String> getFile_id() {
		return file_id;
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
