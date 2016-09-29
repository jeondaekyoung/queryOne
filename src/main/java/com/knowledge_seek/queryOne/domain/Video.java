package com.knowledge_seek.queryOne.domain;

import java.sql.Date;



public class Video {
	private String videoNo;
	private String title;
	private String writer;
	private String youtube_URL;
	private Date createDate;
	
	public String getVideoNo() {
		return videoNo;
	}
	public void setVideoNo(String videoNo) {
		this.videoNo = videoNo;
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
	public String getYoutube_URL() {
		return youtube_URL;
	}
	public void setYoutube_URL(String youtube_URL) {
		this.youtube_URL = youtube_URL;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}
