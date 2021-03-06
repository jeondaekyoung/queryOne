package com.knowledge_seek.queryOne.domain;

import java.sql.Timestamp;



public class QnA {
	private String qnaNo;
	private String name;
	private String email;
	private String title;
	private String content;
	private String tel;
	private int answerChk ;
	
	private Timestamp createDate;

	public int getAnswerChk() {
		return answerChk;
	}
	public void setAnswerChk(int answerChk) {
		this.answerChk = answerChk;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(String qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	
	
	
}
