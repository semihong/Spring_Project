package com.hsm.model;

public class CartVO {

	private String id;
	private int gdsNum;
	private String gdsName;
	private String date;
	private Double price;
	private String images;
	private int rno;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Double getPrice() {
		return price;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	@Override
	public String toString() {
		return "CartVO [id=" + id + ", gdsNum=" + gdsNum + ", gdsName=" + gdsName + ", date=" + date + ", price="
				+ price + ", images=" + images + ", rno=" + rno + "]";
	}


	}
	
	


