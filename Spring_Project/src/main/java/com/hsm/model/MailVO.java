package com.hsm.model;

public class MailVO {
	private String tomail;//받는사람
	private String title;//제목
	private String content;//내용
	private String from;
	public String getTomail() {
		return tomail;
	}
	public void setTomail(String tomail) {
		this.tomail = tomail;
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
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}//보내는 사람
	@Override
	public String toString() {
		return "MailVO [tomail=" + tomail + ", title=" + title + ", content=" + content + ", from=" + from + "]";
	}
	
}