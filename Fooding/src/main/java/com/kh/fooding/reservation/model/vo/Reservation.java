package com.kh.fooding.reservation.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Reservation implements java.io.Serializable{
	private int rvid;
	private Date rDate;
	private String rTime;
	private String rContent;
	private String rPeople;
	private String status;
	private int mid;
	private int sid;
	private String sName;
	private String userName;
	private String phone;
	private String jsonDate;
	private String mainPhoto;
	
	
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Reservation(int rvid, Date rDate, String rTime, String rContent, String rPeople, String status, int mid,
			int sid, String sName, String userName, String phone, String jsonDate, String mainPhoto) {
		super();
		this.rvid = rvid;
		this.rDate = rDate;
		this.rTime = rTime;
		this.rContent = rContent;
		this.rPeople = rPeople;
		this.status = status;
		this.mid = mid;
		this.sid = sid;
		this.sName = sName;
		this.userName = userName;
		this.phone = phone;
		this.jsonDate = jsonDate;
		this.mainPhoto = mainPhoto;
	}


	public int getRvid() {
		return rvid;
	}


	public void setRvid(int rvid) {
		this.rvid = rvid;
	}


	public Date getrDate() {
		return rDate;
	}


	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}


	public String getrTime() {
		return rTime;
	}


	public void setrTime(String rTime) {
		this.rTime = rTime;
	}


	public String getrContent() {
		return rContent;
	}


	public void setrContent(String rContent) {
		this.rContent = rContent;
	}


	public String getrPeople() {
		return rPeople;
	}


	public void setrPeople(String rPeople) {
		this.rPeople = rPeople;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getMid() {
		return mid;
	}


	public void setMid(int mid) {
		this.mid = mid;
	}


	public int getSid() {
		return sid;
	}


	public void setSid(int sid) {
		this.sid = sid;
	}


	public String getsName() {
		return sName;
	}


	public void setsName(String sName) {
		this.sName = sName;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getJsonDate() {
		return jsonDate;
	}


	public void setJsonDate(String jsonDate) {
		this.jsonDate = jsonDate;
	}


	public String getMainPhoto() {
		return mainPhoto;
	}


	public void setMainPhoto(String mainPhoto) {
		this.mainPhoto = mainPhoto;
	}


	@Override
	public String toString() {
		return "Reservation [rvid=" + rvid + ", rDate=" + rDate + ", rTime=" + rTime + ", rContent=" + rContent
				+ ", rPeople=" + rPeople + ", status=" + status + ", mid=" + mid + ", sid=" + sid + ", sName=" + sName
				+ ", userName=" + userName + ", phone=" + phone + ", jsonDate=" + jsonDate + ", mainPhoto=" + mainPhoto
				+ "]";
	}
	
		
}
