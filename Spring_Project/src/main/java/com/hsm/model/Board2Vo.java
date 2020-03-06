package com.hsm.model;

import org.springframework.web.multipart.MultipartFile;

public class Board2Vo {
	private int no;//no
	private String subject;//subject
	private String contents;//contents
	private String writer;//writer
	private String write_date;//write_date
	private int cnt;//cnt
	
	private MultipartFile filename; //file upload

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

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public MultipartFile getFilename() {
		return filename;
	}

	public void setFilename(MultipartFile filename) {
		this.filename = filename;
	}

	@Override
	public String toString() {
		return "Board2Vo [no=" + no + ", subject=" + subject + ", contents=" + contents + ", writer=" + writer
				+ ", write_date=" + write_date + ", cnt=" + cnt + ", filename=" + filename + "]";
	}



	

}
//Getter Setter 와 Generate tostring