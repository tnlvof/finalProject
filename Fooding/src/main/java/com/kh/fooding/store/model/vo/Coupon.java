package com.kh.fooding.store.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class Coupon implements java.io.Serializable{
	private int cid;
	private String cname;
	private Date cdate;
	private String cterm;
	private String cmethod;
	private int sid;
	private Date enrollDate;
	private ArrayList<Store> couponList;
	private int mid;
	
	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public Coupon(int cid, String cname, Date cdate, String cterm, String cmethod, int sid, Date enrollDate,
			ArrayList<Store> couponList, int mid) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cdate = cdate;
		this.cterm = cterm;
		this.cmethod = cmethod;
		this.sid = sid;
		this.enrollDate = enrollDate;
		this.couponList = couponList;
		this.mid = mid;
	}

	public Coupon() {}

	public Coupon(int cid, String cname, Date cdate, String cterm, String cmethod, int sid, Date enrollDate, ArrayList<Store> couponList) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.cdate = cdate;
		this.cterm = cterm;
		this.cmethod = cmethod;
		this.sid = sid;
		this.enrollDate = enrollDate;
		this.couponList = couponList;
	}


	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Date getCdate() {
		return cdate;
	}

	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

	public String getCterm() {
		return cterm;
	}

	public void setCterm(String cterm) {
		this.cterm = cterm;
	}

	public String getCmethod() {
		return cmethod;
	}

	public void setCmethod(String cmethod) {
		this.cmethod = cmethod;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public ArrayList<Store> getCouponList() {
		return couponList;
	}

	public void setCouponList(ArrayList<Store> couponList) {
		this.couponList = couponList;
	}

	@Override
	public String toString() {
		return "Coupon [cid=" + cid + ", cname=" + cname + ", cdate=" + cdate + ", cterm=" + cterm + ", cmethod="
				+ cmethod + ", sid=" + sid + ", enrollDate=" + enrollDate + ", couponList=" + couponList + ", mid="
				+ mid + "]";
	}


	
	
}
