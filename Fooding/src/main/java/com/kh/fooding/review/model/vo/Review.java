package com.kh.fooding.review.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Review implements java.io.Serializable{
	private int rid;
	private String enrollDate;
	private String rTitle;
	private String rContent;
	private int sid;
	private String status;
	private int star;
	private int mid;
	private int taste;
	private int service;
	private int price;
	private String sName;
	private String sCode;
	private String mainPhoto;
	private String storePhoto;
	private String writer;
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Review(int rid, String enrollDate, String rTitle, String rContent, int sid, String status, int star, int mid,
			int taste, int service, int price, String sName, String sCode, String mainPhoto, String storePhoto,
			String writer) {
		super();
		this.rid = rid;
		this.enrollDate = enrollDate;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.sid = sid;
		this.status = status;
		this.star = star;
		this.mid = mid;
		this.taste = taste;
		this.service = service;
		this.price = price;
		this.sName = sName;
		this.sCode = sCode;
		this.mainPhoto = mainPhoto;
		this.storePhoto = storePhoto;
		this.writer = writer;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getTaste() {
		return taste;
	}
	public void setTaste(int taste) {
		this.taste = taste;
	}
	public int getService() {
		return service;
	}
	public void setService(int service) {
		this.service = service;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsCode() {
		return sCode;
	}
	public void setsCode(String sCode) {
		this.sCode = sCode;
	}
	public String getMainPhoto() {
		return mainPhoto;
	}
	public void setMainPhoto(String mainPhoto) {
		this.mainPhoto = mainPhoto;
	}
	public String getStorePhoto() {
		return storePhoto;
	}
	public void setStorePhoto(String storePhoto) {
		this.storePhoto = storePhoto;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	@Override
	public String toString() {
		return "Review [rid=" + rid + ", enrollDate=" + enrollDate + ", rTitle=" + rTitle + ", rContent=" + rContent
				+ ", sid=" + sid + ", status=" + status + ", star=" + star + ", mid=" + mid + ", taste=" + taste
				+ ", service=" + service + ", price=" + price + ", sName=" + sName + ", sCode=" + sCode + ", mainPhoto="
				+ mainPhoto + ", storePhoto=" + storePhoto + ", writer=" + writer + "]";
	}
		
}
