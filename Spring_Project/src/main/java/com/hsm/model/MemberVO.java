package com.hsm.model;

public class MemberVO {
	private String id;
	private String pw;
	private String email;
	private int verify;
	

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", email=" + email + ", verify=" + verify + "]";
	}
	public int getVerify() {
		return verify;
	}
	public void setVerify(int verify) {
		this.verify = verify;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
