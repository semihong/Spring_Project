package com.hsm.model;

public class BoardVo {
	private int no;//no
	private String subject;//subject
	private String contents;//contents
	private String writer;//writer
	private String write_date;//write_date

	


	@Override
	public String toString() {
		return "BoardVo [no=" + no + ", subject=" + subject + ", contents=" + contents + ", writer=" + writer
				+ ", write_date=" + write_date + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}




}
//Getter Setter 와 Generate tostring