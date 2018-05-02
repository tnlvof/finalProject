package com.kh.fooding.store.model.vo;

import org.springframework.stereotype.Component;

@Component
public class StoreSam implements java.io.Serializable{
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
	private double star;
	private int rank;
	private String areaDong;                                     
	private String areaGoo;                                      
	private String areaSi;                                       
	private String restAddress;                                  
	private String restBoard;                                    
	private String restMenu;                                     
	private String restName;                                     
	private String restNumber;                                   
	private String restUpstream;                                 
	private int restX;                                           
	private int restY;                                           
	private String writer;                                       
	private String content; 
	private String photo;
	
	public StoreSam() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StoreSam(int sid, String sName, String phone, String sCode, String bookYN, String address, String sLocation,
			String sHours, String dayoff, String sTable, String budget, String atmosphere, String facilities,
			String description, String couponNo, String keyword, String status, String menu, String mainPhoto,
			String subPhoto, int mid, double star, int rank, String areaDong, String areaGoo, String areaSi,
			String restAddress, String restBoard, String restMenu, String restName, String restNumber,
			String restUpstream, int restX, int restY, String writer, String content, String photo) {
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
		this.star = star;
		this.rank = rank;
		this.areaDong = areaDong;
		this.areaGoo = areaGoo;
		this.areaSi = areaSi;
		this.restAddress = restAddress;
		this.restBoard = restBoard;
		this.restMenu = restMenu;
		this.restName = restName;
		this.restNumber = restNumber;
		this.restUpstream = restUpstream;
		this.restX = restX;
		this.restY = restY;
		this.writer = writer;
		this.content = content;
		this.photo = photo;
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

	public double getStar() {
		return star;
	}

	public void setStar(double star) {
		this.star = star;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getAreaDong() {
		return areaDong;
	}

	public void setAreaDong(String areaDong) {
		this.areaDong = areaDong;
	}

	public String getAreaGoo() {
		return areaGoo;
	}

	public void setAreaGoo(String areaGoo) {
		this.areaGoo = areaGoo;
	}

	public String getAreaSi() {
		return areaSi;
	}

	public void setAreaSi(String areaSi) {
		this.areaSi = areaSi;
	}

	public String getRestAddress() {
		return restAddress;
	}

	public void setRestAddress(String restAddress) {
		this.restAddress = restAddress;
	}

	public String getRestBoard() {
		return restBoard;
	}

	public void setRestBoard(String restBoard) {
		this.restBoard = restBoard;
	}

	public String getRestMenu() {
		return restMenu;
	}

	public void setRestMenu(String restMenu) {
		this.restMenu = restMenu;
	}

	public String getRestName() {
		return restName;
	}

	public void setRestName(String restName) {
		this.restName = restName;
	}

	public String getRestNumber() {
		return restNumber;
	}

	public void setRestNumber(String restNumber) {
		this.restNumber = restNumber;
	}

	public String getRestUpstream() {
		return restUpstream;
	}

	public void setRestUpstream(String restUpstream) {
		this.restUpstream = restUpstream;
	}

	public int getRestX() {
		return restX;
	}

	public void setRestX(int restX) {
		this.restX = restX;
	}

	public int getRestY() {
		return restY;
	}

	public void setRestY(int restY) {
		this.restY = restY;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "StoreSam [sid=" + sid + ", sName=" + sName + ", phone=" + phone + ", sCode=" + sCode + ", bookYN="
				+ bookYN + ", address=" + address + ", sLocation=" + sLocation + ", sHours=" + sHours + ", dayoff="
				+ dayoff + ", sTable=" + sTable + ", budget=" + budget + ", atmosphere=" + atmosphere + ", facilities="
				+ facilities + ", description=" + description + ", couponNo=" + couponNo + ", keyword=" + keyword
				+ ", status=" + status + ", menu=" + menu + ", mainPhoto=" + mainPhoto + ", subPhoto=" + subPhoto
				+ ", mid=" + mid + ", star=" + star + ", rank=" + rank + ", areaDong=" + areaDong + ", areaGoo="
				+ areaGoo + ", areaSi=" + areaSi + ", restAddress=" + restAddress + ", restBoard=" + restBoard
				+ ", restMenu=" + restMenu + ", restName=" + restName + ", restNumber=" + restNumber + ", restUpstream="
				+ restUpstream + ", restX=" + restX + ", restY=" + restY + ", writer=" + writer + ", content=" + content
				+ ", photo=" + photo + "]";
	}
	
}
