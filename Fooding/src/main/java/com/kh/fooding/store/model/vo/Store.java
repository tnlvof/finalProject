package com.kh.fooding.store.model.vo;

public class Store {
	private int sid;
	private String sName;
	private String phone;
	private String sCode;
	private String bookYN;
	private String address;
	private String sLocation;
	private String sHours;
	private String dayoff;
	private String sTable;
	private String budget;
	private String atmosphere;
	private String facilities;
	private String description;
	private String couponNo;
	private String keyword;
	private String status;
	private String menu;
	private String mainPhoto;
	private String subPhoto;
	private int mid;
	public Store() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Store(int sid, String sName, String phone, String sCode, String bookYN, String address, String sLocation,
			String sHours, String dayoff, String sTable, String budget, String atmosphere, String facilities,
			String description, String couponNo, String keyword, String status, String menu, String mainPhoto,
			String subPhoto, int mid) {
		super();
		this.sid = sid;
		this.sName = sName;
		this.phone = phone;
		this.sCode = sCode;
		this.bookYN = bookYN;
		this.address = address;
		this.sLocation = sLocation;
		this.sHours = sHours;
		this.dayoff = dayoff;
		this.sTable = sTable;
		this.budget = budget;
		this.atmosphere = atmosphere;
		this.facilities = facilities;
		this.description = description;
		this.couponNo = couponNo;
		this.keyword = keyword;
		this.status = status;
		this.menu = menu;
		this.mainPhoto = mainPhoto;
		this.subPhoto = subPhoto;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getsCode() {
		return sCode;
	}
	public void setsCode(String sCode) {
		this.sCode = sCode;
	}
	public String getBookYN() {
		return bookYN;
	}
	public void setBookYN(String bookYN) {
		this.bookYN = bookYN;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getsLocation() {
		return sLocation;
	}
	public void setsLocation(String sLocation) {
		this.sLocation = sLocation;
	}
	public String getsHours() {
		return sHours;
	}
	public void setsHours(String sHours) {
		this.sHours = sHours;
	}
	public String getDayoff() {
		return dayoff;
	}
	public void setDayoff(String dayoff) {
		this.dayoff = dayoff;
	}
	public String getsTable() {
		return sTable;
	}
	public void setsTable(String sTable) {
		this.sTable = sTable;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public String getAtmosphere() {
		return atmosphere;
	}
	public void setAtmosphere(String atmosphere) {
		this.atmosphere = atmosphere;
	}
	public String getFacilities() {
		return facilities;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCouponNo() {
		return couponNo;
	}
	public void setCouponNo(String couponNo) {
		this.couponNo = couponNo;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getMainPhoto() {
		return mainPhoto;
	}
	public void setMainPhoto(String mainPhoto) {
		this.mainPhoto = mainPhoto;
	}
	public String getSubPhoto() {
		return subPhoto;
	}
	public void setSubPhoto(String subPhoto) {
		this.subPhoto = subPhoto;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	@Override
	public String toString() {
		return "Store [sid=" + sid + ", sName=" + sName + ", phone=" + phone + ", sCode=" + sCode + ", bookYN=" + bookYN
				+ ", address=" + address + ", sLocation=" + sLocation + ", sHours=" + sHours + ", dayoff=" + dayoff
				+ ", sTable=" + sTable + ", budget=" + budget + ", atmosphere=" + atmosphere + ", facilities="
				+ facilities + ", description=" + description + ", couponNo=" + couponNo + ", keyword=" + keyword
				+ ", status=" + status + ", menu=" + menu + ", mainPhoto=" + mainPhoto + ", subPhoto=" + subPhoto
				+ ", mid=" + mid + "]";
	}
	
}
